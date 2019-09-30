# FUNCTIONS, GLOBAL (GREAT LAKES WIDE) VARIABLES AND CONFIGURATION

config = read.csv('config_record.csv', skip=12, row.names=1)

startAnalysisYear = as.integer(as.vector(config['Analysis Start Year',1]))
startAnalysisMonth = as.integer(as.vector(config['Analysis Start Month',1]))
endAnalysisYear = as.integer(as.vector(config['Analysis End Year',1]))
endAnalysisMonth = as.integer(as.vector(config['Analysis End Month',1]))

priorStartYear = as.integer(as.vector(config['Prior Start Year',1]))
priorStartMonth = as.integer(as.vector(config['Prior Start Month',1]))
priorEndYear = as.integer(as.vector(config['Prior End Year',1]))
priorEndMonth = as.integer(as.vector(config['Prior End Month',1]))

rollPeriod = as.integer(as.vector(config['Rolling Window',1]))

iters = as.integer(as.vector(config['MCMC Iterations',1]))
halfIters = iters/2;

precipInput = as.numeric(unlist(strsplit(as.character(config['Precip Inputs',1]), ' ', fixed=TRUE)));
evapInput = as.numeric(unlist(strsplit(as.character(config['Evap Inputs',1]), ' ', fixed=TRUE)));
runoffInput = as.numeric(unlist(strsplit(as.character(config['Runoff Inputs',1]), ' ', fixed=TRUE)));

modelSuffix = as.character(config['Model Suffix',1]);

### GET USEFUL FUNCTIONS

source('getFunctions.r')

grid2TS = function(dat){ 
	# Assumes year is first column
	# Months are columns 2-13
	retMat = NULL;
	for(y in 1:nrow(dat)){
		for(m in 2:13){
			retMat = rbind(
				retMat,
				c(dat[y,1],m-1,dat[y,m])
			);
		}
	}
	return(retMat);
}

# Assume data are in YYYY, MM, 'data' format
getSubset = function(dat, y0, m0, y1, m1){
	retDat = NULL;
	for(y in y0:y1){
		for(mn in 1:12){
			if(y == y1 & mn > m1){
				next;
			}
			if(y == y0 & mn < m0){
				next;
			}
			rowIndex = which(dat[,1] == y & dat[,2] == mn)
			if(length(rowIndex) == 0){
				retDat = rbind(retDat, c(y, mn, rep(NA, ncol(dat)-2)))
			}
			else{
				retDat = rbind(retDat, dat[rowIndex,]);
			}
		}
	}
	return(retDat)
}

supArea = 8.1925e10;
mhgArea = 1.1685e11;
stcArea = 1.1090e9;
eriArea = 2.5404e10;
ontArea = 1.9121e10;

daysInMonths = c(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
daysInMonthsWithLeap = c(31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
secondsInADay = 24*60*60;
