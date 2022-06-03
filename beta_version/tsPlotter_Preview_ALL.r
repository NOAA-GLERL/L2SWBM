### TIME SERIES PLOTTER FOR THE L2SWBM

superiorDS_A = getSubset(superiorDS, startAnalysisYear, startAnalysisMonth, endAnalysisYear, endAnalysisMonth)

superiorOutflow_A = getSubset(superiorOutflow, startAnalysisYear, startAnalysisMonth, endAnalysisYear, endAnalysisMonth)
superiorOutflowIGS_A = getSubset(superiorOutflowIGS, startAnalysisYear, startAnalysisMonth, endAnalysisYear, endAnalysisMonth)
superiorDiversion_A = getSubset(superiorDiversion, startAnalysisYear, startAnalysisMonth, endAnalysisYear, endAnalysisMonth)

superiorPrecip_A = getSubset(superiorPrecip, startAnalysisYear, startAnalysisMonth, endAnalysisYear, endAnalysisMonth)
superiorEvap_A = getSubset(superiorEvap, startAnalysisYear, startAnalysisMonth, endAnalysisYear, endAnalysisMonth)
superiorRunoff_A = getSubset(superiorRunoff, startAnalysisYear, startAnalysisMonth, endAnalysisYear, endAnalysisMonth)

miHuronDS_A = getSubset(miHuronDS, startAnalysisYear, startAnalysisMonth, endAnalysisYear, endAnalysisMonth)

miHuronOutflow_A = getSubset(miHuronOutflow, startAnalysisYear, startAnalysisMonth, endAnalysisYear, endAnalysisMonth)
miHuronOutflowIGS_A = getSubset(miHuronOutflowIGS, startAnalysisYear, startAnalysisMonth, endAnalysisYear, endAnalysisMonth)
miHuronDiversion_A = getSubset(miHuronDiversion, startAnalysisYear, startAnalysisMonth, endAnalysisYear, endAnalysisMonth)

miHuronPrecip_A = getSubset(miHuronPrecip, startAnalysisYear, startAnalysisMonth, endAnalysisYear, endAnalysisMonth)
miHuronEvap_A = getSubset(miHuronEvap, startAnalysisYear, startAnalysisMonth, endAnalysisYear, endAnalysisMonth)
miHuronRunoff_A = getSubset(miHuronRunoff, startAnalysisYear, startAnalysisMonth, endAnalysisYear, endAnalysisMonth)

clairDS_A = getSubset(clairDS, startAnalysisYear, startAnalysisMonth, endAnalysisYear, endAnalysisMonth)

clairNBS_A = getSubset(clairNBS, startAnalysisYear, startAnalysisMonth, endAnalysisYear, endAnalysisMonth)

clairOutflow_A = getSubset(clairOutflow, startAnalysisYear, startAnalysisMonth, endAnalysisYear, endAnalysisMonth)
clairOutflowIGS_A = getSubset(clairOutflowIGS, startAnalysisYear, startAnalysisMonth, endAnalysisYear, endAnalysisMonth)

erieDS_A = getSubset(erieDS, startAnalysisYear, startAnalysisMonth, endAnalysisYear, endAnalysisMonth)

erieOutflow_A = getSubset(erieOutflow, startAnalysisYear, startAnalysisMonth, endAnalysisYear, endAnalysisMonth)
erieDiversion_A = getSubset(erieDiversion, startAnalysisYear, startAnalysisMonth, endAnalysisYear, endAnalysisMonth)

eriePrecip_A = getSubset(eriePrecip, startAnalysisYear, startAnalysisMonth, endAnalysisYear, endAnalysisMonth)
erieEvap_A = getSubset(erieEvap, startAnalysisYear, startAnalysisMonth, endAnalysisYear, endAnalysisMonth)
erieRunoff_A = getSubset(erieRunoff, startAnalysisYear, startAnalysisMonth, endAnalysisYear, endAnalysisMonth)

ontarioDS_A = getSubset(ontarioDS, startAnalysisYear, startAnalysisMonth, endAnalysisYear, endAnalysisMonth)

ontarioOutflow_A = getSubset(ontarioOutflow, startAnalysisYear, startAnalysisMonth, endAnalysisYear, endAnalysisMonth)

