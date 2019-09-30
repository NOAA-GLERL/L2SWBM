### TIME SERIES PLOTTER FOR THE L2SWBM

posteriorStartMonth = 1;
posteriorEndMonth = length(m);
decade = 0;

sQ_U = rep(0.02,12)*superiorOutflowPriorMean
mQ_U = rep(0.03,12)*miHuronOutflowPriorMean
cQ_U = rep(0.03,12)*clairOutflowPriorMean
eQ_U = rep(0.02,12)*erieOutflowPriorMean
oQ_U = rep(0.02,12)*ontarioOutflowPriorMean

MNL_U = c(103,102,105,112,114,113,110,109,108,106,103,106)
CD_U = c(206,200,218,230,236,238,240,240,238,237,235,229)

for(startMo in seq(posteriorStartMonth, posteriorEndMonth, 120)){

endMo = (startMo+119);
endMoPlot = (startMo+119);
if(endMo > posteriorEndMonth){
	endMo = posteriorEndMonth;
}

yearRange = (startAnalysisYear+(decade*10)):(startAnalysisYear+((decade+1)*10)-1);
compLimits = c(-50, 500)
flowLimits = c(-25,7000)
flowLimitsLabs = seq(0,10000,1000)
flowLimitsTicks = seq(0,10000,1000)
diversionLimits = c(-25,600)
compLimitsLabs = seq(0,600,150)
compLimitsTicks = seq(0,600,150)
diversionLimitsLabs = seq(0,500,100)
diversionLimitsTicks = seq(0,500,100)
storeLimits = c(-650,650)
ceoStoreLimits = c(-1000,1000)
clairFlowLimits = c(3000,8000);
erieOntFlowLimits = c(0,1500);
clairDStoreLimits = c(-300,300);
clairNBSLimits = c(-1000,1500);

#colorVector = rainbow(10, v=0.5);

colorVector = c(
	'#800000',
	'#FF8000',
	'#BFBF00',
	'#00BF00',
	'#00BFBF',
	'#0080FF',
	'#8000FF',
	'#FF00FB',
	'#BF0060',
	'#BF8F60',
	'#000000'	
);

# superior

pdf(paste('superiorTS_ALL_d',decade,'_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.pdf', sep=''), width = 10, height = 7.5);
par(mfrow=c(6,1))
par(mar = c(0,0,0,0))
par(oma = c(4,4,4,4))

plot(c(0), c(0), type = "n", axes = FALSE, xlim = c(startMo,endMoPlot), ylim = compLimits); 
box()
axis(2, at=compLimitsLabs, cex.lab = 0.7); 
axis(2, at=compLimitsTicks, labels=FALSE, cex.lab = 0.7); 
axis(4, at=compLimitsTicks, labels=FALSE, cex.lab = 0.7); 
mtext(paste("P (mm)"), side = 2, line = 2.5, cex=0.8); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);

for(i in startMo:endMo){
	segments(   
		x0 = i+(1/2), x1 = i+(1/2), lwd = 4, col = 'gray60', lend = 2,
		y0 = jSum[paste('superiorPrecip[',i,']', sep=''),3],
		y1 = jSum[paste('superiorPrecip[',i,']', sep=''),7]
	);
	#lines(i+(1/2), jSum[paste('superiorPrecip[',i,']', sep=''),5], col = "black",   lwd = 1, type='p', pch=15, cex=0.75)
	
	if(ncol(superiorPrecip_A) >= 3){
		for(n in 3:ncol(superiorPrecip_A)){
			lines(c(i, i+1), c(superiorPrecip_A[i,n],superiorPrecip_A[i,n]), col = colorVector[n-2],  lwd=1.5, type='s')
		}
	}
}        

superiorPrecipLegend = c('L2SWBM', superiorPrecipSrc);
superiorPrecipLegendColors = c('gray60', colorVector[1:length(superiorPrecipSrc)]);

legend(
	x = 'topleft',
	legend = superiorPrecipLegend,
	col = superiorPrecipLegendColors,
	bty = 'n',
	lty = c(0, rep(1, length(superiorPrecipSrc))),
	lwd = c(0, rep(1.5, length(superiorPrecipSrc))),
	pch = c(15, rep(NA, length(superiorPrecipSrc))),
	ncol = 6
);

plot(c(0), c(0), type = "n", axes = FALSE, xlim = c(startMo,endMoPlot), ylim = compLimits); 
box()
axis(4, at=compLimitsLabs, cex.lab = 0.7); 
axis(4, at=compLimitsTicks, labels=FALSE, cex.lab = 0.7); 
axis(2, at=compLimitsTicks, labels=FALSE, cex.lab = 0.7);  
mtext(paste("E (mm)"), side = 2, line = 2.5, cex=0.8); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);

for(i in startMo:endMo){
	segments(   
		x0 = i+(1/2), x1 = i+(1/2), lwd = 4, col = 'gray60', lend = 2,
		y0 = jSum[paste('superiorEvap[',i,']', sep=''),3],
		y1 = jSum[paste('superiorEvap[',i,']', sep=''),7]
	);
	#lines(i+(1/2), jSum[paste('superiorEvap[',i,']', sep=''),5], col = "black",   lwd = 1, type='p', pch=15, cex=0.75)
	
	if(ncol(superiorEvap_A) >= 3){
		for(n in 3:ncol(superiorEvap_A)){
			lines(c(i, i+1), c(superiorEvap_A[i,n],superiorEvap_A[i,n]), col = colorVector[n-2],  lwd=1.5, type='s')
		}
	}
}    


superiorEvapLegend = c('L2SWBM', superiorEvapSrc);
superiorEvapLegendColors = c('gray60', colorVector[1:length(superiorEvapSrc)]);

legend(
	x = 'topleft',
	legend = superiorEvapLegend,
	col = superiorEvapLegendColors,
	bty = 'n',
	lty = c(0, rep(1, length(superiorEvapSrc))),
	lwd = c(0, rep(1.5, length(superiorEvapSrc))),
	pch = c(15, rep(NA, length(superiorEvapSrc))),
	ncol = 5
);
    

