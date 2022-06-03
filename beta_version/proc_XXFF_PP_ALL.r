### DATA PROCESSING ANALYSIS

# For testing:

# priorStartYear = 1900
# priorStartMonth = 1
# priorEndYear = 1949
# priorEndMonth = 12

### FOR RESIDUAL EVAPORATION AS REQUESTED (FOR PRIORS)

superiorEvap_resid = cbind(superiorEvap_Prior[,1:2], superiorPrecip_Prior[,3] + superiorRunoff_Prior[,3] - superiorNBS[,9])
miHuronEvap_resid = cbind(miHuronEvap_Prior[,1:2], miHuronPrecip_Prior[,3] + miHuronRunoff_Prior[,3] - miHuronNBS[,9])
erieEvap_resid = cbind(erieEvap_Prior[,1:2], eriePrecip_Prior[,3] + erieRunoff_Prior[,3] - erieNBS[,9])
ontarioEvap_resid = cbind(ontarioEvap_Prior[,1:2], ontarioPrecip_Prior[,3] + ontarioRunoff_Prior[,3] - ontarioNBS[,9])

superiorEvap_ResidPrior = getSubset(superiorEvap_resid, priorStartYear, priorStartMonth, priorEndYear, priorEndMonth)
miHuronEvap_ResidPrior = getSubset(miHuronEvap_resid, priorStartYear, priorStartMonth, priorEndYear, priorEndMonth)
erieEvap_ResidPrior = getSubset(erieEvap_resid, priorStartYear, priorStartMonth, priorEndYear, priorEndMonth)
ontarioEvap_ResidPrior = getSubset(ontarioEvap_resid, priorStartYear, priorStartMonth, priorEndYear, priorEndMonth)

### ANALYSIS DATA

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

### PRIOR DATA

superiorOutflow_Prior = getSubset(superiorOutflow, priorStartYear, priorStartMonth, priorEndYear, priorEndMonth)
superiorDiversion_Prior = getSubset(superiorDiversion, priorStartYear, priorStartMonth, priorEndYear, priorEndMonth)

superiorPrecip_Prior = getSubset(superiorPrecip_Prior, priorStartYear, priorStartMonth, priorEndYear, priorEndMonth)
superiorEvap_Prior = getSubset(superiorEvap_Prior, priorStartYear, priorStartMonth, priorEndYear, priorEndMonth)
superiorRunoff_Prior = getSubset(superiorRunoff_Prior, priorStartYear, priorStartMonth, priorEndYear, priorEndMonth)

miHuronOutflow_Prior = getSubset(miHuronOutflow, priorStartYear, priorStartMonth, priorEndYear, priorEndMonth)
miHuronDiversion_Prior = getSubset(miHuronDiversion, priorStartYear, priorStartMonth, priorEndYear, priorEndMonth)

miHuronPrecip_Prior = getSubset(miHuronPrecip_Prior, priorStartYear, priorStartMonth, priorEndYear, priorEndMonth)
miHuronEvap_Prior = getSubset(miHuronEvap_Prior, priorStartYear, priorStartMonth, priorEndYear, priorEndMonth)
miHuronRunoff_Prior = getSubset(miHuronRunoff_Prior, priorStartYear, priorStartMonth, priorEndYear, priorEndMonth)

clairNBS_Prior = getSubset(clairNBS, priorStartYear, priorStartMonth, priorEndYear, priorEndMonth)
clairOutflow_Prior = getSubset(clairOutflow, priorStartYear, priorStartMonth, priorEndYear, priorEndMonth)

erieOutflow_Prior = getSubset(erieOutflow, priorStartYear, priorStartMonth, priorEndYear, priorEndMonth)
erieDiversion_Prior = getSubset(erieDiversion, priorStartYear, priorStartMonth, priorEndYear, priorEndMonth)

eriePrecip_Prior = getSubset(eriePrecip_Prior, priorStartYear, priorStartMonth, priorEndYear, priorEndMonth)
erieEvap_Prior = getSubset(erieEvap_Prior, priorStartYear, priorStartMonth, priorEndYear, priorEndMonth)
erieRunoff_Prior = getSubset(erieRunoff_Prior, priorStartYear, priorStartMonth, priorEndYear, priorEndMonth)

ontarioOutflow_Prior = getSubset(ontarioOutflow, priorStartYear, priorStartMonth, priorEndYear, priorEndMonth)

ontarioPrecip_Prior = getSubset(ontarioPrecip_Prior, priorStartYear, priorStartMonth, priorEndYear, priorEndMonth)
ontarioEvap_Prior = getSubset(ontarioEvap_Prior, priorStartYear, priorStartMonth, priorEndYear, priorEndMonth)
ontarioRunoff_Prior = getSubset(ontarioRunoff_Prior, priorStartYear, priorStartMonth, priorEndYear, priorEndMonth)

### INSERT RESIDUAL EVAP INTO 3RD COLUMN OF PRIOR MATRIX WHERE EVAP OBS ARE NA

superiorEvap_Prior[is.na(superiorEvap_Prior[,3]),3] = superiorEvap_ResidPrior[is.na(superiorEvap_Prior[,3]),3]
miHuronEvap_Prior[is.na(miHuronEvap_Prior[,3]),3] = miHuronEvap_ResidPrior[is.na(miHuronEvap_Prior[,3]),3]
erieEvap_Prior[is.na(erieEvap_Prior[,3]),3] = erieEvap_ResidPrior[is.na(erieEvap_Prior[,3]),3]
ontarioEvap_Prior[is.na(ontarioEvap_Prior[,3]),3] = ontarioEvap_ResidPrior[is.na(ontarioEvap_Prior[,3]),3]
clairNBS_Prior[is.na(clairNBS_Prior[,3]),3] = clairNBS_Prior[is.na(clairNBS_Prior[,3]),5]

### PRIOR DISTRIBUTIONS

superiorPriorPrecipShape = miHuronPriorPrecipShape = NULL					
superiorPriorPrecipRate = miHuronPriorPrecipRate = NULL					
superiorEvapPriorMean = miHuronEvapPriorMean = NULL
superiorEvapPriorPrecision = miHuronEvapPriorPrecision = NULL
superiorRunoffLogPriorMean = miHuronRunoffLogPriorMean = NULL
superiorRunoffLogPriorPrecision = miHuronRunoffLogPriorPrecision = NULL
superiorOutflowPriorMean = miHuronOutflowPriorMean = NULL
superiorOutflowPriorPrecision = miHuronOutflowPriorPrecision = NULL
superiorDiversionPriorMean = miHuronDiversionPriorMean = NULL
superiorDiversionPriorPrecision = miHuronDiversionPriorPrecision = NULL

clairNBSPriorMean = NULL;
clairNBSPriorPrecision = NULL;
clairOutflowPriorMean = NULL;
clairOutflowPriorPrecision = NULL;

eriePriorPrecipShape = NULL;
eriePriorPrecipRate = NULL;
erieEvapPriorMean = NULL;
erieEvapPriorPrecision = NULL;
erieRunoffLogPriorMean = NULL;
erieRunoffLogPriorPrecision = NULL;
erieOutflowPriorMean = NULL;
erieOutflowPriorPrecision = NULL;
erieDiversionPriorMean = NULL
erieDiversionPriorPrecision = NULL

ontarioPriorPrecipShape = NULL;
ontarioPriorPrecipRate = NULL;
ontarioEvapPriorMean = NULL;
ontarioEvapPriorPrecision = NULL;
ontarioRunoffLogPriorMean = NULL;
ontarioRunoffLogPriorPrecision = NULL;
ontarioOutflowPriorMean = NULL;
ontarioOutflowPriorPrecision = NULL;

priorCol = 3