ontarioPrecip_A = getSubset(ontarioPrecip, startAnalysisYear, startAnalysisMonth, endAnalysisYear, endAnalysisMonth)
ontarioEvap_A = getSubset(ontarioEvap, startAnalysisYear, startAnalysisMonth, endAnalysisYear, endAnalysisMonth)
ontarioRunoff_A = getSubset(ontarioRunoff, startAnalysisYear, startAnalysisMonth, endAnalysisYear, endAnalysisMonth)

ySuperiorOutflow1 = superiorOutflow_A[,3]
ySuperiorOutflow2 = superiorOutflowIGS_A[,3]
ySuperiorDiversion1 = superiorDiversion_A[,3]

yMiHuronOutflow1 = miHuronOutflow_A[,3]
yMiHuronOutflow2 = miHuronOutflowIGS_A[,3]
yMiHuronDiversion1 = miHuronDiversion_A[,3]

yClairOutflow1 = clairOutflow_A[,3]
yClairOutflow2 = clairOutflowIGS_A[,3]

yErieOutflow1 = erieOutflow_A[,3]
yErieDiversion1 = erieDiversion_A[,3]

yOntarioOutflow1 = ontarioOutflow_A[,3]

dayVector = NULL;
yearVector = NULL;
m = NULL;
for(i in startAnalysisYear:endAnalysisYear){
	for(mo in 1:12){
		if(i == startAnalysisYear & mo < startAnalysisMonth){
			next;
		}
		if(i == endAnalysisYear & mo > endAnalysisMonth){
			next;
		}
		yearVector = c(yearVector, i);
		m = c(m, mo)
		if(i %% 4 == 0){
			dayVector = c(dayVector, daysInMonthsWithLeap[mo])
		}
		else{
			dayVector = c(dayVector, daysInMonths[mo])
		}
	}
}

posteriorStartMonth = 1;
posteriorEndMonth = length(m);
decade = 0;

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

pdf(paste('superiorTS_Preview_d',decade,'_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',modelSuffix,'.pdf', sep=''), width = 10, height = 7.5);
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
	for(n in 3:ncol(superiorPrecip_A)){
		lines(c(i, i+1), c(superiorPrecip_A[i,n],superiorPrecip_A[i,n]), col = colorVector[n-2],  lwd=1.5, type='s')
	}
}        

superiorPrecipLegend = c(superiorPrecipSrc);
superiorPrecipLegendColors = c(colorVector[1:length(superiorPrecipSrc)]);

legend(
	x = 'topleft',
	legend = superiorPrecipLegend,
	col = superiorPrecipLegendColors,
	bty = 'n',
	lty = c(rep(1, length(superiorPrecipSrc))),
	lwd = c(rep(1.5, length(superiorPrecipSrc))),
	pch = c(rep(NA, length(superiorPrecipSrc))),
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
	for(n in 3:ncol(superiorEvap_A)){
		lines(c(i, i+1), c(superiorEvap_A[i,n],superiorEvap_A[i,n]), col = colorVector[n-2],  lwd=1.5, type='s')
	}
}    


superiorEvapLegend = c(superiorEvapSrc);
superiorEvapLegendColors = c(colorVector[1:length(superiorEvapSrc)]);

legend(
	x = 'topleft',
	legend = superiorEvapLegend,
	col = superiorEvapLegendColors,
	bty = 'n',
	lty = c(rep(1, length(superiorEvapSrc))),
	lwd = c(rep(1.5, length(superiorEvapSrc))),
	pch = c(rep(NA, length(superiorEvapSrc))),
	ncol = 6
);
    

plot(c(0), c(0), type = "n", axes = FALSE, xlim = c(startMo,endMoPlot), ylim = compLimits); 
box()
axis(2, at=compLimitsLabs, cex.lab = 0.7); 
axis(2, at=compLimitsTicks, labels=FALSE, cex.lab = 0.7); 
axis(4, at=compLimitsTicks, labels=FALSE, cex.lab = 0.7); 
mtext(paste("R (mm)"), side = 2, line = 2.5, cex=0.8); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);