plot(c(0), c(0), type = "n", axes = FALSE, xlim = c(startMo,endMoPlot), ylim = compLimits); 
box()
axis(2, at=compLimitsLabs, cex.lab = 0.7); 
axis(2, at=compLimitsTicks, labels=FALSE, cex.lab = 0.7); 
axis(4, at=compLimitsTicks, labels=FALSE, cex.lab = 0.7); 
mtext(paste("R (mm)"), side = 2, line = 2.5, cex=0.8); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);

for(i in startMo:endMo){
	segments(   
		x0 = i+(1/2), x1 = i+(1/2), lwd = 4, col = 'gray60', lend = 2,
		y0 = jSum[paste('superiorRunoff[',i,']', sep=''),3],
		y1 = jSum[paste('superiorRunoff[',i,']', sep=''),7]
	);
	#lines(i+(1/2), jSum[paste('superiorRunoff[',i,']', sep=''),5], col = "black",   lwd = 1, type='p', pch=15, cex=0.75)
	
	if(ncol(superiorRunoff_A) >= 3){
		for(n in 3:ncol(superiorRunoff_A)){
			lines(c(i, i+1), c(superiorRunoff_A[i,n],superiorRunoff_A[i,n]), col = colorVector[n-2],  lwd=1.5, type='s')
		}
	}
}      


superiorRunoffLegend = c('L2SWBM', superiorRunoffSrc);
superiorRunoffLegendColors = c('gray60', colorVector[1:length(superiorRunoffSrc)]);

legend(
	x = 'topleft',
	legend = superiorRunoffLegend,
	col = superiorRunoffLegendColors,
	bty = 'n',
	lty = c(0, rep(1, length(superiorRunoffSrc))),
	lwd = c(0, rep(1.5, length(superiorRunoffSrc))),
	pch = c(15, rep(NA, length(superiorRunoffSrc))),
	ncol = 5
);

plot(c(0), c(0), type = "n", axes = FALSE, xlim = c(startMo,endMoPlot), ylim = c(0,5000)); 
box()
axis(4, at=flowLimitsLabs, cex.lab = 0.7); 
axis(4, at=flowLimitsTicks, labels=FALSE, cex.lab = 0.7); 
axis(2, at=flowLimitsTicks, labels=FALSE, cex.lab = 0.7);  
mtext(expression(paste("Q (m"^"3","/s)")), side = 2, line = 2.5, cex=0.8); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);

for(i in startMo:endMo){
	segments(   
		x0 = i+(1/2), x1 = i+(1/2), lwd = 4, col = 'gray60', lend = 2,
		y0 = jSum[paste('superiorOutflow[',i,']', sep=''),3],
		y1 = jSum[paste('superiorOutflow[',i,']', sep=''),7]
	);
	#lines(i+(1/2), jSum[paste('superiorOutflow[',i,']', sep=''),5], col = "black",   lwd = 1, type='p', pch=15, cex=0.75)
	
	
	lines(c(i, i+1), c(ySuperiorOutflow1[i],ySuperiorOutflow1[i]), col = "darkgreen",  lwd=1.5, type='s')
	lines(c(i, i+1), c(ySuperiorOutflow2[i],ySuperiorOutflow2[i]), col = "purple",   lwd=1.5, type='s')
}        
lines((startMo:endMo+0.5),ySuperiorOutflow1[startMo:endMo]+2*sQ_U, col = "darkgreen",  lwd=1.5, type='l', lty=3)
lines((startMo:endMo+0.5),ySuperiorOutflow1[startMo:endMo]-2*sQ_U, col = "darkgreen",  lwd=1.5, type='l', lty=3)
lines((startMo:endMo+0.5),ySuperiorOutflow2[startMo:endMo]+2*sQ_U, col = "purple",  lwd=1.5, type='l', lty=3)   
lines((startMo:endMo+0.5),ySuperiorOutflow2[startMo:endMo]-2*sQ_U, col = "purple",  lwd=1.5, type='l', lty=3) 

superiorOutflowLegend = c('L2SWBM', 'Coordinated', 'IGS', 'Uncertainty from Bruxer 2010');
superiorOutflowLegendColors = c('gray60', 'darkgreen', 'purple', 'black');

legend(
	x = 'topleft',
	legend = superiorOutflowLegend,
	col = superiorOutflowLegendColors,
	bty = 'n',
	lty = c(0, rep(1, 2), 3),
	lwd = c(0, rep(1.5, 3)),
	pch = c(15, rep(NA, 3)),
	ncol = 4
);



plot(ySuperiorDiversion1, type = "n", col = "darkgreen", lwd = 4, axes = FALSE, ylim = diversionLimits, xlim = c(startMo,endMoPlot)); 
box()
abline(h=0, col = 8)
axis(2, at=diversionLimitsLabs, cex.lab = 0.7); 
axis(2, at=diversionLimitsTicks, labels=FALSE, cex.lab = 0.7); 
axis(4, at=diversionLimitsTicks, labels=FALSE, cex.lab = 0.7); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);
mtext(expression(paste("D (m"^"3","/s)")), side = 2, line = 2.5, cex = 0.8)

for(i in startMo:endMo){
	segments(   
		x0 = i+(1/2), x1 = i+(1/2), lwd = 4, col = 'gray60', lend = 2,
		y0 = jSum[paste('superiorDiversion[',i,']', sep=''),3],
		y1 = jSum[paste('superiorDiversion[',i,']', sep=''),7]
	);
	#lines(i+(1/2), jSum[paste('superiorDiversion[',i,']', sep=''),5], col = "black",   lwd = 1, type='p', pch=15, cex=0.75)
	
	lines(c(i, i+1), c(ySuperiorDiversion1[i],ySuperiorDiversion1[i]), col = "darkgreen",  lwd=1.5, type='s')
}

plot(ySuperiorDiversion1, type = "n", col = "darkgreen", lwd = 4, axes = FALSE, ylim = storeLimits, xlim = c(startMo,endMoPlot)); 
box()
abline(h=0, col = 8)
axis(4, cex.lab = 0.7); 
axis(2, labels=FALSE, cex.lab = 0.7); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);
axis(1, at=seq(startMo,endMoPlot,12)+6, labels=yearRange, tick=FALSE);
mtext(expression(paste(Delta,'H (mm)')), side = 2, line = 2.5, cex = 0.8)