for(i in 1:12){

	## Over-lake precipitation; gamma distribution following Husak, et al (2007), IJOC
	x.bar_s = mean(superiorPrecip_Prior[superiorPrecip_Prior[,2]==i,priorCol], na.rm=TRUE)
	theta_s = log(x.bar_s)-mean(log(superiorPrecip_Prior[superiorPrecip_Prior[,2]==i,priorCol]), na.rm=TRUE)
	superiorPriorPrecipShape[i] = 1/(4*theta_s)*(1+sqrt(1+4*theta_s/3))
	superiorPriorPrecipRate[i] = superiorPriorPrecipShape[i]/x.bar_s

	x.bar_m = mean(miHuronPrecip_Prior[miHuronPrecip_Prior[,2]==i,priorCol], na.rm=TRUE)
	theta_m = log(x.bar_m)-mean(log(miHuronPrecip_Prior[miHuronPrecip_Prior[,2]==i,priorCol]), na.rm=TRUE)
	miHuronPriorPrecipShape[i] = 1/(4*theta_m)*(1+sqrt(1+4*theta_m/3))
	miHuronPriorPrecipRate[i] = miHuronPriorPrecipShape[i]/x.bar_m

	## Over-lake evaporation
	superiorEvapPriorMean[i] = mean(superiorEvap_Prior[superiorEvap_Prior[,2]==i,priorCol], na.rm=TRUE)
	superiorEvapPriorPrecision[i] =  0.5*(1/var(superiorEvap_Prior[superiorEvap_Prior[,2]==i,priorCol], na.rm=TRUE))					
	miHuronEvapPriorMean[i] = mean(miHuronEvap_Prior[miHuronEvap_Prior[,2]==i,priorCol], na.rm=TRUE)
	miHuronEvapPriorPrecision[i] =  0.5*(1/var(miHuronEvap_Prior[miHuronEvap_Prior[,2]==i,priorCol], na.rm=TRUE))

	## Runoff
	superiorRunoffLogPriorMean[i] = mean(log(superiorRunoff_Prior[superiorRunoff_Prior[,2]==i,priorCol]), na.rm=TRUE)
	superiorRunoffLogPriorPrecision[i] =  (1/var(log(superiorRunoff_Prior[superiorRunoff_Prior[,2]==i,priorCol]), na.rm=TRUE))				
	miHuronRunoffLogPriorMean[i] = mean(log(miHuronRunoff_Prior[miHuronRunoff_Prior[,2]==i,priorCol]), na.rm=TRUE)
	miHuronRunoffLogPriorPrecision[i] =  (1/var(log(miHuronRunoff_Prior[miHuronRunoff_Prior[,2]==i,priorCol]), na.rm=TRUE))
	
	## Outflow
	superiorOutflowPriorMean[i] =  mean(superiorOutflow_Prior[superiorOutflow_Prior[,2]==i,3], na.rm=TRUE)
	superiorOutflowPriorPrecision[i] = (1/var(superiorOutflow_Prior[superiorOutflow_Prior[,2]==i,3], na.rm=TRUE))					
	miHuronOutflowPriorMean[i] =  mean(miHuronOutflow_Prior[miHuronOutflow_Prior[,2]==i,3], na.rm=TRUE)
	miHuronOutflowPriorPrecision[i] = (1/var(miHuronOutflow_Prior[miHuronOutflow_Prior[,2]==i,3], na.rm=TRUE))
	
	## Diversions
	superiorDiversionPriorMean[i] =  mean(superiorDiversion_Prior[superiorDiversion_Prior[,2]==i,3], na.rm=TRUE)
	superiorDiversionPriorPrecision[i] = (1/var(superiorDiversion_Prior[superiorDiversion_Prior[,2]==i,3], na.rm=TRUE))					
	miHuronDiversionPriorMean[i] =  mean(miHuronDiversion_Prior[miHuronDiversion_Prior[,2]==i,3], na.rm=TRUE)
	miHuronDiversionPriorPrecision[i] = (1/var(miHuronDiversion_Prior[miHuronDiversion_Prior[,2]==i,3], na.rm=TRUE))	
	
	# CEO
	
	x.bar_e = mean(eriePrecip_Prior[eriePrecip_Prior[,2]==i,priorCol], na.rm=TRUE)
	theta_e = log(x.bar_e)-mean(log(eriePrecip_Prior[eriePrecip_Prior[,2]==i,priorCol]), na.rm=TRUE)
	eriePriorPrecipShape[i] = 1/(4*theta_e)*(1+sqrt(1+4*theta_e/3))
	eriePriorPrecipRate[i] = eriePriorPrecipShape[i]/x.bar_e
	
	x.bar_o = mean(ontarioPrecip_Prior[ontarioPrecip_Prior[,2]==i,priorCol], na.rm=TRUE)
	theta_o = log(x.bar_o)-mean(log(ontarioPrecip_Prior[ontarioPrecip_Prior[,2]==i,priorCol]), na.rm=TRUE)
	ontarioPriorPrecipShape[i] = 1/(4*theta_o)*(1+sqrt(1+4*theta_o/3))
	ontarioPriorPrecipRate[i] = ontarioPriorPrecipShape[i]/x.bar_o
	
	clairNBSPriorMean[i] =  mean(clairNBS_Prior[clairNBS_Prior[,2]==i,priorCol], na.rm=TRUE)
	clairNBSPriorPrecision[i] = (1/var(clairNBS_Prior[clairNBS_Prior[,2]==i,priorCol], na.rm=TRUE))	
	clairOutflowPriorMean[i] =  mean(clairOutflow_Prior[clairOutflow_Prior[,2]==i,priorCol], na.rm=TRUE)
	clairOutflowPriorPrecision[i] = (1/var(clairOutflow_Prior[clairOutflow_Prior[,2]==i,priorCol], na.rm=TRUE))	
	
	erieEvapPriorMean[i] = mean(erieEvap_Prior[erieEvap_Prior[,2]==i,priorCol], na.rm=TRUE)
	erieEvapPriorPrecision[i] =  0.5*(1/var(erieEvap_Prior[erieEvap_Prior[,2]==i,priorCol], na.rm=TRUE))		
	erieRunoffLogPriorMean[i] = mean(log(erieRunoff_Prior[erieRunoff_Prior[,2]==i,priorCol]), na.rm=TRUE)
	erieRunoffLogPriorPrecision[i] =  (1/var(log(erieRunoff_Prior[erieRunoff_Prior[,2]==i,priorCol]), na.rm=TRUE))	
	erieOutflowPriorMean[i] =  mean(erieOutflow_Prior[erieOutflow_Prior[,2]==i,3], na.rm=TRUE)
	erieOutflowPriorPrecision[i] = (1/var(erieOutflow_Prior[erieOutflow_Prior[,2]==i,3], na.rm=TRUE))	
	erieDiversionPriorMean[i] =  mean(erieDiversion_Prior[erieDiversion_Prior[,2]==i,3], na.rm=TRUE)
	erieDiversionPriorPrecision[i] = (1/var(erieDiversion_Prior[erieDiversion_Prior[,2]==i,3], na.rm=TRUE))	
	
	ontarioEvapPriorMean[i] = mean(ontarioEvap_Prior[ontarioEvap_Prior[,2]==i,priorCol], na.rm=TRUE)
	ontarioEvapPriorPrecision[i] =  0.5*(1/var(ontarioEvap_Prior[ontarioEvap_Prior[,2]==i,priorCol], na.rm=TRUE))		
	ontarioRunoffLogPriorMean[i] = mean(log(ontarioRunoff_Prior[ontarioRunoff_Prior[,2]==i,priorCol]), na.rm=TRUE)
	ontarioRunoffLogPriorPrecision[i] =  (1/var(log(ontarioRunoff_Prior[ontarioRunoff_Prior[,2]==i,priorCol]), na.rm=TRUE))	
	ontarioOutflowPriorMean[i] =  mean(ontarioOutflow_Prior[ontarioOutflow_Prior[,2]==i,3], na.rm=TRUE)
	ontarioOutflowPriorPrecision[i] = (1/var(ontarioOutflow_Prior[ontarioOutflow_Prior[,2]==i,3], na.rm=TRUE))	
	
}

### OTHER THINGS

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

### SETTING UP THE MODEL

ySuperiorRStore = rep(NA, length(m));
yMiHuronRStore = rep(NA, length(m));
yClairRStore = rep(NA, length(m));
yErieRStore = rep(NA, length(m));
yOntarioRStore = rep(NA, length(m));
for(rp in rollPeriod:length(m)){
	ySuperiorRStore[rp] = sum(superiorDS_A[(rp-rollPeriod+1):rp,3]);
	yMiHuronRStore[rp] = sum(miHuronDS_A[(rp-rollPeriod+1):rp,3]);
	yClairRStore[rp] = sum(clairDS_A[(rp-rollPeriod+1):rp,3]);
	yErieRStore[rp] = sum(erieDS_A[(rp-rollPeriod+1):rp,3]);
	yOntarioRStore[rp] = sum(ontarioDS_A[(rp-rollPeriod+1):rp,3]);
}

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

yPrecip = list();
yEvap = list();
yRunoff = list();
yNBS = list();

if(ncol(superiorPrecip_A) >= 3){
	for(i in 3:ncol(superiorPrecip_A)){
		yPrecip[[paste('ySuperiorPrecip',i-2,sep='')]] = superiorPrecip_A[,i]
	}
}
if(ncol(miHuronPrecip_A) >= 3){
	for(i in 3:ncol(miHuronPrecip_A)){
		yPrecip[[paste('yMiHuronPrecip',i-2,sep='')]] = miHuronPrecip_A[,i]
	}
}
if(ncol(superiorEvap_A) >= 3){
	for(i in 3:ncol(superiorEvap_A)){
		yEvap[[paste('ySuperiorEvap',i-2,sep='')]] = superiorEvap_A[,i]
	}
}
if(ncol(miHuronEvap_A) >= 3){
	for(i in 3:ncol(miHuronEvap_A)){
		yEvap[[paste('yMiHuronEvap',i-2,sep='')]] = miHuronEvap_A[,i]
	}
}