for(i in startMo:endMo){
	for(n in 3:ncol(superiorRunoff_A)){
		lines(c(i, i+1), c(superiorRunoff_A[i,n],superiorRunoff_A[i,n]), col = colorVector[n-2],  lwd=1.5, type='s')
	}
}      


superiorRunoffLegend = c(superiorRunoffSrc);
superiorRunoffLegendColors = c(colorVector[1:length(superiorRunoffSrc)]);

legend(
	x = 'topleft',
	legend = superiorRunoffLegend,
	col = superiorRunoffLegendColors,
	bty = 'n',
	lty = c(rep(1, length(superiorRunoffSrc))),
	lwd = c(rep(1.5, length(superiorRunoffSrc))),
	pch = c(rep(NA, length(superiorRunoffSrc))),
	ncol = 6
);

plot(c(0), c(0), type = "n", axes = FALSE, xlim = c(startMo,endMoPlot), ylim = c(0,5000)); 
box()
axis(4, at=flowLimitsLabs, cex.lab = 0.7); 
axis(4, at=flowLimitsTicks, labels=FALSE, cex.lab = 0.7); 
axis(2, at=flowLimitsTicks, labels=FALSE, cex.lab = 0.7);  
mtext(expression(paste("Q (m"^"3","/s)")), side = 2, line = 2.5, cex=0.8); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);

for(i in startMo:endMo){
	lines(c(i, i+1), c(ySuperiorOutflow1[i],ySuperiorOutflow1[i]), col = "darkgreen",  lwd=1.5, type='s')
	lines(c(i, i+1), c(ySuperiorOutflow2[i],ySuperiorOutflow2[i]), col = "purple",   lwd=1.5, type='s')
}        
#lines(ySuperiorOutflow1, col = "darkgreen",  lwd=1.5, type='s')
#lines(ySuperiorOutflow2, col = "purple",  lwd=1.5, type='s')   


superiorOutflowLegend = c('Coordinated', 'IGS');
superiorOutflowLegendColors = c('darkgreen', 'purple');

legend(
	x = 'topleft',
	legend = superiorOutflowLegend,
	col = superiorOutflowLegendColors,
	bty = 'n',
	lty = c(rep(1, 2)),
	lwd = c(rep(1.5, 2)),
	pch = c(rep(NA, 2)),
	ncol = 6
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
	lines(c(i, i+1), c(superiorDS_A[i,3],superiorDS_A[i,3]), col = "goldenrod",  lwd=1.5, type='s')
}

title(main='Superior - data preview', outer=TRUE);

dev.off();

### miHuron

pdf(paste('miHuronTS_Preview_d',decade,'_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',modelSuffix,'.pdf', sep=''), width = 10, height = 7.5);
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
	for(n in 3:ncol(miHuronPrecip_A)){
		lines(c(i, i+1), c(miHuronPrecip_A[i,n],miHuronPrecip_A[i,n]), col = colorVector[n-2],  lwd=1.5, type='s')
	}
}        

miHuronPrecipLegend = c(miHuronPrecipSrc);
miHuronPrecipLegendColors = c(colorVector[1:length(miHuronPrecipSrc)]);

legend(
	x = 'topleft',
	legend = miHuronPrecipLegend,
	col = miHuronPrecipLegendColors,
	bty = 'n',
	lty = c(rep(1, length(miHuronPrecipSrc))),
	lwd = c(rep(1.5, length(miHuronPrecipSrc))),
	pch = c(rep(NA, length(miHuronPrecipSrc))),
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
	for(n in 3:ncol(miHuronEvap_A)){
		lines(c(i, i+1), c(miHuronEvap_A[i,n],miHuronEvap_A[i,n]), col = colorVector[n-2],  lwd=1.5, type='s')
	}
}        

miHuronEvapLegend = c(miHuronEvapSrc);
miHuronEvapLegendColors = c(colorVector[1:length(miHuronEvapSrc)]);

legend(
	x = 'topleft',
	legend = miHuronEvapLegend,
	col = miHuronEvapLegendColors,
	bty = 'n',
	lty = c(rep(1, length(miHuronEvapSrc))),
	lwd = c(rep(1.5, length(miHuronEvapSrc))),
	pch = c(rep(NA, length(miHuronEvapSrc))),
	ncol = 6
);