for(i in startMo:endMo){
	segments(   
		x0 = i+(1/2), x1 = i+(1/2), lwd = 4, col = 'gray60', lend = 2,
		y0 = jSum[paste('ySuperiorDStorePP[',i,']', sep=''),3],
		y1 = jSum[paste('ySuperiorDStorePP[',i,']', sep=''),7]
	);
	#lines(i+(1/2), jSum[paste('ySuperiorDStorePP[',i,']', sep=''),5], col = "black",   lwd = 1, type='p', pch=15, cex=0.75)
	
	lines(c(i, i+1), c(superiorDS_A[i,3],superiorDS_A[i,3]), col = "goldenrod",  lwd=1.5, type='s')
}

title(main='Superior - posterior inferences', outer=TRUE);

dev.off();

### miHuron

pdf(paste('miHuronTS_ALL_d',decade,'_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.pdf', sep=''), width = 10, height = 7.5);
par(mfrow=c(6,1))
par(mar = c(0,0,0,0))
par(oma = c(4,4,4,4))

plot(c(0), c(0), type = "n", axes = FALSE, xlim = c(startMo,endMoPlot), ylim = compLimits); 
box()
axis(2, at=compLimitsLabs, cex.lab = 0.7); 
axis(2, at=compLimitsTicks, labels=FALSE, cex.lab = 0.7); 
axis(4, at=compLimitsTicks, labels=FALSE, cex.lab = 0.7); 
mtext(paste("P (mm)"), side = 2, line = 2.5, cex=0.8); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);

for(i in startMo:endMo){
	segments(   
		x0 = i+(1/2), x1 = i+(1/2), lwd = 4, col = 'gray60', lend = 2,
		y0 = jSum[paste('miHuronPrecip[',i,']', sep=''),3],
		y1 = jSum[paste('miHuronPrecip[',i,']', sep=''),7]
	);
	#lines(i+(1/2), jSum[paste('miHuronPrecip[',i,']', sep=''),5], col = "black",   lwd = 1, type='p', pch=15, cex=0.75)
	
	if(ncol(miHuronPrecip_A) >= 3){
		for(n in 3:ncol(miHuronPrecip_A)){
			lines(c(i, i+1), c(miHuronPrecip_A[i,n],miHuronPrecip_A[i,n]), col = colorVector[n-2],  lwd=1.5, type='s')
		}
	}
}        

miHuronPrecipLegend = c('L2SWBM', miHuronPrecipSrc);
miHuronPrecipLegendColors = c('gray60', colorVector[1:length(miHuronPrecipSrc)]);

legend(
	x = 'topleft',
	legend = miHuronPrecipLegend,
	col = miHuronPrecipLegendColors,
	bty = 'n',
	lty = c(0, rep(1, length(miHuronPrecipSrc))),
	lwd = c(0, rep(1.5, length(miHuronPrecipSrc))),
	pch = c(15, rep(NA, length(miHuronPrecipSrc))),
	ncol = 6
);



plot(c(0), c(0), type = "n", axes = FALSE, xlim = c(startMo,endMoPlot), ylim = compLimits); 
box()
axis(4, at=compLimitsLabs, cex.lab = 0.7); 
axis(4, at=compLimitsTicks, labels=FALSE, cex.lab = 0.7); 
axis(2, at=compLimitsTicks, labels=FALSE, cex.lab = 0.7);  
mtext(paste("E (mm)"), side = 2, line = 2.5, cex=0.8); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);

for(i in startMo:endMo){
	segments(   
		x0 = i+(1/2), x1 = i+(1/2), lwd = 4, col = 'gray60', lend = 2,
		y0 = jSum[paste('miHuronEvap[',i,']', sep=''),3],
		y1 = jSum[paste('miHuronEvap[',i,']', sep=''),7]
	);
	#lines(i+(1/2), jSum[paste('miHuronEvap[',i,']', sep=''),5], col = "black",   lwd = 1, type='p', pch=15, cex=0.75)
	
	if(ncol(miHuronEvap_A) >= 3){
		for(n in 3:ncol(miHuronEvap_A)){
			lines(c(i, i+1), c(miHuronEvap_A[i,n],miHuronEvap_A[i,n]), col = colorVector[n-2],  lwd=1.5, type='s')
		}
	}
}        

miHuronEvapLegend = c('L2SWBM', miHuronEvapSrc);
miHuronEvapLegendColors = c('gray60', colorVector[1:length(miHuronEvapSrc)]);

legend(
	x = 'topleft',
	legend = miHuronEvapLegend,
	col = miHuronEvapLegendColors,
	bty = 'n',
	lty = c(0, rep(1, length(miHuronEvapSrc))),
	lwd = c(0, rep(1.5, length(miHuronEvapSrc))),
	pch = c(15, rep(NA, length(miHuronEvapSrc))),
	ncol = 5
);


plot(c(0), c(0), type = "n", axes = FALSE, xlim = c(startMo,endMoPlot), ylim = compLimits); 
box()
axis(2, at=compLimitsLabs, cex.lab = 0.7); 
axis(2, at=compLimitsTicks, labels=FALSE, cex.lab = 0.7); 
axis(4, at=compLimitsTicks, labels=FALSE, cex.lab = 0.7); 
mtext(paste("R (mm)"), side = 2, line = 2.5, cex=0.8); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);

for(i in startMo:endMo){
	segments(   
		x0 = i+(1/2), x1 = i+(1/2), lwd = 4, col = 'gray60', lend = 2,
		y0 = jSum[paste('miHuronRunoff[',i,']', sep=''),3],
		y1 = jSum[paste('miHuronRunoff[',i,']', sep=''),7]
	);
	#lines(i+(1/2), jSum[paste('miHuronRunoff[',i,']', sep=''),5], col = "black",   lwd = 1, type='p', pch=15, cex=0.75)
	
	if(ncol(miHuronRunoff_A) >= 3){
		for(n in 3:ncol(miHuronRunoff_A)){
			lines(c(i, i+1), c(miHuronRunoff_A[i,n],miHuronRunoff_A[i,n]), col = colorVector[n-2],  lwd=1.5, type='s')
		}
	}
}      


miHuronRunoffLegend = c('L2SWBM', miHuronRunoffSrc);
miHuronRunoffLegendColors = c('gray60', colorVector[1:length(miHuronRunoffSrc)]);

