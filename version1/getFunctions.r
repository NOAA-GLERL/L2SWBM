# Useful functions for budget analysis

daysInMonths = c(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
daysInMonthsWithLeap = c(31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
secondsInADay = 24*60*60;

# This top one is the most generic

make2YSeasonalSeries = function(dat, absErrorBound){ #assume monthly gridded data, last line is latest
	cat('seasonal\n');
	retSet = NULL;	
	for(y in 1:nrow(dat)){
		if(dat[y,1] == budgetTimeRange[2]){
			break;
		}		
		plotSet = unlist(c(dat[y,2:13],dat[(y+1),2:13]));	
		plotSet[abs(plotSet) > absErrorBound] = NA;
		retSet = rbind(retSet, plotSet); 
	}

	return(retSet);	
}

getAnnualSeriesFromGrid = function(dat){
	cat('annualTS\n');
	
	retSet = NULL;	
	for(y in 1:nrow(dat)){	
		datSet = unlist(c(dat[y,1], sum(unlist(c(dat[y,2:13])))));
		retSet = rbind(retSet, datSet); 
	}

	return(retSet);	
}

makeDepFromJanSeries = function(dat, absErrorBound){ #assume monthly gridded data, last line is latest
	cat('depFromJan\n');
	retSet = NULL;	
	for(y in 1:nrow(dat)){
		if(dat[y,1] == budgetTimeRange[2]){
			break;
		}		
		plotSet = unlist(c(dat[y,2:13],dat[(y+1),2:13]));		
		plotSet = plotSet - plotSet[1];
		plotSet[abs(plotSet) > absErrorBound] = NA;
		retSet = rbind(retSet, plotSet); 
	}

	return(retSet);	
}

makeDepFromJanSeriesWithYear = function(dat, absErrorBound){ #assume monthly gridded data, last line is latest
	cat('depFromJan\n');
	retSet = NULL;	
	for(y in 1:nrow(dat)){
		if(dat[y,1] == budgetTimeRange[2]){
			break;
		}		
		plotSet = unlist(c(dat[y,2:13],dat[(y+1),2:13]));		
		plotSet = plotSet - plotSet[1];
		plotSet[abs(plotSet) > absErrorBound] = NA;
		retSet = rbind(retSet, c(dat[y,1], plotSet)); 
	}

	return(retSet);	
}

makeCumulativeSeriesWithYear = function(dat, absErrorBound){ 
	cat('cumulative\n');
	retSet = NULL;	
	for(y in 1:nrow(dat)){
		if(dat[y,1] == budgetTimeRange[2]){
			break;
		}		
		plotSet = unlist(c(dat[y,2:13],dat[(y+1),2:13]));		
		plotSet = cumsum(plotSet);
		retSet = rbind(retSet, c(dat[y,1], plotSet)); 
	}

	return(retSet);	
}

makeCumulativeSeries = function(dat, absErrorBound){ 
	cat('cumulative\n');
	retSet = NULL;	
	for(y in 1:nrow(dat)){
		if(dat[y,1] == budgetTimeRange[2]){
			break;
		}		
		plotSet = unlist(c(dat[y,2:13],dat[(y+1),2:13]));		
		plotSet = cumsum(plotSet);
		retSet = rbind(retSet, plotSet); 
	}

	return(retSet);	
}


makeMo2MoChangeSeries = function(dat, absErrorBound){
	cat('mo2mo\n');
	retSet = NULL;
	for(y in 1:nrow(dat)){
		if(dat[y,1] == budgetTimeRange[2]){
			break;
		}
		
		# 'Change to following month' (Edited)
		if(y < nrow(dat)){
			plotSet = unlist(
				c( 
					dat[y,3:13]-dat[y,2:12], 
					dat[(y+1),2]-dat[y,13], 
					dat[(y+1),3:13]-dat[(y+1),2:12],
					dat[(y+2),2]-dat[(y+1),13]
				)
			);
		}
		else{
			plotSet = unlist(
				c(
					dat[y,3:13]-dat[y,2:12], 
					dat[(y+1),2]-dat[y,13],
					dat[(y+1),3:13]-dat[(y+1),2:12],
					0
				)
			);
		}
		
		plotSet[abs(plotSet) > absErrorBound] = NA;
		
		retSet = rbind(retSet, plotSet);
	}
	
	return(retSet);
}

makeMo2MoChangeSeriesPerYear = function(dat, absErrorBound){
	cat('mo2mo\n');
	retSet = NULL;
	for(y in 1:nrow(dat)){		
		# 'Change to following month' (Edited)
		if(y < nrow(dat)){
			plotSet = unlist(
				c( 
					dat[y,3:13]-dat[y,2:12], 
					dat[(y+1),2]-dat[y,13]
				)
			);
		}
		else{
			plotSet = unlist(
				c(
					dat[y,3:13]-dat[y,2:12],
					0
				)
			);
		}
		
		plotSet[abs(plotSet) > absErrorBound] = NA;
		
		retSet = rbind(retSet, plotSet);
	}
	
	return(retSet);
}

# Run this first, then run one of the above.
makeCMS2mmGrid = function(dat, absErrorBound, lakeSurface){
	cat('makeCMS2mm\n');
	retSet = NULL;
	for(y in 1:nrow(dat)){
		rowDat = dat[y,2:13];
		dayCountSet = NULL;
		if(dat[y,1] %% 4 == 0){
			dayCountSet = c(daysInMonthsWithLeap);
		}
		else{
			dayCountSet = c(daysInMonths);
		}
		
		rowDat[rowDat==-99990] = 0;
		
		rowDat = rowDat*secondsInADay*dayCountSet/lakeSurface*1000;
		
		rowDat[abs(rowDat) > absErrorBound] = NA;
		
		retSet = rbind(retSet, c(dat[y,1], rowDat)); 	
	}	
	return(retSet)
}

makemm2CMSGrid = function(dat, absErrorBound, lakeSurface){
	cat('makemm2CMS\n');
	retSet = NULL;
	for(y in 1:nrow(dat)){
		rowDat = dat[y,2:13];
		dayCountSet = NULL;
		if(dat[y,1] %% 4 == 0){
			dayCountSet = c(daysInMonthsWithLeap);
		}
		else{
			dayCountSet = c(daysInMonths);
		}
		
		rowDat[rowDat==-99990] = 0;
		
		rowDat = rowDat/secondsInADay/dayCountSet*lakeSurface/1000;
		
		rowDat[abs(rowDat) > absErrorBound] = NA;
		
		retSet = rbind(retSet, c(dat[y,1], rowDat)); 	
	}	
	return(retSet)
}


getMonthlyMeans = function(dat){  #Assuming monthly grid
	return(as.numeric(apply(dat[, 2:13], 2, mean, na.rm=TRUE)));
}

gridToTS = function(dat){
	retSet = NULL;

	for(y in 1:nrow(dat)){
		for(m in 2:13){
			retSet = rbind(retSet,
				c(dat[y,1]+((m-2)/12), dat[y,m])
			);
		}
	}

	return(retSet);	
}

gridToTSWithDiscreteMonths = function(dat){
	retSet = NULL;

	for(y in 1:nrow(dat)){
		for(m in 2:13){
			retSet = rbind(retSet,
				c(dat[y,1]+((m-2)/12), dat[y,1], m-1, dat[y,m])
			);
		}
	}

	return(retSet);	
}