plot(c(0), c(0), type = "n", axes = FALSE, xlim = c(startMo,endMoPlot), ylim = compLimits); 
box()
axis(2, at=compLimitsLabs, cex.lab = 0.7); 
axis(2, at=compLimitsTicks, labels=FALSE, cex.lab = 0.7); 
axis(4, at=compLimitsTicks, labels=FALSE, cex.lab = 0.7); 
mtext(paste("R (mm)"), side = 2, line = 2.5, cex=0.8); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);

for(i in startMo:endMo){
	for(n in 3:ncol(miHuronRunoff_A)){
		lines(c(i, i+1), c(miHuronRunoff_A[i,n],miHuronRunoff_A[i,n]), col = colorVector[n-2],  lwd=1.5, type='s')
	}
}      


miHuronRunoffLegend = c(miHuronRunoffSrc);
miHuronRunoffLegendColors = c(colorVector[1:length(miHuronRunoffSrc)]);

legend(
	x = 'topleft',
	legend = miHuronRunoffLegend,
	col = miHuronRunoffLegendColors,
	bty = 'n',
	lty = c(rep(1, length(miHuronRunoffSrc))),
	lwd = c(rep(1.5, length(miHuronRunoffSrc))),
	pch = c(rep(NA, length(miHuronRunoffSrc))),
	ncol = 6
);

plot(c(0), c(0), type = "n", axes = FALSE, xlim = c(startMo,endMoPlot), ylim = c(3000,8000)); 
box()
axis(4, at=flowLimitsLabs, cex.lab = 0.7); 
axis(4, at=flowLimitsTicks, labels=FALSE, cex.lab = 0.7); 
axis(2, at=flowLimitsTicks, labels=FALSE, cex.lab = 0.7);  
mtext(expression(paste("Q (m"^"3","/s)")), side = 2, line = 2.5, cex=0.8); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);

for(i in startMo:endMo){
	lines(c(i, i+1), c(yMiHuronOutflow1[i],yMiHuronOutflow1[i]), col = "darkgreen",  lwd=1.5, type='s')
	lines(c(i, i+1), c(yMiHuronOutflow2[i],yMiHuronOutflow2[i]), col = "purple",   lwd=1.5, type='s')
}        
#lines(yMiHuronOutflow1, col = "darkgreen",  lwd=1.5, type='s')
#lines(yMiHuronOutflow2, col = "purple",  lwd=1.5, type='s')   

miHuronOutflowLegend = c('Coordinated', 'IGS');
miHuronOutflowLegendColors = c('darkgreen', 'purple');

legend(
	x = 'topleft',
	legend = miHuronOutflowLegend,
	col = miHuronOutflowLegendColors,
	bty = 'n',
	lty = c(rep(1, 2)),
	lwd = c(rep(1.5, 2)),
	pch = c(rep(NA, 2)),
	ncol = 6
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
	lines(c(i, i+1), c(yMiHuronDiversion1[i],yMiHuronDiversion1[i]), col = "darkgreen",  lwd=1.5, type='s')
}

abline(h = 91, col='lightblue3', lty=2, lwd=1.5)

miHuronDiversionLegend = c('Coordinated', 'Regulation Limit');
miHuronDiversionLegendColors = c('darkgreen', 'lightblue3');

legend(
	x = 'topleft',
	legend = miHuronDiversionLegend,
	col = miHuronDiversionLegendColors,
	bty = 'n',
	lty = c(1, 2),
	lwd = c(1.5, 1.5),
	pch = c(rep(NA, 2)),
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
	lines(c(i, i+1), c(miHuronDS_A[i,3],miHuronDS_A[i,3]), col = "goldenrod",  lwd=1.5, type='s')
}

title(main='Michigan-Huron - data preview', outer=TRUE);

dev.off();

### Clair

pdf(paste('clairTS_Preview_d',decade,'_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',modelSuffix,'.pdf', sep=''), width = 10, height = 7.5);
par(mfrow=c(3,1))
par(mar = c(0,0,0,0))
par(oma = c(4,4,4,4))