legend(
	x = 'topleft',
	legend = miHuronRunoffLegend,
	col = miHuronRunoffLegendColors,
	bty = 'n',
	lty = c(0, rep(1, length(miHuronRunoffSrc))),
	lwd = c(0, rep(1.5, length(miHuronRunoffSrc))),
	pch = c(15, rep(NA, length(miHuronRunoffSrc))),
	ncol = 5
);



plot(c(0), c(0), type = "n", axes = FALSE, xlim = c(startMo,endMoPlot), ylim = c(3000,8000)); 
box()
axis(4, at=flowLimitsLabs, cex.lab = 0.7); 
axis(4, at=flowLimitsTicks, labels=FALSE, cex.lab = 0.7); 
axis(2, at=flowLimitsTicks, labels=FALSE, cex.lab = 0.7);  
mtext(expression(paste("Q (m"^"3","/s)")), side = 2, line = 2.5, cex=0.8); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);

for(i in startMo:endMo){
	segments(   
		x0 = i+(1/2), x1 = i+(1/2), lwd = 4, col = 'gray60', lend = 2,
		y0 = jSum[paste('miHuronOutflow[',i,']', sep=''),3],
		y1 = jSum[paste('miHuronOutflow[',i,']', sep=''),7]
	);
	#lines(i+(1/2), jSum[paste('miHuronOutflow[',i,']', sep=''),5], col = "black",   lwd = 1, type='p', pch=15, cex=0.75)
	
	
	lines(c(i, i+1), c(yMiHuronOutflow1[i],yMiHuronOutflow1[i]), col = "darkgreen",  lwd=1.5, type='s')
	lines(c(i, i+1), c(yMiHuronOutflow2[i],yMiHuronOutflow2[i]), col = "purple",   lwd=1.5, type='s')
}        
lines((startMo:endMo+0.5),yMiHuronOutflow1[startMo:endMo]+2*mQ_U, col = "darkgreen",  lwd=1.5, type='l', lty=3)
lines((startMo:endMo+0.5),yMiHuronOutflow1[startMo:endMo]-2*mQ_U, col = "darkgreen",  lwd=1.5, type='l', lty=3)
lines((startMo:endMo+0.5),yMiHuronOutflow2[startMo:endMo]+2*mQ_U, col = "purple",  lwd=1.5, type='l', lty=3)   
lines((startMo:endMo+0.5),yMiHuronOutflow2[startMo:endMo]-2*mQ_U, col = "purple",  lwd=1.5, type='l', lty=3)      

miHuronOutflowLegend = c('L2SWBM', 'Coordinated', 'IGS', 'Uncertainty from Bruxer 2010');
miHuronOutflowLegendColors = c('gray60', 'darkgreen', 'purple', 'black');

legend(
	x = 'topleft',
	legend = miHuronOutflowLegend,
	col = miHuronOutflowLegendColors,
	bty = 'n',
	lty = c(0, rep(1, 2), 3),
	lwd = c(0, rep(1.5, 3)),
	pch = c(15, rep(NA, 3)),
	ncol = 5
);



plot(yMiHuronDiversion1, type = "n", col = "darkgreen", lwd = 4, axes = FALSE, ylim = diversionLimits, xlim = c(startMo,endMoPlot)); 
box()
abline(h=0, col = 8)
axis(2, at=diversionLimitsLabs, cex.lab = 0.7); 
axis(2, at=diversionLimitsTicks, labels=FALSE, cex.lab = 0.7); 
axis(4, at=diversionLimitsTicks, labels=FALSE, cex.lab = 0.7); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);
mtext(expression(paste("D (m"^"3","/s)")), side = 2, line = 2.5, cex = 0.8)

for(i in startMo:endMo){
	segments(   
		x0 = i+(1/2), x1 = i+(1/2), lwd = 4, col = 'gray60', lend = 2,
		y0 = jSum[paste('miHuronDiversion[',i,']', sep=''),3],
		y1 = jSum[paste('miHuronDiversion[',i,']', sep=''),7]
	);
	#lines(i+(1/2), jSum[paste('miHuronDiversion[',i,']', sep=''),5], col = "black",   lwd = 1, type='p', pch=15, cex=0.75)
	
	lines(c(i, i+1), c(yMiHuronDiversion1[i],yMiHuronDiversion1[i]), col = "darkgreen",  lwd=1.5, type='s')
}

abline(h = 91, col='lightblue3', lty=2, lwd=1.5)

miHuronDiversionLegend = c('L2SWBM', 'Coordinated', 'Regulation Limit');
miHuronDiversionLegendColors = c('gray60', 'darkgreen', 'lightblue3');

legend(
	x = 'topleft',
	legend = miHuronDiversionLegend,
	col = miHuronDiversionLegendColors,
	bty = 'n',
	lty = c(0, 1, 2),
	lwd = c(0, 1.5, 1.5),
	pch = c(15, rep(NA, 2)),
	ncol = 5
);


plot(yMiHuronDiversion1, type = "n", col = "darkgreen", lwd = 4, axes = FALSE, ylim = storeLimits, xlim = c(startMo,endMoPlot)); 
box()
abline(h=0, col = 8)
axis(4, cex.lab = 0.7); 
axis(2, labels=FALSE, cex.lab = 0.7); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);
axis(1, at=seq(startMo,endMoPlot,12)+6, labels=yearRange, tick=FALSE);
mtext(expression(paste(Delta,'H (mm)')), side = 2, line = 2.5, cex = 0.8)

for(i in startMo:endMo){
	segments(   
		x0 = i+(1/2), x1 = i+(1/2), lwd = 4, col = 'gray60', lend = 2,
		y0 = jSum[paste('yMiHuronDStorePP[',i,']', sep=''),3],
		y1 = jSum[paste('yMiHuronDStorePP[',i,']', sep=''),7]
	);
	#lines(i+(1/2), jSum[paste('yMiHuronDStorePP[',i,']', sep=''),5], col = "black",   lwd = 1, type='p', pch=15, cex=0.75)
	
	lines(c(i, i+1), c(miHuronDS_A[i,3],miHuronDS_A[i,3]), col = "goldenrod",  lwd=1.5, type='s')
}

title(main='Michigan-Huron - posterior inferences', outer=TRUE);

dev.off();

### Clair