if(ncol(superiorRunoff_A) >= 3){
	for(i in 3:ncol(superiorRunoff_A)){
		yRunoff[[paste('ySuperiorRunoff',i-2,sep='')]] = superiorRunoff_A[,i]
	}
}
if(ncol(miHuronRunoff_A) >= 3){
	for(i in 3:ncol(miHuronRunoff_A)){
		yRunoff[[paste('yMiHuronRunoff',i-2,sep='')]] = miHuronRunoff_A[,i]
	}
}

if(ncol(eriePrecip_A) >= 3){
	for(i in 3:ncol(eriePrecip_A)){
		yPrecip[[paste('yEriePrecip',i-2,sep='')]] = eriePrecip_A[,i]
	}
}
if(ncol(ontarioPrecip_A) >= 3){	
	for(i in 3:ncol(ontarioPrecip_A)){
		yPrecip[[paste('yOntarioPrecip',i-2,sep='')]] = ontarioPrecip_A[,i]
	}
}

if(ncol(erieEvap_A) >= 3){
	for(i in 3:ncol(erieEvap_A)){
		yEvap[[paste('yErieEvap',i-2,sep='')]] = erieEvap_A[,i]
	}
}
if(ncol(ontarioEvap_A) >= 3){
	for(i in 3:ncol(ontarioEvap_A)){
		yEvap[[paste('yOntarioEvap',i-2,sep='')]] = ontarioEvap_A[,i]
	}
}

if(ncol(erieRunoff_A) >= 3){
	for(i in 3:ncol(erieRunoff_A)){
		yRunoff[[paste('yErieRunoff',i-2,sep='')]] = erieRunoff_A[,i]
	}
}
if(ncol(ontarioRunoff_A) >= 3){
	for(i in 3:ncol(ontarioRunoff_A)){
		yRunoff[[paste('yOntarioRunoff',i-2,sep='')]] = ontarioRunoff_A[,i]
	}
}

for(i in 3:ncol(clairNBS_A)){
	yNBS[[paste('yClairNBS',i-2,sep='')]] = clairNBS_A[,i]
}


posteriorStartMonth = 1;
posteriorEndMonth = length(m);
nMonths = posteriorEndMonth;

inputDataCoreJAGS = list(
	"posteriorStartMonth"                   = posteriorStartMonth, 
	"posteriorEndMonth"                     = posteriorEndMonth,
	"rollPeriod"                            = rollPeriod,
	"m"                                     = m,
	"dayVector"								= dayVector,
	"secondsInADay"							= secondsInADay,
	"supArea"								= supArea,
	"mhgArea"								= mhgArea,
	"ySuperiorRStore"                       = ySuperiorRStore, 
	"yMiHuronRStore"	                    = yMiHuronRStore,
	"superiorPriorPrecipShape"              = superiorPriorPrecipShape,            
	"superiorPriorPrecipRate"               = superiorPriorPrecipRate,             
	"superiorEvapPriorMean"                 = superiorEvapPriorMean,               
	"superiorEvapPriorPrecision"            = superiorEvapPriorPrecision,          
	"superiorRunoffLogPriorMean"            = superiorRunoffLogPriorMean,          
	"superiorRunoffLogPriorPrecision"       = superiorRunoffLogPriorPrecision,     
	"superiorOutflowPriorMean"              = superiorOutflowPriorMean,            
	"superiorOutflowPriorPrecision"         = superiorOutflowPriorPrecision,       
	"superiorDiversionPriorMean"            = superiorDiversionPriorMean,          
	"superiorDiversionPriorPrecision"       = superiorDiversionPriorPrecision,     
	"miHuronPriorPrecipShape"               = miHuronPriorPrecipShape,             
	"miHuronPriorPrecipRate"                = miHuronPriorPrecipRate,              
	"miHuronEvapPriorMean"                  = miHuronEvapPriorMean,                
	"miHuronEvapPriorPrecision"             = miHuronEvapPriorPrecision,           
	"miHuronRunoffLogPriorMean"             = miHuronRunoffLogPriorMean,           
	"miHuronRunoffLogPriorPrecision"        = miHuronRunoffLogPriorPrecision,      
	"miHuronOutflowPriorMean"               = miHuronOutflowPriorMean,             
	"miHuronOutflowPriorPrecision"          = miHuronOutflowPriorPrecision,        
	"miHuronDiversionPriorMean"             = miHuronDiversionPriorMean,           
	"miHuronDiversionPriorPrecision"        = miHuronDiversionPriorPrecision,     
	"ySuperiorOutflow1"                     = ySuperiorOutflow1,
	"ySuperiorOutflow2"                     = ySuperiorOutflow2,
	"ySuperiorDiversion1"                   = ySuperiorDiversion1,
	"yMiHuronOutflow1"                      = yMiHuronOutflow1,
	"yMiHuronOutflow2"                      = yMiHuronOutflow2,
	"yMiHuronDiversion1"                    = yMiHuronDiversion1,
	"eriArea"								= eriArea,
	"ontArea"								= ontArea,
	"yClairRStore"	                    	= yClairRStore,
	"yErieRStore"	                    	= yErieRStore,
	"yOntarioRStore"                       	= yOntarioRStore,     
	"clairOutflowPriorMean"              	= clairOutflowPriorMean,            
	"clairOutflowPriorPrecision"         	= clairOutflowPriorPrecision,  
	"clairNBSPriorMean"              	    = clairNBSPriorMean,            
	"clairNBSPriorPrecision"         	    = clairNBSPriorPrecision,  	
	"eriePriorPrecipShape"              	= eriePriorPrecipShape,            
	"eriePriorPrecipRate"               	= eriePriorPrecipRate,             
	"erieEvapPriorMean"                 	= erieEvapPriorMean,               
	"erieEvapPriorPrecision"            	= erieEvapPriorPrecision,          
	"erieRunoffLogPriorMean"            	= erieRunoffLogPriorMean,          
	"erieRunoffLogPriorPrecision"      		= erieRunoffLogPriorPrecision,     
	"erieOutflowPriorMean"              	= erieOutflowPriorMean,            
	"erieOutflowPriorPrecision"         	= erieOutflowPriorPrecision,       
	"erieDiversionPriorMean"            	= erieDiversionPriorMean,          
	"erieDiversionPriorPrecision"       	= erieDiversionPriorPrecision, 
	"ontarioPriorPrecipShape"              	= ontarioPriorPrecipShape,            
	"ontarioPriorPrecipRate"              	= ontarioPriorPrecipRate,             
	"ontarioEvapPriorMean"                 	= ontarioEvapPriorMean,               
	"ontarioEvapPriorPrecision"           	= ontarioEvapPriorPrecision,          
	"ontarioRunoffLogPriorMean"            	= ontarioRunoffLogPriorMean,          
	"ontarioRunoffLogPriorPrecision"      	= ontarioRunoffLogPriorPrecision,     
	"ontarioOutflowPriorMean"              	= ontarioOutflowPriorMean,            
	"ontarioOutflowPriorPrecision"         	= ontarioOutflowPriorPrecision,      
	"yClairOutflow1"                        = yClairOutflow1,
	"yClairOutflow2"                        = yClairOutflow2,
	"yErieOutflow1"                    		= yErieOutflow1,
	"yErieDiversion1"                   	= yErieDiversion1,
	"yOntarioOutflow1"                     	= yOntarioOutflow1
);

inputDataCoreJAGS = c(inputDataCoreJAGS,yPrecip);
inputDataCoreJAGS = c(inputDataCoreJAGS,yEvap);
inputDataCoreJAGS = c(inputDataCoreJAGS,yRunoff);
inputDataCoreJAGS = c(inputDataCoreJAGS,yNBS);

yBias = c(
	'ySuperiorOutflow1Bias',
	'ySuperiorOutflow2Bias',
	'yMiHuronOutflow1Bias',
	'yMiHuronOutflow2Bias',
	'ySuperiorDiversion1Bias',
	'yMiHuronDiversion1Bias',
	'yClairOutflow1Bias',
	'yClairOutflow2Bias',
	'yErieOutflow1Bias',
	'yOntarioOutflow1Bias',
	'yErieDiversion1Bias'
);

yPrec = c(
	'ySuperiorOutflow1Prec',
	'ySuperiorOutflow2Prec',
	'yMiHuronOutflow1Prec',
	'yMiHuronOutflow2Prec',
	'ySuperiorDiversion1Prec',
	'yMiHuronDiversion1Prec',
	'yClairOutflow1Prec',
	'yClairOutflow2Prec',
	'yErieOutflow1Prec',
	'yOntarioOutflow1Prec',
	'yErieDiversion1Prec'
);

yBias = c(yBias, paste(names(yPrecip),'Bias',sep=''))
yBias = c(yBias, paste(names(yEvap),'Bias',sep=''))
yBias = c(yBias, paste(names(yRunoff),'Bias',sep=''))
yBias = c(yBias, paste(names(yNBS),'Bias',sep=''))