plot(c(0), c(0), type = "n", axes = FALSE, xlim = c(startMo,endMoPlot), ylim = clairNBSLimits); 
box()
axis(2, cex.lab = 0.7); 
axis(2, labels=FALSE, cex.lab = 0.7); 
axis(4, labels=FALSE, cex.lab = 0.7); 
mtext(paste("NBS (cms)"), side = 2, line = 2.5, cex=0.8); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);

for(i in startMo:endMo){
	for(n in 3:ncol(clairNBS_A)){
		lines(c(i, i+1), c(clairNBS_A[i,n],clairNBS_A[i,n]), col = colorVector[n-2],  lwd=1.5, type='s')
	}
}        

clairNBSLegend = c(clairNBSSrc);
clairNBSLegendColors = c(colorVector[1:length(clairNBSSrc)]);

legend(
	x = 'topleft',
	legend = clairNBSLegend,
	col = clairNBSLegendColors,
	bty = 'n',
	lty = c(rep(1, length(clairNBSSrc))),
	lwd = c(rep(1.5, length(clairNBSSrc))),
	pch = c(rep(NA, length(clairNBSSrc))),
	ncol = 6
);

plot(c(0), c(0), type = "n", axes = FALSE, xlim = c(startMo,endMoPlot), ylim = clairFlowLimits); 
box()
axis(4, at=flowLimitsLabs, cex.lab = 0.7); 
axis(4, at=flowLimitsTicks, labels=FALSE, cex.lab = 0.7); 
axis(2, at=flowLimitsTicks, labels=FALSE, cex.lab = 0.7);  
mtext(expression(paste("Q (m"^"3","/s)")), side = 2, line = 2.5, cex=0.8); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);

for(i in startMo:endMo){
	lines(c(i, i+1), c(yClairOutflow1[i],yClairOutflow1[i]), col = "darkgreen",  lwd=1.5, type='s')
	lines(c(i, i+1), c(yClairOutflow2[i],yClairOutflow2[i]), col = "purple",  lwd=1.5, type='s')
}        
#lines(yClairOutflow1, col = "darkgreen",  lwd=1.5, type='s')
#lines(yClairOutflow2, col = "purple",  lwd=1.5, type='s')   

clairOutflowLegend = c('Coordinated', 'IGS');
clairOutflowLegendColors = c('darkgreen', 'purple');

legend(
	x = 'topleft',
	legend = clairOutflowLegend,
	col = clairOutflowLegendColors,
	bty = 'n',
	lty = c(rep(1, 2)),
	lwd = c(rep(1.5, 2)),
	pch = c(rep(NA, 2)),
	ncol = 6
);


plot(c(0), type = "n", col = "darkgreen", lwd = 4, axes = FALSE, ylim = storeLimits, xlim = c(startMo,endMoPlot)); 
box()
abline(h=0, col = 8)
axis(2, cex.lab = 0.7); 
axis(4, labels=FALSE, cex.lab = 0.7); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);
axis(1, at=seq(startMo,endMoPlot,12)+6, labels=yearRange, tick=FALSE);
mtext(expression(paste(Delta,'H (cms)')), side = 2, line = 2.5, cex = 0.8)

for(i in startMo:endMo){
	lines(c(i, i+1), c(clairDS_A[i,3],clairDS_A[i,3]), col = "goldenrod",  lwd=1.5, type='s')
}

title(main='St. Clair - data preview', outer=TRUE);

dev.off();

### erie

pdf(paste('erieTS_Preview_d',decade,'_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',modelSuffix,'.pdf', sep=''), width = 10, height = 7.5);
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
	for(n in 3:ncol(eriePrecip_A)){
		lines(c(i, i+1), c(eriePrecip_A[i,n],eriePrecip_A[i,n]), col = colorVector[n-2],  lwd=1.5, type='s')
	}
}        

eriePrecipLegend = c(eriePrecipSrc);
eriePrecipLegendColors = c(colorVector[1:length(eriePrecipSrc)]);

legend(
	x = 'topleft',
	legend = eriePrecipLegend,
	col = eriePrecipLegendColors,
	bty = 'n',
	lty = c(rep(1, length(eriePrecipSrc))),
	lwd = c(rep(1.5, length(eriePrecipSrc))),
	pch = c(rep(NA, length(eriePrecipSrc))),
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
	for(n in 3:ncol(erieEvap_A)){
		lines(c(i, i+1), c(erieEvap_A[i,n],erieEvap_A[i,n]), col = colorVector[n-2],  lwd=1.5, type='s')
	}
}        