pdf(paste('clair_ALL_d',decade,'_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.pdf', sep=''), width = 10, height = 7.5);
par(mfrow=c(3,1))
par(mar = c(0,0,0,0))
par(oma = c(4,4,4,4))

plot(c(0), c(0), type = "n", axes = FALSE, xlim = c(startMo,endMoPlot), ylim = clairNBSLimits); 
box()
axis(2, cex.lab = 0.7); 
axis(2, labels=FALSE, cex.lab = 0.7); 
axis(4, labels=FALSE, cex.lab = 0.7); 
mtext(expression(paste("NBS (m"^"3","/s)")), side = 2, line = 2.5, cex=0.8); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);

for(i in startMo:endMo){
	segments(   
		x0 = i+(1/2), x1 = i+(1/2), lwd = 4, col = 'gray60', lend = 2,
		y0 = jSum[paste('clairNBS[',i,']', sep=''),3],
		y1 = jSum[paste('clairNBS[',i,']', sep=''),7]
	);

	for(n in 3:ncol(clairNBS_A)){
		lines(c(i, i+1), c(clairNBS_A[i,n],clairNBS_A[i,n]), col = colorVector[n-2],  lwd=1.5, type='s')
	}
}        

clairNBSLegend = c('L2SWBM', clairNBSSrc);
clairNBSLegendColors = c('gray60', colorVector[1:length(clairNBSSrc)]);

legend(
	x = 'topleft',
	legend = clairNBSLegend,
	col = clairNBSLegendColors,
	bty = 'n',
	lty = c(0, rep(1, length(clairNBSSrc))),
	lwd = c(0, rep(1.5, length(clairNBSSrc))),
	pch = c(15, rep(NA, length(clairNBSSrc))),
	ncol = 5
);

plot(c(0), c(0), type = "n", axes = FALSE, xlim = c(startMo,endMoPlot), ylim = clairFlowLimits); 
box()
axis(4, at=flowLimitsLabs, cex.lab = 0.7); 
axis(4, at=flowLimitsTicks, labels=FALSE, cex.lab = 0.7); 
axis(2, at=flowLimitsTicks, labels=FALSE, cex.lab = 0.7);  
mtext(expression(paste("Q (m"^"3","/s)")), side = 2, line = 2.5, cex=0.8); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);

for(i in startMo:endMo){
	segments(   
		x0 = i+(1/2), x1 = i+(1/2), lwd = 4, col = 'gray60', lend = 2,
		y0 = jSum[paste('clairOutflow[',i,']', sep=''),3],
		y1 = jSum[paste('clairOutflow[',i,']', sep=''),7]
	);

	lines(c(i, i+1), c(yClairOutflow1[i],yClairOutflow1[i]), col = "darkgreen",  lwd=1.5, type='s')
	lines(c(i, i+1), c(yClairOutflow2[i],yClairOutflow2[i]), col = "purple",  lwd=1.5, type='s')
}        
lines((startMo:endMo+0.5),yClairOutflow1[startMo:endMo]+2*cQ_U, col = "darkgreen",  lwd=1.5, type='l', lty=3)
lines((startMo:endMo+0.5),yClairOutflow1[startMo:endMo]-2*cQ_U, col = "darkgreen",  lwd=1.5, type='l', lty=3)
lines((startMo:endMo+0.5),yClairOutflow2[startMo:endMo]+2*cQ_U, col = "purple",  lwd=1.5, type='l', lty=3)   
lines((startMo:endMo+0.5),yClairOutflow2[startMo:endMo]-2*cQ_U, col = "purple",  lwd=1.5, type='l', lty=3)   

clairOutflowLegend = c('L2SWBM', 'Coordinated', 'IGS', 'Uncertainty from Bruxer 2010');
clairOutflowLegendColors = c('gray60', 'darkgreen', 'purple', 'black');

legend(
	x = 'topleft',
	legend = clairOutflowLegend,
	col = clairOutflowLegendColors,
	bty = 'n',
	lty = c(0, rep(1, 2), 3),
	lwd = c(0, rep(1.5, 3)),
	pch = c(15, rep(NA, 3)),
	ncol = 4
);



plot(c(0), type = "n", col = "darkgreen", lwd = 4, axes = FALSE, ylim = storeLimits, xlim = c(startMo,endMoPlot)); 
box()
abline(h=0, col = 8)
axis(2, cex.lab = 0.7); 
axis(4, labels=FALSE, cex.lab = 0.7); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);
axis(1, at=seq(startMo,endMoPlot,12)+6, labels=yearRange, tick=FALSE);
mtext(expression(paste(Delta,'H (m'^'3','/s)')), side = 2, line = 2.5, cex = 0.8)

for(i in startMo:endMo){
	segments(   
		x0 = i+(1/2), x1 = i+(1/2), lwd = 4, col = 'gray60', lend = 2,
		y0 = jSum[paste('yClairDStorePP[',i,']', sep=''),3],
		y1 = jSum[paste('yClairDStorePP[',i,']', sep=''),7]
	);
	
	lines(c(i, i+1), c(clairDS_A[i,3],clairDS_A[i,3]), col = "goldenrod",  lwd=1.5, type='s')
}

title(main='St. Clair - posterior inferences', outer=TRUE);

dev.off();

### Erie

pdf(paste('erieTS_ALL_d',decade,'_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.pdf', sep=''), width = 10, height = 7.5);
par(mfrow=c(6,1))
par(mar = c(0,0,0,0))
par(oma = c(4,4,4,4))

plot(c(0), c(0), type = "n", axes = FALSE, xlim = c(startMo,endMoPlot), ylim = compLimits); 
box()
axis(2, at=compLimitsLabs, cex.lab = 0.7); 
axis(2, at=compLimitsTicks, labels=FALSE, cex.lab = 0.7); 
axis(4, at=compLimitsTicks, labels=FALSE, cex.lab = 0.7); 
mtext(paste("P (mm)"), side = 2, line = 2.5, cex=0.8); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);