yPrec = c(yPrec, paste(names(yPrecip),'Prec',sep=''))
yPrec = c(yPrec, paste(names(yEvap),'Prec',sep=''))
yPrec = c(yPrec, paste(names(yRunoff),'Prec',sep=''))
yPrec = c(yPrec, paste(names(yNBS),'Prec',sep=''))

modelCode = 'model {
	for (j in posteriorStartMonth:posteriorEndMonth){   										
		
		############################## 
		## Priors
		##############################
		
		### SUPERIOR
		superiorPrecip[j] ~ dgamma(superiorPriorPrecipShape[m[j]], superiorPriorPrecipRate[m[j]])
		superiorEvap[j] ~ dnorm(superiorEvapPriorMean[m[j]], superiorEvapPriorPrecision[m[j]])
		superiorRunoff[j] 	<- exp(superiorLogRunoff[j])
		superiorLogRunoff[j] ~ dnorm(superiorRunoffLogPriorMean[m[j]], superiorRunoffLogPriorPrecision[m[j]])	
		superiorOutflow[j] ~ dnorm(superiorOutflowPriorMean[m[j]], superiorOutflowPriorPrecision[m[j]])
		superiorDiversion[j] ~ dnorm(superiorDiversionPriorMean[m[j]], superiorDiversionPriorPrecision[m[j]])

		### MICHIGAN-HURON
		miHuronPrecip[j]	~ dgamma(miHuronPriorPrecipShape[m[j]], miHuronPriorPrecipRate[m[j]])			    
		miHuronEvap[j] ~ dnorm(miHuronEvapPriorMean[m[j]], miHuronEvapPriorPrecision[m[j]])		    
		miHuronRunoff[j] 	<- exp(miHuronLogRunoff[j])                            
		miHuronLogRunoff[j] ~ dnorm(miHuronRunoffLogPriorMean[m[j]], miHuronRunoffLogPriorPrecision[m[j]])
		miHuronOutflow[j] ~ dnorm(miHuronOutflowPriorMean[m[j]], miHuronOutflowPriorPrecision[m[j]]) 
		miHuronDiversion[j] ~ dnorm(miHuronDiversionPriorMean[m[j]], miHuronDiversionPriorPrecision[m[j]])	

		### CLAIR
		
		clairNBS[j] ~ dnorm(clairNBSPriorMean[m[j]], clairNBSPriorPrecision[m[j]])	
		clairOutflow[j] ~ dnorm(clairOutflowPriorMean[m[j]], clairOutflowPriorPrecision[m[j]])	
		
		### ERIE
		eriePrecip[j] ~ dgamma(eriePriorPrecipShape[m[j]], eriePriorPrecipRate[m[j]])
		erieEvap[j] ~ dnorm(erieEvapPriorMean[m[j]], erieEvapPriorPrecision[m[j]])
		erieRunoff[j] 	<- exp(erieLogRunoff[j])
		erieLogRunoff[j] ~ dnorm(erieRunoffLogPriorMean[m[j]], erieRunoffLogPriorPrecision[m[j]])	
		erieOutflow[j] ~ dnorm(erieOutflowPriorMean[m[j]], erieOutflowPriorPrecision[m[j]])	
		erieDiversion[j] ~ dnorm(erieDiversionPriorMean[m[j]], erieDiversionPriorPrecision[m[j]])	
		
		### ONTARIO
		ontarioPrecip[j] ~ dgamma(ontarioPriorPrecipShape[m[j]], ontarioPriorPrecipRate[m[j]])
		ontarioEvap[j] ~ dnorm(ontarioEvapPriorMean[m[j]], ontarioEvapPriorPrecision[m[j]])
		ontarioRunoff[j] 	<- exp(ontarioLogRunoff[j])
		ontarioLogRunoff[j] ~ dnorm(ontarioRunoffLogPriorMean[m[j]], ontarioRunoffLogPriorPrecision[m[j]])	
		ontarioOutflow[j] ~ dnorm(ontarioOutflowPriorMean[m[j]], ontarioOutflowPriorPrecision[m[j]])		
		
		####################################################
		## LIKELIHOOD FUNCTIONS
		####################################################
		
		ySuperiorOutflow1[j]  ~ dnorm(ySuperiorOutflow1Mean[j], ySuperiorOutflow1Prec)
		ySuperiorOutflow2[j]  ~ dnorm(ySuperiorOutflow2Mean[j], ySuperiorOutflow2Prec)
		ySuperiorDiversion1[j]  ~ dnorm(ySuperiorDiversion1Mean[j], ySuperiorDiversion1Prec)
		
		ySuperiorOutflow1Mean[j] <- superiorOutflow[j] + ySuperiorOutflow1Bias[m[j]]
		ySuperiorOutflow2Mean[j] <- superiorOutflow[j] + ySuperiorOutflow2Bias[m[j]]
		ySuperiorDiversion1Mean[j] <- superiorDiversion[j] + ySuperiorDiversion1Bias[m[j]]
		
		yMiHuronOutflow1[j]  ~ dnorm(yMiHuronOutflow1Mean[j], yMiHuronOutflow1Prec)
		yMiHuronOutflow2[j]  ~ dnorm(yMiHuronOutflow2Mean[j], yMiHuronOutflow2Prec)
		yMiHuronDiversion1[j]  ~ dnorm(yMiHuronDiversion1Mean[j], yMiHuronDiversion1Prec)
		
		yMiHuronOutflow1Mean[j] <- miHuronOutflow[j] + yMiHuronOutflow1Bias[m[j]]
		yMiHuronOutflow2Mean[j] <- miHuronOutflow[j] + yMiHuronOutflow2Bias[m[j]]
		yMiHuronDiversion1Mean[j] <- miHuronDiversion[j] + yMiHuronDiversion1Bias[m[j]]
		
		yClairOutflow1[j]  ~ dnorm(yClairOutflow1Mean[j], yClairOutflow1Prec)
		yClairOutflow2[j]  ~ dnorm(yClairOutflow2Mean[j], yClairOutflow2Prec)
		
		yClairOutflow1Mean[j] <- clairOutflow[j] + yClairOutflow1Bias[m[j]]
		yClairOutflow2Mean[j] <- clairOutflow[j] + yClairOutflow2Bias[m[j]]
		
		yErieOutflow1[j]  ~ dnorm(yErieOutflow1Mean[j], yErieOutflow1Prec)
		yErieDiversion1[j]  ~ dnorm(yErieDiversion1Mean[j], yErieDiversion1Prec)
		
		yErieOutflow1Mean[j] <- erieOutflow[j] + yErieOutflow1Bias[m[j]]
		yErieDiversion1Mean[j] <- erieDiversion[j] + yErieDiversion1Bias[m[j]]
		
		yOntarioOutflow1[j]  ~ dnorm(yOntarioOutflow1Mean[j], yOntarioOutflow1Prec)
		
		yOntarioOutflow1Mean[j] <- ontarioOutflow[j] + yOntarioOutflow1Bias[m[j]]
';

if(length(names(yPrecip)) > 0){
	for(n in 1:length(names(yPrecip))){
		lake = NULL;
		if(grepl('Superior',names(yPrecip)[n], fixed=TRUE)){
			lake = 'superior';
		}
		else if(grepl('MiHuron',names(yPrecip)[n], fixed=TRUE)){
			lake = 'miHuron';
		}
		else if(grepl('Erie',names(yPrecip)[n], fixed=TRUE)){
			lake = 'erie';
		}
		else if(grepl('Ontario',names(yPrecip)[n], fixed=TRUE)){
			lake = 'ontario';
		}
		
		modelCode = paste(
			modelCode,
			'\t\t',names(yPrecip)[n],'[j] ~ dnorm(',names(yPrecip)[n],'Mean[j], ',names(yPrecip)[n],'Prec)\n',
			'\t\t',names(yPrecip)[n],'Mean[j] <- ', lake, 'Precip[j] + ', names(yPrecip)[n],'Bias[m[j]]\n\n',
			sep=''
		);
	}
}

if(length(names(yEvap)) > 0){
	for(n in 1:length(names(yEvap))){
		lake = NULL;
		if(grepl('Superior',names(yEvap)[n], fixed=TRUE)){
			lake = 'superior';
		}
		else if(grepl('MiHuron',names(yEvap)[n], fixed=TRUE)){
			lake = 'miHuron';
		}
		else if(grepl('Erie',names(yEvap)[n], fixed=TRUE)){
			lake = 'erie';
		}
		else if(grepl('Ontario',names(yEvap)[n], fixed=TRUE)){
			lake = 'ontario';
		}
		
		modelCode = paste(
			modelCode,
			'\t\t',names(yEvap)[n],'[j] ~ dnorm(',names(yEvap)[n],'Mean[j], ',names(yEvap)[n],'Prec)\n',
			'\t\t',names(yEvap)[n],'Mean[j] <- ', lake, 'Evap[j] + ', names(yEvap)[n],'Bias[m[j]]\n\n',
			sep=''
		);
	}
}

if(length(names(yRunoff)) > 0){
	for(n in 1:length(names(yRunoff))){
		lake = NULL;
		if(grepl('Superior',names(yRunoff)[n], fixed=TRUE)){
			lake = 'superior';
		}
		else if(grepl('MiHuron',names(yRunoff)[n], fixed=TRUE)){
			lake = 'miHuron';
		}
		else if(grepl('Erie',names(yRunoff)[n], fixed=TRUE)){
			lake = 'erie';
		}
		else if(grepl('Ontario',names(yRunoff)[n], fixed=TRUE)){
			lake = 'ontario';
		}
		
		modelCode = paste(
			modelCode,
			'\t\t',names(yRunoff)[n],'[j] ~ dnorm(',names(yRunoff)[n],'Mean[j], ',names(yRunoff)[n],'Prec)\n',
			'\t\t',names(yRunoff)[n],'Mean[j] <- ', lake, 'Runoff[j] + ', names(yRunoff)[n],'Bias[m[j]]\n\n',
			sep=''
		);
	}
}

for(n in 1:length(names(yNBS))){
	lake = 'clair';
	
	modelCode = paste(
		modelCode,
		'\t\t',names(yNBS)[n],'[j] ~ dnorm(',names(yNBS)[n],'Mean[j], ',names(yNBS)[n],'Prec)\n',
		'\t\t',names(yNBS)[n],'Mean[j] <- ', lake, 'NBS[j] + ', names(yNBS)[n],'Bias[m[j]]\n\n',
		sep=''
	);
}


modelCode = paste(modelCode, '\t}',sep='')
modelCode = paste(modelCode,
'
	### Rolling Period Restraints
	for(k in rollPeriod:posteriorEndMonth){
		### SUPERIOR
		# OBSERVATION MODEL - STORAGE CHANGE
		ySuperiorRStore[k] ~ dnorm(superiorRStore[k], ySuperiorRStorePrec)    	
		
		superiorRStore[k] <- (
			sum(superiorPrecip[(k-rollPeriod+1):k])
			-sum(superiorEvap[(k-rollPeriod+1):k])
			+sum(superiorRunoff[(k-rollPeriod+1):k])
			-superiorOutflow_mm[k]
			+superiorDiversion_mm[k]
			+sum(superiorProcError[m[(k-rollPeriod+1):k]])
		)
		
		superiorOutflow_mm[k] <- sum(superiorOutflow[(k-rollPeriod+1):k]/supArea*1000*secondsInADay*dayVector[(k-rollPeriod+1):k])
		superiorDiversion_mm[k] <- sum(superiorDiversion[(k-rollPeriod+1):k]/supArea*1000*secondsInADay*dayVector[(k-rollPeriod+1):k])
		
		### MICHIGAN-HURON
		yMiHuronRStore[k] ~ dnorm(miHuronRStore[k], yMiHuronRStorePrec) 
		
		miHuronRStore[k] <- (
			sum(miHuronPrecip[(k-rollPeriod+1):k])
			-sum(miHuronEvap[(k-rollPeriod+1):k])
			+sum(miHuronRunoff[(k-rollPeriod+1):k])
			-miHuronOutflow_mm[k]
			+miHuronInflow_mm[k]
			-miHuronDiversion_mm[k]
			+sum(miHuronProcError[m[(k-rollPeriod+1):k]])
		)
		
		miHuronOutflow_mm[k] <- sum(miHuronOutflow[(k-rollPeriod+1):k]/mhgArea*1000*secondsInADay*dayVector[(k-rollPeriod+1):k])
		miHuronInflow_mm[k] <- sum(superiorOutflow[(k-rollPeriod+1):k]/mhgArea*1000*secondsInADay*dayVector[(k-rollPeriod+1):k])
		miHuronDiversion_mm[k] <- sum(miHuronDiversion[(k-rollPeriod+1):k]/mhgArea*1000*secondsInADay*dayVector[(k-rollPeriod+1):k])
		
		#### CLAIR 
		
		yClairRStore[k] ~ dnorm(clairRStore[k], yClairRStorePrec);
		
		clairRStore[k] <- (
			sum(clairNBS[(k-rollPeriod+1):k])
			+ sum(miHuronOutflow[(k-rollPeriod+1):k])
			- sum(clairOutflow[(k-rollPeriod+1):k])
			+ sum(clairProcError[m[(k-rollPeriod+1):k]])
		)
		
		### ERIE
		yErieRStore[k] ~ dnorm(erieRStore[k], yErieRStorePrec) 
		
		erieRStore[k] <- (			
			sum(eriePrecip[(k-rollPeriod+1):k])
			-sum(erieEvap[(k-rollPeriod+1):k])
			+sum(erieRunoff[(k-rollPeriod+1):k])
			-erieOutflow_mm[k]
			# DETROIT RIVER
			+erieInflow_mm[k]
			# WELLAND CANAL
			-erieDiversion_mm[k]
			+sum(erieProcError[m[(k-rollPeriod+1):k]])
		)
		
		erieOutflow_mm[k] <- sum(erieOutflow[(k-rollPeriod+1):k]/eriArea*1000*secondsInADay*dayVector[(k-rollPeriod+1):k])
		erieInflow_mm[k] <- sum(clairOutflow[(k-rollPeriod+1):k]/eriArea*1000*secondsInADay*dayVector[(k-rollPeriod+1):k])
		erieDiversion_mm[k] <- sum(erieDiversion[(k-rollPeriod+1):k]/eriArea*1000*secondsInADay*dayVector[(k-rollPeriod+1):k])
		
		### ONTARIO
		yOntarioRStore[k] ~ dnorm(ontarioRStore[k], yOntarioRStorePrec) 
		
		ontarioRStore[k] <- (
			sum(ontarioPrecip[(k-rollPeriod+1):k])
			-sum(ontarioEvap[(k-rollPeriod+1):k])
			+sum(ontarioRunoff[(k-rollPeriod+1):k])
			-ontarioOutflow_mm[k]
			+ontarioInflow_mm[k]
			+sum(ontarioProcError[m[(k-rollPeriod+1):k]])
		)
		
		ontarioOutflow_mm[k] <- sum(ontarioOutflow[(k-rollPeriod+1):k]/ontArea*1000*secondsInADay*dayVector[(k-rollPeriod+1):k])
		ontarioInflow_mm[k] <- sum(erieOutflow[(k-rollPeriod+1):k]/ontArea*1000*secondsInADay*dayVector[(k-rollPeriod+1):k]) + sum(erieDiversion[(k-rollPeriod+1):k]/ontArea*1000*secondsInADay*dayVector[(k-rollPeriod+1):k])
		
	}
	
	#############################
	## BIAS TERMS 
	#############################
	for (i in 1:12){
		superiorProcError[i] ~ dnorm(0,0.01)
		miHuronProcError[i] ~ dnorm(0,0.01)
		clairProcError[i] ~ dnorm(0,0.01)
		erieProcError[i] ~ dnorm(0,0.01)
		ontarioProcError[i] ~ dnorm(0,0.01)
		
		ySuperiorOutflow1Bias[i] ~ dnorm(0,0.00007)
		ySuperiorOutflow2Bias[i] ~ dnorm(0,0.00007)
		ySuperiorDiversion1Bias[i] ~ dnorm(0,0.03)
		yMiHuronOutflow1Bias[i] ~ dnorm(0,0.00002)
		yMiHuronOutflow2Bias[i] ~ dnorm(0,0.00002)
		yMiHuronDiversion1Bias[i] ~ dnorm(0,0.03)
		yClairOutflow1Bias[i] ~ dnorm(0,0.00002)
		yClairOutflow2Bias[i] ~ dnorm(0,0.00002)
		yErieOutflow1Bias[i] ~ dnorm(0,0.00007)
		yErieDiversion1Bias[i] ~ dnorm(0,0.03)
		yOntarioOutflow1Bias[i] ~ dnorm(0,0.00007)	
',
sep=''
)

###

if(length(names(yPrecip)) > 0){
	for(n in 1:length(names(yPrecip))){	
		modelCode = paste(
			modelCode,
			'\t\t',names(yPrecip)[n],'Bias[i] ~ dnorm(0,0.01)\n',
			sep=''
		);
	}
}

if(length(names(yEvap))){
	for(n in 1:length(names(yEvap))){	
		modelCode = paste(
			modelCode,
			'\t\t',names(yEvap)[n],'Bias[i] ~ dnorm(0,0.01)\n',
			sep=''
		);
	}
}

if(length(names(yRunoff))){
	for(n in 1:length(names(yRunoff))){	
		modelCode = paste(
			modelCode,
			'\t\t',names(yRunoff)[n],'Bias[i] ~ dnorm(0,0.01)\n',
			sep=''
		);
	}
}

for(n in 1:length(names(yNBS))){	
	modelCode = paste(
		modelCode,
		'\t\t',names(yNBS)[n],'Bias[i] ~ dnorm(0,0.00015625)\n',
		sep=''
	);
}

modelCode = paste(modelCode, '\t}',sep='')
modelCode = paste(modelCode,
'
	##############################
	## PRECISION FOR OBSERVATIONS
	##############################
	ySuperiorRStorePrec	  ~ dgamma(0.01,0.01)
	ySuperiorOutflow1Prec ~ dgamma(0.1,0.1)      
	ySuperiorOutflow2Prec ~ dgamma(0.1,0.1)
	ySuperiorDiversion1Prec ~ dgamma(0.1,0.1)
	
	yMiHuronRStorePrec	  ~ dgamma(0.01,0.01)
	yMiHuronOutflow1Prec ~ dgamma(0.1,0.1)      
	yMiHuronOutflow2Prec ~ dgamma(0.1,0.1)
	yMiHuronDiversion1Prec ~ dgamma(0.1,0.1)
	
	yClairRStorePrec   ~ dgamma(0.1,0.1)
	yClairOutflow1Prec ~ dgamma(0.1,0.1)
	yClairOutflow2Prec ~ dgamma(0.1,0.1)
	
	yErieRStorePrec	  ~ dgamma(0.01,0.01)  
	yErieOutflow1Prec ~ dgamma(0.1,0.1)  
	yErieDiversion1Prec ~ dgamma(0.1,0.1)
	
	yOntarioRStorePrec ~ dgamma(0.01,0.01)    
	yOntarioOutflow1Prec ~ dgamma(0.1,0.1)
',
sep=''
)

if(length(names(yPrecip)) > 0){
	for(n in 1:length(names(yPrecip))){	
		modelCode = paste(
			modelCode,
			'\t',names(yPrecip)[n],'Prec ~ dgamma(0.1,0.1)\n',
			sep=''
		);
	}
}

if(length(names(yEvap)) > 0){
	for(n in 1:length(names(yEvap))){	
		modelCode = paste(
			modelCode,
			'\t',names(yEvap)[n],'Prec ~ dgamma(0.1,0.1)\n',
			sep=''
		);
	}
}

if(length(names(yRunoff)) > 0){
	for(n in 1:length(names(yRunoff))){	
		modelCode = paste(
			modelCode,
			'\t',names(yRunoff)[n],'Prec ~ dgamma(0.1,0.1)\n',
			sep=''
		);
	}
}
	
for(n in 1:length(names(yNBS))){	
	modelCode = paste(
		modelCode,
		'\t',names(yNBS)[n],'Prec ~ dgamma(0.1,0.1)\n',
		sep=''
	);
}

### Posterior predictives for variables
modelCode = paste(modelCode,
'
	################################################################
	# POSTERIOR PREDICTIVE DRAWS FOR VERIFICATION (TODO FOR ALL LAKES, INC FLOW COMPUTATIONS)
	################################################################
	for(jp in posteriorStartMonth:posteriorEndMonth){		
	
		ySuperiorOutflow1PP[jp] ~ dnorm(ySuperiorOutflow1Mean[jp], ySuperiorOutflow1Prec)
		ySuperiorOutflow2PP[jp] ~ dnorm(ySuperiorOutflow2Mean[jp], ySuperiorOutflow2Prec)
		ySuperiorDiversion1PP[jp] ~ dnorm(ySuperiorDiversion1Mean[jp], ySuperiorDiversion1Prec)
		yMiHuronOutflow1PP[jp] ~ dnorm(yMiHuronOutflow1Mean[jp], yMiHuronOutflow1Prec)
		yMiHuronOutflow2PP[jp] ~ dnorm(yMiHuronOutflow2Mean[jp], yMiHuronOutflow2Prec)
		yMiHuronDiversion1PP[jp] ~ dnorm(yMiHuronDiversion1Mean[jp], yMiHuronDiversion1Prec)
		yClairOutflow1PP[jp] ~ dnorm(yClairOutflow1Mean[jp], yClairOutflow1Prec)
		yClairOutflow2PP[jp] ~ dnorm(yClairOutflow2Mean[jp], yClairOutflow2Prec)
		yErieOutflow1PP[jp] ~ dnorm(yErieOutflow1Mean[jp], yErieOutflow1Prec)
		yErieDiversion1PP[jp] ~ dnorm(yErieDiversion1Mean[jp], yErieDiversion1Prec)
		yOntarioOutflow1PP[jp] ~ dnorm(yOntarioOutflow1Mean[jp], yOntarioOutflow1Prec)
		
',
sep=''
);

if(length(names(yPrecip)) > 0){
	for(n in 1:length(names(yPrecip))){
		modelCode = paste(
			modelCode,
			'\t\t',names(yPrecip)[n],'PP[jp] ~ dnorm(',names(yPrecip)[n],'Mean[jp], ',names(yPrecip)[n],'Prec)\n',
			sep=''
		);
	}
}

if(length(names(yEvap)) > 0){
	for(n in 1:length(names(yEvap))){
		modelCode = paste(
			modelCode,
			'\t\t',names(yEvap)[n],'PP[jp] ~ dnorm(',names(yEvap)[n],'Mean[jp], ',names(yEvap)[n],'Prec)\n',
			sep=''
		);
	}
}

if(length(names(yRunoff)) > 0){
	for(n in 1:length(names(yRunoff))){
		modelCode = paste(
			modelCode,
			'\t\t',names(yRunoff)[n],'PP[jp] ~ dnorm(',names(yRunoff)[n],'Mean[jp], ',names(yRunoff)[n],'Prec)\n',
			sep=''
		);
	}
}

for(n in 1:length(names(yNBS))){
	modelCode = paste(
		modelCode,
		'\t\t',names(yNBS)[n],'PP[jp] ~ dnorm(',names(yNBS)[n],'Mean[jp], ',names(yNBS)[n],'Prec)\n',
		sep=''
	);
}

modelCode = paste(modelCode,
'
	}
	
	### BUDGET COMPONENTS
	
	for(jp in posteriorStartMonth:posteriorEndMonth){	
		# MONTH BY MONTH CHANGE IN STORAGE ANALYSIS
		
		ySuperiorDStorePP[jp] ~ dnorm(superiorDStore[jp], ySuperiorRStorePrec)
		
		superiorDStore[jp] <- (
			superiorPrecip[jp]
			-superiorEvap[jp]
			+superiorRunoff[jp]
			-superiorOutflowPP_mm[jp]
			+superiorDiversionPP_mm[jp]
			+superiorProcError[m[jp]]
		)
		
		superiorOutflowPP_mm[jp] <- superiorOutflow[jp]/supArea*1000*secondsInADay*dayVector[jp]
		superiorDiversionPP_mm[jp] <- superiorDiversion[jp]/supArea*1000*secondsInADay*dayVector[jp]
		
		yMiHuronDStorePP[jp] ~ dnorm(miHuronDStore[jp], yMiHuronRStorePrec)
		
		miHuronDStore[jp] <- (
			miHuronPrecip[jp]
			-miHuronEvap[jp]
			+miHuronRunoff[jp]
			+miHuronInflowPP_mm[jp]
			-miHuronOutflowPP_mm[jp]
			-miHuronDiversionPP_mm[jp]
			+miHuronProcError[m[jp]]
		)
		
		miHuronOutflowPP_mm[jp] <- miHuronOutflow[jp]/mhgArea*1000*secondsInADay*dayVector[jp]
		miHuronInflowPP_mm[jp] <- superiorOutflow[jp]/mhgArea*1000*secondsInADay*dayVector[jp]
		miHuronDiversionPP_mm[jp] <- miHuronDiversion[jp]/mhgArea*1000*secondsInADay*dayVector[jp]
		
		yClairDStorePP[jp] ~ dnorm(clairDStore[jp], yClairRStorePrec);
		
		clairDStore[jp] <- (
			clairNBS[jp]
			+ miHuronOutflow[jp]
			- clairOutflow[jp]
			+ clairProcError[m[jp]]
		)
		
		yErieDStorePP[jp] ~ dnorm(erieDStore[jp], yErieRStorePrec) 
		
		erieDStore[jp] <- (			
			eriePrecip[jp]
			-erieEvap[jp]
			+erieRunoff[jp]
			-erieOutflowPP_mm[jp]
			# DETROIT RIVER
			+erieInflowPP_mm[jp]
			# WELLAND CANAL
			-erieDiversionPP_mm[jp]
			+erieProcError[m[jp]]
		)
		
		erieOutflowPP_mm[jp] <- erieOutflow[jp]/eriArea*1000*secondsInADay*dayVector[jp]
		erieInflowPP_mm[jp] <- clairOutflow[jp]/eriArea*1000*secondsInADay*dayVector[jp]
		erieDiversionPP_mm[jp] <- erieDiversion[jp]/eriArea*1000*secondsInADay*dayVector[jp]
		
		### ONTARIO
		yOntarioDStorePP[jp] ~ dnorm(ontarioDStore[jp], yOntarioRStorePrec) 
		
		ontarioDStore[jp] <- (
			ontarioPrecip[jp]
			-ontarioEvap[jp]
			+ontarioRunoff[jp]
			-ontarioOutflowPP_mm[jp]
			+ontarioInflowPP_mm[jp]
			+ontarioProcError[m[jp]]
		)
		
		ontarioOutflowPP_mm[jp] <- ontarioOutflow[jp]/ontArea*1000*secondsInADay*dayVector[jp]
		ontarioInflowPP_mm[jp] <- erieOutflow[jp]/ontArea*1000*secondsInADay*dayVector[jp] + erieDiversion[jp]/ontArea*1000*secondsInADay*dayVector[jp]
	}
	
	### CUMULATIVE STORAGE ANALYSIS
	
	# 1 YEAR
	
	for(x in 12:posteriorEndMonth){
		ySuperiorR1YStorePP[x] ~ dnorm(superiorR1YStore[x], ySuperiorRStorePrec)
		
		superiorR1YStore[x] <- (
			sum(superiorPrecip[(x-12+1):x])
			-sum(superiorEvap[(x-12+1):x])
			+sum(superiorRunoff[(x-12+1):x])
			-superiorOutflowPPR1_mm[x]
			+superiorDiversionPPR1_mm[x]
			+sum(superiorProcError[m[(x-12+1):x]])
		)
		
		superiorOutflowPPR1_mm[x] <- sum(superiorOutflow[(x-12+1):x]/supArea*1000*secondsInADay*dayVector[(x-12+1):x])
		superiorDiversionPPR1_mm[x] <- sum(superiorDiversion[(x-12+1):x]/supArea*1000*secondsInADay*dayVector[(x-12+1):x])
		
		yMiHuronR1YStorePP[x] ~ dnorm(miHuronR1YStore[x], yMiHuronRStorePrec)
		
		miHuronR1YStore[x] <- (
			sum(miHuronPrecip[(x-12+1):x])
			-sum(miHuronEvap[(x-12+1):x])
			+sum(miHuronRunoff[(x-12+1):x])
			+miHuronInflowPPR1_mm[x]
			-miHuronOutflowPPR1_mm[x]
			-miHuronDiversionPPR1_mm[x]
			+sum(miHuronProcError[m[(x-12+1):x]])
		)
		
		miHuronOutflowPPR1_mm[x] <- sum(miHuronOutflow[(x-12+1):x]/mhgArea*1000*secondsInADay*dayVector[(x-12+1):x])
		miHuronInflowPPR1_mm[x] <- sum(superiorOutflow[(x-12+1):x]/mhgArea*1000*secondsInADay*dayVector[(x-12+1):x])
		miHuronDiversionPPR1_mm[x] <- sum(miHuronDiversion[(x-12+1):x]/mhgArea*1000*secondsInADay*dayVector[(x-12+1):x])
		
		yClairR1YStorePP[x] ~ dnorm(clairR1YStore[x], yClairRStorePrec);
		
		clairR1YStore[x] <- (
			sum(clairNBS[(x-12+1):x])
			+ sum(miHuronOutflow[(x-12+1):x])
			- sum(clairOutflow[(x-12+1):x])
			+ sum(clairProcError[m[(x-12+1):x]])
		)
		
		yErieR1YStorePP[x] ~ dnorm(erieR1YStore[x], yErieRStorePrec) 
		
		erieR1YStore[x] <- (			
			sum(eriePrecip[(x-12+1):x])
			-sum(erieEvap[(x-12+1):x])
			+sum(erieRunoff[(x-12+1):x])
			-erieOutflowPPR1_mm[x]
			# DETROIT RIVER
			+erieInflowPPR1_mm[x]
			# WELLAND CANAL
			-erieDiversionPPR1_mm[x]
			+sum(erieProcError[m[(x-12+1):x]])
		)
		
		erieOutflowPPR1_mm[x] <- sum(erieOutflow[(x-12+1):x]/eriArea*1000*secondsInADay*dayVector[(x-12+1):x])
		erieInflowPPR1_mm[x] <- sum(clairOutflow[(x-12+1):x]/eriArea*1000*secondsInADay*dayVector[(x-12+1):x])
		erieDiversionPPR1_mm[x] <- sum(erieDiversion[(x-12+1):x]/eriArea*1000*secondsInADay*dayVector[(x-12+1):x])
		
		### ONTARIO
		yOntarioR1YStorePP[x] ~ dnorm(ontarioR1YStore[x], yOntarioRStorePrec) 
		
		ontarioR1YStore[x] <- (
			sum(ontarioPrecip[(x-12+1):x])
			-sum(ontarioEvap[(x-12+1):x])
			+sum(ontarioRunoff[(x-12+1):x])
			-ontarioOutflowPPR1_mm[x]
			+ontarioInflowPPR1_mm[x]
			+sum(ontarioProcError[m[(x-12+1):x]])
		)
		
		ontarioOutflowPPR1_mm[x] <- sum(ontarioOutflow[(x-12+1):x]/ontArea*1000*secondsInADay*dayVector[(x-12+1):x])
		ontarioInflowPPR1_mm[x] <- sum(erieOutflow[(x-12+1):x]/ontArea*1000*secondsInADay*dayVector[(x-12+1):x]) + sum(erieDiversion[(x-12+1):x]/ontArea*1000*secondsInADay*dayVector[(x-12+1):x])
	}	
	
	# 5 YEAR
	
	for(z in 60:posteriorEndMonth){
		ySuperiorR5YStorePP[z] ~ dnorm(superiorR5YStore[z], ySuperiorRStorePrec)
		
		superiorR5YStore[z] <- (
			sum(superiorPrecip[(z-60+1):z])
			-sum(superiorEvap[(z-60+1):z])
			+sum(superiorRunoff[(z-60+1):z])
			-superiorOutflowPPR5_mm[z]
			+superiorDiversionPPR5_mm[z]
			+sum(superiorProcError[m[(z-60+1):z]])
		)
		
		superiorOutflowPPR5_mm[z] <- sum(superiorOutflow[(z-60+1):z]/supArea*1000*secondsInADay*dayVector[(z-60+1):z])
		superiorDiversionPPR5_mm[z] <- sum(superiorDiversion[(z-60+1):z]/supArea*1000*secondsInADay*dayVector[(z-60+1):z])
		
		yMiHuronR5YStorePP[z] ~ dnorm(miHuronR5YStore[z], yMiHuronRStorePrec)
		
		miHuronR5YStore[z] <- (
			sum(miHuronPrecip[(z-60+1):z])
			-sum(miHuronEvap[(z-60+1):z])
			+sum(miHuronRunoff[(z-60+1):z])
			+miHuronInflowPPR5_mm[z]
			-miHuronOutflowPPR5_mm[z]
			-miHuronDiversionPPR5_mm[z]
			+sum(miHuronProcError[m[(z-60+1):z]])
		)
		
		miHuronOutflowPPR5_mm[z] <- sum(miHuronOutflow[(z-60+1):z]/mhgArea*1000*secondsInADay*dayVector[(z-60+1):z])
		miHuronInflowPPR5_mm[z] <- sum(superiorOutflow[(z-60+1):z]/mhgArea*1000*secondsInADay*dayVector[(z-60+1):z])
		miHuronDiversionPPR5_mm[z] <- sum(miHuronDiversion[(z-60+1):z]/mhgArea*1000*secondsInADay*dayVector[(z-60+1):z])
		
		yClairR5YStorePP[z] ~ dnorm(clairR5YStore[z], yClairRStorePrec);
		
		clairR5YStore[z] <- (
			sum(clairNBS[(z-60+1):z])
			+ sum(miHuronOutflow[(z-60+1):z])
			- sum(clairOutflow[(z-60+1):z])
			+ sum(clairProcError[m[(z-60+1):z]])
		)
		
		yErieR5YStorePP[z] ~ dnorm(erieR5YStore[z], yErieRStorePrec) 
		
		erieR5YStore[z] <- (			
			sum(eriePrecip[(z-60+1):z])
			-sum(erieEvap[(z-60+1):z])
			+sum(erieRunoff[(z-60+1):z])
			-erieOutflowPPR5_mm[z]
			# DETROIT RIVER
			+erieInflowPPR5_mm[z]
			# WELLAND CANAL
			-erieDiversionPPR5_mm[z]
			+sum(erieProcError[m[(z-60+1):z]])
		)
		
		erieOutflowPPR5_mm[z] <- sum(erieOutflow[(z-60+1):z]/eriArea*1000*secondsInADay*dayVector[(z-60+1):z])
		erieInflowPPR5_mm[z] <- sum(clairOutflow[(z-60+1):z]/eriArea*1000*secondsInADay*dayVector[(z-60+1):z])
		erieDiversionPPR5_mm[z] <- sum(erieDiversion[(z-60+1):z]/eriArea*1000*secondsInADay*dayVector[(z-60+1):z])
		
		### ONTARIO
		yOntarioR5YStorePP[z] ~ dnorm(ontarioR5YStore[z], yOntarioRStorePrec) 
		
		ontarioR5YStore[z] <- (
			sum(ontarioPrecip[(z-60+1):z])
			-sum(ontarioEvap[(z-60+1):z])
			+sum(ontarioRunoff[(z-60+1):z])
			-ontarioOutflowPPR5_mm[z]
			+ontarioInflowPPR5_mm[z]
			+sum(ontarioProcError[m[(z-60+1):z]])
		)
		
		ontarioOutflowPPR5_mm[z] <- sum(ontarioOutflow[(z-60+1):z]/ontArea*1000*secondsInADay*dayVector[(z-60+1):z])
		ontarioInflowPPR5_mm[z] <- sum(erieOutflow[(z-60+1):z]/ontArea*1000*secondsInADay*dayVector[(z-60+1):z]) + sum(erieDiversion[(z-60+1):z]/ontArea*1000*secondsInADay*dayVector[(z-60+1):z])
	}
	
}
',
sep=''
)

paramsToMonitor <- c( 
	"superiorPrecip", "superiorEvap", "superiorRunoff", "superiorOutflow", "superiorDiversion",
	"superiorOutflow_mm", "superiorDiversion_mm",
	"superiorOutflowPP_mm", "superiorDiversionPP_mm",
	"miHuronPrecip", "miHuronEvap", "miHuronRunoff", "miHuronOutflow", "miHuronDiversion",
	"miHuronOutflow_mm", "miHuronInflow_mm", "miHuronDiversion_mm",
	"miHuronOutflowPP_mm", "miHuronInflowPP_mm", "miHuronDiversionPP_mm",
	"superiorProcError", "miHuronProcError",
	"superiorDStore", "miHuronDStore",
	"ySuperiorDStorePP", "yMiHuronDStorePP", 
	"superiorRStore", "miHuronRStore", 
	"ySuperiorOutflow1Bias", "ySuperiorOutflow2Bias",
	"ySuperiorDiversion1Bias",
	"yMiHuronOutflow1Bias", "yMiHuronOutflow2Bias",
	"yMiHuronDiversion1Bias",	
	"ySuperiorOutflow1Prec", "ySuperiorOutflow2Prec",
	"ySuperiorDiversion1Prec",
	"yMiHuronOutflow1Prec", "yMiHuronOutflow2Prec",
	"yMiHuronDiversion1Prec",
	"clairOutflow",
	"clairNBS",
	"clairDStore",
	"yClairDStorePP",
	"clairRStore",
	"clairProcError",
	"eriePrecip", "erieEvap", "erieRunoff", "erieOutflow", "erieDiversion",
	"erieOutflow_mm", "erieInflow_mm", "erieDiversion_mm",
	"erieOutflowPP_mm", "erieInflowPP_mm", "erieDiversionPP_mm",
	"ontarioPrecip", "ontarioEvap", "ontarioRunoff", "ontarioOutflow",
	"ontarioInflow_mm", "ontarioOutflow_mm",
	"ontarioInflowPP_mm", "ontarioOutflowPP_mm",
	"erieProcError", "ontarioProcError",
	"erieDStore", "ontarioDStore",
	"yErieDStorePP", "yOntarioDStorePP",
	"erieRStore", "ontarioRStore",
	"yClairOutflow1Bias", "yClairOutflow2Bias",
	"yErieOutflow1Bias",
	"yErieDiversion1Bias",
	"yOntarioOutflow1Bias", 	
	"yClairOutflow1Prec", "yClairOutflow2Prec",
	"yErieOutflow1Prec",
	"yErieDiversion1Prec",
	"yOntarioOutflow1Prec",
	"ySuperiorR1YStorePP", "yMiHuronR1YStorePP", "yClairR1YStorePP", "yErieR1YStorePP",	"yOntarioR1YStorePP",
	"ySuperiorR5YStorePP", "yMiHuronR5YStorePP", "yClairR5YStorePP", "yErieR5YStorePP",	"yOntarioR5YStorePP",
	"ySuperiorOutflow1PP", "ySuperiorOutflow2PP",	
	"ySuperiorDiversion1PP", "yMiHuronOutflow1PP",
	"yMiHuronOutflow2PP", "yMiHuronDiversion1PP",
	"yClairOutflow1PP",	"yClairOutflow2PP",
	"yErieOutflow1PP", 
	"yErieDiversion1PP",
	"yOntarioOutflow1PP",
	"ySuperiorRStorePrec",
	"yMiHuronRStorePrec",
	"yClairRStorePrec",
	"yErieRStorePrec",
	"yOntarioRStorePrec"
);

if(length(names(yPrecip)) > 0){
	for(n in 1:length(names(yPrecip))){
		paramsToMonitor = c(paramsToMonitor, paste(names(yPrecip)[n],'Bias', sep=''))
		paramsToMonitor = c(paramsToMonitor, paste(names(yPrecip)[n],'Prec', sep=''))
		paramsToMonitor = c(paramsToMonitor, paste(names(yPrecip)[n],'PP', sep=''))
	}
}

if(length(names(yEvap)) > 0){
	for(n in 1:length(names(yEvap))){
		paramsToMonitor = c(paramsToMonitor, paste(names(yEvap)[n],'Bias', sep=''))
		paramsToMonitor = c(paramsToMonitor, paste(names(yEvap)[n],'Prec', sep=''))
		paramsToMonitor = c(paramsToMonitor, paste(names(yEvap)[n],'PP', sep=''))
	}
}

if(length(names(yRunoff)) > 0){
	for(n in 1:length(names(yRunoff))){
		paramsToMonitor = c(paramsToMonitor, paste(names(yRunoff)[n],'Bias', sep=''))
		paramsToMonitor = c(paramsToMonitor, paste(names(yRunoff)[n],'Prec', sep=''))
		paramsToMonitor = c(paramsToMonitor, paste(names(yRunoff)[n],'PP', sep=''))
	}
}

for(n in 1:length(names(yNBS))){
	paramsToMonitor = c(paramsToMonitor, paste(names(yNBS)[n],'Bias', sep=''))
	paramsToMonitor = c(paramsToMonitor, paste(names(yNBS)[n],'Prec', sep=''))
	paramsToMonitor = c(paramsToMonitor, paste(names(yNBS)[n],'PP', sep=''))
}

### WRITE MODEL TO FILE
modOut = file(paste('L2SWBM_ALL_',rollPeriod,'FF_',modelSuffix,'.bug.r', sep=''), 'w');
cat(modelCode, file=modOut)
close(modOut)

### RUN MODEL
cat(paste('ALL LAKES, ',rollPeriod,' ROLL, FIXED PE, FIXED ETA, 3 CHAINS, ',iters,' ITERATIONS\n\n', sep=''));

date();
startTime = proc.time()[3];

cat('ADAPTING SAMPLER TO MODEL...')

jMod = jags.model(
	file = paste('L2SWBM_ALL_',rollPeriod,'FF_',modelSuffix,'.bug.r', sep=''),
	data = inputDataCoreJAGS,
	n.chains = 3
);
isAdapted = adapt(jMod);
while(!isAdapted){
	cat('More adapting...\n')
	adapt(jMod, 100)
}
gc();

# UPDATE FOR BURNIN
cat('UPDATE STEP (BURNIN)...\n')
update(jMod, halfIters)
gc();

# SAMPLE
cat('SAMPLING... (WITH THINNING)\n')
jSample = coda.samples(jMod, paramsToMonitor, halfIters, ceiling(halfIters/1000), na.rm=TRUE)

sampleEndTime = proc.time()[3] - startTime;

gc();

cat('COMPUTING STATS...\n')
jSumStats = summary(jSample)
jSumStats_MSD = jSumStats$statistics[,1:2]
jSumStats_Q = jSumStats$quantiles
jSumEff = effectiveSize(jSample)
gc();

# GET R-HATS
#cat('GETTING GELMAN-RUBIN STAT (COMPUTATIONALLY EXPENSIVE)...\n')
#jRHat = gelman.diag(jSample, multivariate=FALSE)
#jRHatEsts = jRHat$psrf

### Compose jSum
# Ensure row order

rn = rownames(jSumStats_MSD)
ro_MSD = match(rn, rownames(jSumStats_MSD))
ro_Q = match(rn, rownames(jSumStats_Q))
ro_eff = match(rn, names(jSumEff))
#ro_rhat = match(rn, rownames(jRHatEsts))

jSum = cbind(
	jSumStats_MSD,
	jSumStats_Q[ro_Q,],
	#jRHatEsts[ro_rhat,],
	jSumEff[ro_eff]
);

#colnames(jSum)[10] = 'n.eff'
colnames(jSum)[8] = 'n.eff'

date();
endTime = proc.time()[3] - startTime;
sampleToSumTime = endTime - sampleEndTime;
gc();

cat('SAVING WORK...\n')