erieEvapLegend = c(erieEvapSrc);
erieEvapLegendColors = c(colorVector[1:length(erieEvapSrc)]);

legend(
	x = 'topleft',
	legend = erieEvapLegend,
	col = erieEvapLegendColors,
	bty = 'n',
	lty = c(rep(1, length(erieEvapSrc))),
	lwd = c(rep(1.5, length(erieEvapSrc))),
	pch = c(rep(NA, length(erieEvapSrc))),
	ncol = 6
);
  

plot(c(0), c(0), type = "n", axes = FALSE, xlim = c(startMo,endMoPlot), ylim = compLimits); 
box()
axis(2, at=compLimitsLabs, cex.lab = 0.7); 
axis(2, at=compLimitsTicks, labels=FALSE, cex.lab = 0.7); 
axis(4, at=compLimitsTicks, labels=FALSE, cex.lab = 0.7); 
mtext(paste("R (mm)"), side = 2, line = 2.5, cex=0.8); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);

for(i in startMo:endMo){
	for(n in 3:ncol(erieRunoff_A)){
		lines(c(i, i+1), c(erieRunoff_A[i,n],erieRunoff_A[i,n]), col = colorVector[n-2],  lwd=1.5, type='s')
	}
} 


erieRunoffLegend = c(erieRunoffSrc);
erieRunoffLegendColors = c(colorVector[1:length(erieRunoffSrc)]);

legend(
	x = 'topleft',
	legend = erieRunoffLegend,
	col = erieRunoffLegendColors,
	bty = 'n',
	lty = c(rep(1, length(erieRunoffSrc))),
	lwd = c(rep(1.5, length(erieRunoffSrc))),
	pch = c(rep(NA, length(erieRunoffSrc))),
	ncol = 6
);    


plot(c(0), c(0), type = "n", axes = FALSE, xlim = c(startMo,endMoPlot), ylim = c(3000,9000)); 
box()
axis(4, at=flowLimitsLabs, cex.lab = 0.7); 
axis(4, at=flowLimitsTicks, labels=FALSE, cex.lab = 0.7); 
axis(2, at=flowLimitsTicks, labels=FALSE, cex.lab = 0.7);  
mtext(expression(paste("Q (m"^"3","/s)")), side = 2, line = 2.5, cex=0.8); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);

for(i in startMo:endMo){
	lines(c(i, i+1), c(yErieOutflow1[i],yErieOutflow1[i]), col = "darkgreen",  lwd=1.5, type='s')
}        
#lines(yErieOutflow1, col = "darkgreen",  lwd=1.5, type='s')
#lines(yErieOutflow2, col = "purple",  lwd=1.5, type='s')   

erieOutflowLegend = c('Coordinated', 'IGS');
erieOutflowLegendColors = c('darkgreen', 'purple');

legend(
	x = 'topleft',
	legend = erieOutflowLegend,
	col = erieOutflowLegendColors,
	bty = 'n',
	lty = c(rep(1, 2)),
	lwd = c(rep(1.5, 2)),
	pch = c(rep(NA, 2)),
	ncol = 6
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
	lines(c(i, i+1), c(erieDS_A[i,3],erieDS_A[i,3]), col = "goldenrod",  lwd=1.5, type='s')
}

title(main='Erie - data preview', outer=TRUE);

dev.off();

### ontario

pdf(paste('ontarioTS_Preview_d',decade,'_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',modelSuffix,'.pdf', sep=''), width = 10, height = 7.5);
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
	for(n in 3:ncol(ontarioPrecip_A)){
		lines(c(i, i+1), c(ontarioPrecip_A[i,n],ontarioPrecip_A[i,n]), col = colorVector[n-2],  lwd=1.5, type='s')
	}
}        

ontarioPrecipLegend = c(ontarioPrecipSrc);
ontarioPrecipLegendColors = c(colorVector[1:length(ontarioPrecipSrc)]);