for(i in startMo:endMo){
	segments(   
		x0 = i+(1/2), x1 = i+(1/2), lwd = 4, col = 'gray60', lend = 2,
		y0 = jSum[paste('eriePrecip[',i,']', sep=''),3],
		y1 = jSum[paste('eriePrecip[',i,']', sep=''),7]
	);
	#lines(i+(1/2), jSum[paste('eriePrecip[',i,']', sep=''),5], col = "black",   lwd = 1, type='p', pch=15, cex=0.75)
	
	if(ncol(eriePrecip_A) >= 3){
		for(n in 3:ncol(eriePrecip_A)){
			lines(c(i, i+1), c(eriePrecip_A[i,n],eriePrecip_A[i,n]), col = colorVector[n-2],  lwd=1.5, type='s')
		}
	}
}        

eriePrecipLegend = c('L2SWBM', eriePrecipSrc);
eriePrecipLegendColors = c('gray60', colorVector[1:length(eriePrecipSrc)]);

legend(
	x = 'topleft',
	legend = eriePrecipLegend,
	col = eriePrecipLegendColors,
	bty = 'n',
	lty = c(0, rep(1, length(eriePrecipSrc))),
	lwd = c(0, rep(1.5, length(eriePrecipSrc))),
	pch = c(15, rep(NA, length(eriePrecipSrc))),
	ncol = 6
);


plot(c(0), c(0), type = "n", axes = FALSE, xlim = c(startMo,endMoPlot), ylim = compLimits); 
box()
axis(4, at=compLimitsLabs, cex.lab = 0.7); 
axis(4, at=compLimitsTicks, labels=FALSE, cex.lab = 0.7); 
axis(2, at=compLimitsTicks, labels=FALSE, cex.lab = 0.7);  
mtext(paste("E (mm)"), side = 2, line = 2.5, cex=0.8); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);

for(i in startMo:endMo){
	segments(   
		x0 = i+(1/2), x1 = i+(1/2), lwd = 4, col = 'gray60', lend = 2,
		y0 = jSum[paste('erieEvap[',i,']', sep=''),3],
		y1 = jSum[paste('erieEvap[',i,']', sep=''),7]
	);
	#lines(i+(1/2), jSum[paste('erieEvap[',i,']', sep=''),5], col = "black",   lwd = 1, type='p', pch=15, cex=0.75)
	
	if(ncol(erieEvap_A) >= 3){
		for(n in 3:ncol(erieEvap_A)){
			lines(c(i, i+1), c(erieEvap_A[i,n],erieEvap_A[i,n]), col = colorVector[n-2],  lwd=1.5, type='s')
		}
	}
}        

erieEvapLegend = c('L2SWBM', erieEvapSrc);
erieEvapLegend[4] = "GEM.Proto";
erieEvapLegendColors = c('gray60', colorVector[1:length(erieEvapSrc)]);

legend(
	x = 'topleft',
	legend = erieEvapLegend,
	col = erieEvapLegendColors,
	bty = 'n',
	lty = c(0, rep(1, length(erieEvapSrc))),
	lwd = c(0, rep(1.5, length(erieEvapSrc))),
	pch = c(15, rep(NA, length(erieEvapSrc))),
	ncol = 5
);
  

plot(c(0), c(0), type = "n", axes = FALSE, xlim = c(startMo,endMoPlot), ylim = compLimits); 
box()
axis(2, at=compLimitsLabs, cex.lab = 0.7); 
axis(2, at=compLimitsTicks, labels=FALSE, cex.lab = 0.7); 
axis(4, at=compLimitsTicks, labels=FALSE, cex.lab = 0.7); 
mtext(paste("R (mm)"), side = 2, line = 2.5, cex=0.8); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);

for(i in startMo:endMo){
	segments(   
		x0 = i+(1/2), x1 = i+(1/2), lwd = 4, col = 'gray60', lend = 2,
		y0 = jSum[paste('erieRunoff[',i,']', sep=''),3],
		y1 = jSum[paste('erieRunoff[',i,']', sep=''),7]
	);
	#lines(i+(1/2), jSum[paste('erieRunoff[',i,']', sep=''),5], col = "black",   lwd = 1, type='p', pch=15, cex=0.75)
	
	if(ncol(erieRunoff_A) >= 3){
		for(n in 3:ncol(erieRunoff_A)){
			lines(c(i, i+1), c(erieRunoff_A[i,n],erieRunoff_A[i,n]), col = colorVector[n-2],  lwd=1.5, type='s')
		}
	}
} 


erieRunoffLegend = c('L2SWBM', erieRunoffSrc);
erieRunoffLegendColors = c('gray60', colorVector[1:length(erieRunoffSrc)]);

legend(
	x = 'topleft',
	legend = erieRunoffLegend,
	col = erieRunoffLegendColors,
	bty = 'n',
	lty = c(0, rep(1, length(erieRunoffSrc))),
	lwd = c(0, rep(1.5, length(erieRunoffSrc))),
	pch = c(15, rep(NA, length(erieRunoffSrc))),
	ncol = 5
);    


plot(c(0), c(0), type = "n", axes = FALSE, xlim = c(startMo,endMoPlot), ylim = c(3000,9000)); 
box()
axis(4, at=flowLimitsLabs, cex.lab = 0.7); 
axis(4, at=flowLimitsTicks, labels=FALSE, cex.lab = 0.7); 
axis(2, at=flowLimitsTicks, labels=FALSE, cex.lab = 0.7);  
mtext(expression(paste("Q (m"^"3","/s)")), side = 2, line = 2.5, cex=0.8); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);

for(i in startMo:endMo){
	segments(   
		x0 = i+(1/2), x1 = i+(1/2), lwd = 4, col = 'gray60', lend = 2,
		y0 = jSum[paste('erieOutflow[',i,']', sep=''),3],
		y1 = jSum[paste('erieOutflow[',i,']', sep=''),7]
	);
	#lines(i+(1/2), jSum[paste('erieOutflow[',i,']', sep=''),5], col = "black",   lwd = 1, type='p', pch=15, cex=0.75)
	
	
	lines(c(i, i+1), c(yErieOutflow1[i],yErieOutflow1[i]), col = "darkgreen",  lwd=1.5, type='s')
}        
lines((startMo:endMo+0.5),yErieOutflow1[startMo:endMo]+2*eQ_U, col = "darkgreen",  lwd=1.5, type='l', lty=3)
lines((startMo:endMo+0.5),yErieOutflow1[startMo:endMo]-2*eQ_U, col = "darkgreen",  lwd=1.5, type='l', lty=3)

erieOutflowLegend = c('L2SWBM', 'Coordinated', 'IGS', 'Uncertainty from Bruxer 2010');
erieOutflowLegendColors = c('gray60', 'darkgreen', 'purple', 'black');

legend(
	x = 'topleft',
	legend = erieOutflowLegend,
	col = erieOutflowLegendColors,
	bty = 'n',
	lty = c(0, rep(1, 2), 3),
	lwd = c(0, rep(1.5, 3)),
	pch = c(15, rep(NA, 3)),
	ncol = 4
);


plot(yErieDiversion1, type = "n", col = "darkgreen", lwd = 4, axes = FALSE, ylim = diversionLimits, xlim = c(startMo,endMoPlot)); 
box()
abline(h=0, col = 8)
axis(2, at=diversionLimitsLabs, cex.lab = 0.7); 
axis(2, at=diversionLimitsTicks, labels=FALSE, cex.lab = 0.7); 
axis(4, at=diversionLimitsTicks, labels=FALSE, cex.lab = 0.7); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);
mtext(expression(paste("D (m"^"3","/s)")), side = 2, line = 2.5, cex = 0.8)

for(i in startMo:endMo){
	segments(   
		x0 = i+(1/2), x1 = i+(1/2), lwd = 4, col = 'gray60', lend = 2,
		y0 = jSum[paste('erieDiversion[',i,']', sep=''),3],
		y1 = jSum[paste('erieDiversion[',i,']', sep=''),7]
	);
	#lines(i+(1/2), jSum[paste('erieDiversion[',i,']', sep=''),5], col = "black",   lwd = 1, type='p', pch=15, cex=0.75)
	
	lines(c(i, i+1), c(yErieDiversion1[i],yErieDiversion1[i]), col = "darkgreen",  lwd=1.5, type='s')
}

plot(yErieDiversion1, type = "n", col = "darkgreen", lwd = 4, axes = FALSE, ylim = storeLimits, xlim = c(startMo,endMoPlot)); 
box()
abline(h=0, col = 8)
axis(4, cex.lab = 0.7); 
axis(2, labels=FALSE, cex.lab = 0.7); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);
axis(1, at=seq(startMo,endMoPlot,12)+6, labels=yearRange, tick=FALSE);
mtext(expression(paste(Delta,'H (mm)')), side = 2, line = 2.5, cex = 0.8)

for(i in startMo:endMo){
	segments(   
		x0 = i+(1/2), x1 = i+(1/2), lwd = 4, col = 'gray60', lend = 2,
		y0 = jSum[paste('yErieDStorePP[',i,']', sep=''),3],
		y1 = jSum[paste('yErieDStorePP[',i,']', sep=''),7]
	);
	#lines(i+(1/2), jSum[paste('yErieDStorePP[',i,']', sep=''),5], col = "black",   lwd = 1, type='p', pch=15, cex=0.75)
	
	lines(c(i, i+1), c(erieDS_A[i,3],erieDS_A[i,3]), col = "goldenrod",  lwd=1.5, type='s')
}

title(main='Erie - posterior inferences', outer=TRUE);

dev.off();

### ontario

pdf(paste('ontarioTS_ALL_d',decade,'_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.pdf', sep=''), width = 10, height = 7.5);
par(mfrow=c(5,1))
par(mar = c(0,0,0,0))
par(oma = c(4,4,4,4))

plot(c(0), c(0), type = "n", axes = FALSE, xlim = c(startMo,endMoPlot), ylim = compLimits); 
box()
axis(2, at=compLimitsLabs, cex.lab = 0.7); 
axis(2, at=compLimitsTicks, labels=FALSE, cex.lab = 0.7); 
axis(4, at=compLimitsTicks, labels=FALSE, cex.lab = 0.7); 
mtext(paste("P (mm)"), side = 2, line = 2.5, cex=0.8); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);

for(i in startMo:endMo){
	segments(   
		x0 = i+(1/2), x1 = i+(1/2), lwd = 4, col = 'gray60', lend = 2,
		y0 = jSum[paste('ontarioPrecip[',i,']', sep=''),3],
		y1 = jSum[paste('ontarioPrecip[',i,']', sep=''),7]
	);
	#lines(i+(1/2), jSum[paste('ontarioPrecip[',i,']', sep=''),5], col = "black",   lwd = 1, type='p', pch=15, cex=0.75)
	
	if(ncol(ontarioPrecip_A) >= 3){
		for(n in 3:ncol(ontarioPrecip_A)){
			lines(c(i, i+1), c(ontarioPrecip_A[i,n],ontarioPrecip_A[i,n]), col = colorVector[n-2],  lwd=1.5, type='s')
		}
	}
}        

ontarioPrecipLegend = c('L2SWBM', ontarioPrecipSrc);
ontarioPrecipLegendColors = c('gray60', colorVector[1:length(ontarioPrecipSrc)]);

legend(
	x = 'topleft',
	legend = ontarioPrecipLegend,
	col = ontarioPrecipLegendColors,
	bty = 'n',
	lty = c(0, rep(1, length(ontarioPrecipSrc))),
	lwd = c(0, rep(1.5, length(ontarioPrecipSrc))),
	pch = c(15, rep(NA, length(ontarioPrecipSrc))),
	ncol = 6
);

plot(c(0), c(0), type = "n", axes = FALSE, xlim = c(startMo,endMoPlot), ylim = compLimits); 
box()
axis(4, at=compLimitsLabs, cex.lab = 0.7); 
axis(4, at=compLimitsTicks, labels=FALSE, cex.lab = 0.7); 
axis(2, at=compLimitsTicks, labels=FALSE, cex.lab = 0.7);  
mtext(paste("E (mm)"), side = 2, line = 2.5, cex=0.8); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);

for(i in startMo:endMo){
	segments(   
		x0 = i+(1/2), x1 = i+(1/2), lwd = 4, col = 'gray60', lend = 2,
		y0 = jSum[paste('ontarioEvap[',i,']', sep=''),3],
		y1 = jSum[paste('ontarioEvap[',i,']', sep=''),7]
	);
	#lines(i+(1/2), jSum[paste('ontarioEvap[',i,']', sep=''),5], col = "black",   lwd = 1, type='p', pch=15, cex=0.75)
	
	if(ncol(ontarioEvap_A) >= 3){
		for(n in 3:ncol(ontarioEvap_A)){
			lines(c(i, i+1), c(ontarioEvap_A[i,n],ontarioEvap_A[i,n]), col = colorVector[n-2],  lwd=1.5, type='s')
		}
	}
}        