legend(
	x = 'topleft',
	legend = ontarioPrecipLegend,
	col = ontarioPrecipLegendColors,
	bty = 'n',
	lty = c(rep(1, length(ontarioPrecipSrc))),
	lwd = c(rep(1.5, length(ontarioPrecipSrc))),
	pch = c(rep(NA, length(ontarioPrecipSrc))),
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
	for(n in 3:ncol(ontarioEvap_A)){
		lines(c(i, i+1), c(ontarioEvap_A[i,n],ontarioEvap_A[i,n]), col = colorVector[n-2],  lwd=1.5, type='s')
	}
}        

ontarioEvapLegend = c(ontarioEvapSrc);
ontarioEvapLegendColors = c(colorVector[1:length(ontarioEvapSrc)]);

legend(
	x = 'topleft',
	legend = ontarioEvapLegend,
	col = ontarioEvapLegendColors,
	bty = 'n',
	lty = c(rep(1, length(ontarioEvapSrc))),
	lwd = c(rep(1.5, length(ontarioEvapSrc))),
	pch = c(rep(NA, length(ontarioEvapSrc))),
	ncol = 6
);

plot(c(0), c(0), type = "n", axes = FALSE, xlim = c(startMo,endMoPlot), ylim = c(0,700)); 
box()
axis(2, at=compLimitsLabs, cex.lab = 0.7); 
axis(2, at=compLimitsTicks, labels=FALSE, cex.lab = 0.7); 
axis(4, at=compLimitsTicks, labels=FALSE, cex.lab = 0.7); 
mtext(paste("R (mm)"), side = 2, line = 2.5, cex=0.8); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);

for(i in startMo:endMo){
	for(n in 3:ncol(ontarioRunoff_A)){
		lines(c(i, i+1), c(ontarioRunoff_A[i,n],ontarioRunoff_A[i,n]), col = colorVector[n-2],  lwd=1.5, type='s')
	}
}      

ontarioRunoffLegend = c(ontarioRunoffSrc);
ontarioRunoffLegendColors = c(colorVector[1:length(ontarioRunoffSrc)]);

legend(
	x = 'topleft',
	legend = ontarioRunoffLegend,
	col = ontarioRunoffLegendColors,
	bty = 'n',
	lty = c(rep(1, length(ontarioRunoffSrc))),
	lwd = c(rep(1.5, length(ontarioRunoffSrc))),
	pch = c(rep(NA, length(ontarioRunoffSrc))),
	ncol = 6
);


plot(c(0), c(0), type = "n", axes = FALSE, xlim = c(startMo,endMoPlot), ylim = c(4000,11000)); 
box()
axis(4, at=flowLimitsLabs, cex.lab = 0.7); 
axis(4, at=flowLimitsTicks, labels=FALSE, cex.lab = 0.7); 
axis(2, at=flowLimitsTicks, labels=FALSE, cex.lab = 0.7);  
mtext(expression(paste("Q (m"^"3","/s)")), side = 2, line = 2.5, cex=0.8); 
axis(1, at=seq(startMo,endMoPlot,12), labels=FALSE);

for(i in startMo:endMo){
	lines(c(i, i+1), c(yOntarioOutflow1[i],yOntarioOutflow1[i]), col = "darkgreen",  lwd=1.5, type='s')
}        
#lines(yOntarioOutflow1, col = "darkgreen",  lwd=1.5, type='s')
#lines(yOntarioOutflow2, col = "purple",  lwd=1.5, type='s')   

ontarioOutflowLegend = c('Coordinated', 'IGS');
ontarioOutflowLegendColors = c('darkgreen', 'purple');

legend(
	x = 'topleft',
	legend = ontarioOutflowLegend,
	col = ontarioOutflowLegendColors,
	bty = 'n',
	lty = c(rep(1, 2)),
	lwd = c(rep(1.5, 2)),
	pch = c(rep(NA, 2)),
	ncol = 6
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
	lines(c(i, i+1), c(ontarioDS_A[i,3],ontarioDS_A[i,3]), col = "goldenrod",  lwd=1.5, type='s')
}

title(main='Ontario - data preview', outer=TRUE);

dev.off();


decade = decade + 1;

}