ontarioEvapLegend = c('L2SWBM', ontarioEvapSrc);
ontarioEvapLegendColors = c('gray60', colorVector[1:length(ontarioEvapSrc)]);

legend(
	x = 'topleft',
	legend = ontarioEvapLegend,
	col = ontarioEvapLegendColors,
	bty = 'n',
	lty = c(0, rep(1, length(ontarioEvapSrc))),
	lwd = c(0, rep(1.5, length(ontarioEvapSrc))),
	pch = c(15, rep(NA, length(ontarioEvapSrc))),
	ncol = 5
);

plot(c(0), c(0), type = "n", axes = FALSE, xlim = c(startMo,endMoPlot), ylim = c(0,700)); 
box()
axis(2, at=compLimitsLabs, cex.lab = 0.7); 
axis(2, at=compLimitsTicks, labels=FALSE, cex.lab = 0.7); 
axis(4, at=compLimitsTicks, labels=FALSE, cex.lab = 0.7); 
mtext(paste("R (mm)"), side = 2, line = 2.5, cex=0.8); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);

for(i in startMo:endMo){
	segments(   
		x0 = i+(1/2), x1 = i+(1/2), lwd = 4, col = 'gray60', lend = 2,
		y0 = jSum[paste('ontarioRunoff[',i,']', sep=''),3],
		y1 = jSum[paste('ontarioRunoff[',i,']', sep=''),7]
	);
	#lines(i+(1/2), jSum[paste('ontarioRunoff[',i,']', sep=''),5], col = "black",   lwd = 1, type='p', pch=15, cex=0.75)
	
	if(ncol(ontarioRunoff_A) >= 3){
		for(n in 3:ncol(ontarioRunoff_A)){
			lines(c(i, i+1), c(ontarioRunoff_A[i,n],ontarioRunoff_A[i,n]), col = colorVector[n-2],  lwd=1.5, type='s')
		}
	}
}      

ontarioRunoffLegend = c('L2SWBM', ontarioRunoffSrc);
ontarioRunoffLegendColors = c('gray60', colorVector[1:length(ontarioRunoffSrc)]);

legend(
	x = 'topleft',
	legend = ontarioRunoffLegend,
	col = ontarioRunoffLegendColors,
	bty = 'n',
	lty = c(0, rep(1, length(ontarioRunoffSrc))),
	lwd = c(0, rep(1.5, length(ontarioRunoffSrc))),
	pch = c(15, rep(NA, length(ontarioRunoffSrc))),
	ncol = 5
);


plot(c(0), c(0), type = "n", axes = FALSE, xlim = c(startMo,endMoPlot), ylim = c(4000,11000)); 
box()
axis(4, at=flowLimitsLabs, cex.lab = 0.7); 
axis(4, at=flowLimitsTicks, labels=FALSE, cex.lab = 0.7); 
axis(2, at=flowLimitsTicks, labels=FALSE, cex.lab = 0.7);  
mtext(expression(paste("Q (m"^"3","/s)")), side = 2, line = 2.5, cex=0.8); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);

for(i in startMo:endMo){
	segments(   
		x0 = i+(1/2), x1 = i+(1/2), lwd = 4, col = 'gray60', lend = 2,
		y0 = jSum[paste('ontarioOutflow[',i,']', sep=''),3],
		y1 = jSum[paste('ontarioOutflow[',i,']', sep=''),7]
	);
	#lines(i+(1/2), jSum[paste('ontarioOutflow[',i,']', sep=''),5], col = "black",   lwd = 1, type='p', pch=15, cex=0.75)
	
	
	lines(c(i, i+1), c(yOntarioOutflow1[i],yOntarioOutflow1[i]), col = "darkgreen",  lwd=1.5, type='s')
}        
lines((startMo:endMo+0.5),yOntarioOutflow1[startMo:endMo]+2*oQ_U, col = "darkgreen",  lwd=1.5, type='l', lty=3)
lines((startMo:endMo+0.5),yOntarioOutflow1[startMo:endMo]-2*oQ_U, col = "darkgreen",  lwd=1.5, type='l', lty=3)

ontarioOutflowLegend = c('L2SWBM', 'Coordinated', 'IGS', 'Uncertainty from Bruxer 2010');
ontarioOutflowLegendColors = c('gray60', 'darkgreen', 'purple', 'black');

legend(
	x = 'topleft',
	legend = ontarioOutflowLegend,
	col = ontarioOutflowLegendColors,
	bty = 'n',
	lty = c(0, rep(1, 2), 3),
	lwd = c(0, rep(1.5, 3)),
	pch = c(15, rep(NA, 3)),
	ncol = 4
);


plot(c(0),c(0), type = "n", col = "darkgreen", lwd = 4, axes = FALSE, ylim = storeLimits, xlim = c(startMo,endMoPlot)); 
box()
abline(h=0, col = 8)
axis(2, cex.lab = 0.7); 
axis(4, labels=FALSE, cex.lab = 0.7); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);
axis(1, at=seq(startMo,endMoPlot,12)+6, labels=yearRange, tick=FALSE);
mtext(expression(paste(Delta,'H (mm)')), side = 2, line = 2.5, cex = 0.8)

for(i in startMo:endMo){
	segments(   
		x0 = i+(1/2), x1 = i+(1/2), lwd = 4, col = 'gray60', lend = 2,
		y0 = jSum[paste('yOntarioDStorePP[',i,']', sep=''),3],
		y1 = jSum[paste('yOntarioDStorePP[',i,']', sep=''),7]
	);
	#lines(i+(1/2), jSum[paste('yOntarioDStorePP[',i,']', sep=''),5], col = "black",   lwd = 1, type='p', pch=15, cex=0.75)
	
	lines(c(i, i+1), c(ontarioDS_A[i,3],ontarioDS_A[i,3]), col = "goldenrod",  lwd=1.5, type='s')
}

title(main='Ontario - posterior inferences', outer=TRUE);

dev.off();

decade = decade + 1;

}

