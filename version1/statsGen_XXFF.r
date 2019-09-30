# BALANCE CLOSURE ASSESSMENT

ySuperiorDStore = superiorDS_A[,3]
yMiHuronDStore = miHuronDS_A[,3]
yErieDStore = erieDS_A[,3]
yOntarioDStore = ontarioDS_A[,3]
yClairDStore = clairDS_A[,3]

superiorDStore = jSample[,paste('ySuperiorDStorePP[',1:posteriorEndMonth,']', sep='')]
miHuronDStore = jSample[,paste('yMiHuronDStorePP[',1:posteriorEndMonth,']', sep='')]
erieDStore = jSample[,paste('yErieDStorePP[',1:posteriorEndMonth,']', sep='')]
ontarioDStore = jSample[,paste('yOntarioDStorePP[',1:posteriorEndMonth,']', sep='')]
clairDStore = jSample[,paste('yClairDStorePP[',1:posteriorEndMonth,']', sep='')]

superiorDStoreMean = apply(as.matrix(superiorDStore), 2, mean)
superiorDStore025 = apply(as.matrix(superiorDStore), 2, quantile, probs=c(0.025))
superiorDStore975 = apply(as.matrix(superiorDStore), 2, quantile, probs=c(0.975))

miHuronDStoreMean = apply(as.matrix(miHuronDStore), 2, mean)
miHuronDStore025 = apply(as.matrix(miHuronDStore), 2, quantile, probs=c(0.025))
miHuronDStore975 = apply(as.matrix(miHuronDStore), 2, quantile, probs=c(0.975))

erieDStoreMean = apply(as.matrix(erieDStore), 2, mean)
erieDStore025 = apply(as.matrix(erieDStore), 2, quantile, probs=c(0.025))
erieDStore975 = apply(as.matrix(erieDStore), 2, quantile, probs=c(0.975))

ontarioDStoreMean = apply(as.matrix(ontarioDStore), 2, mean)
ontarioDStore025 = apply(as.matrix(ontarioDStore), 2, quantile, probs=c(0.025))
ontarioDStore975 = apply(as.matrix(ontarioDStore), 2, quantile, probs=c(0.975))

clairDStoreMean = apply(as.matrix(clairDStore), 2, mean)
clairDStore025 = apply(as.matrix(clairDStore), 2, quantile, probs=c(0.025))
clairDStore975 = apply(as.matrix(clairDStore), 2, quantile, probs=c(0.975))

### 1 Month Closing Assessment

superiorDStoreClosure = sum(ySuperiorDStore <= superiorDStore975 & ySuperiorDStore >= superiorDStore025)
superiorDStoreClosureRate = superiorDStoreClosure/posteriorEndMonth

miHuronDStoreClosure = sum(yMiHuronDStore <= miHuronDStore975 & yMiHuronDStore >= miHuronDStore025)
miHuronDStoreClosureRate = miHuronDStoreClosure/posteriorEndMonth

erieDStoreClosure = sum(yErieDStore <= erieDStore975 & yErieDStore >= erieDStore025)
erieDStoreClosureRate = erieDStoreClosure/posteriorEndMonth

ontarioDStoreClosure = sum(yOntarioDStore <= ontarioDStore975 & yOntarioDStore >= ontarioDStore025)
ontarioDStoreClosureRate = ontarioDStoreClosure/posteriorEndMonth

clairDStoreClosure = sum(yClairDStore <= clairDStore975 & yClairDStore >= clairDStore025)
clairDStoreClosureRate = clairDStoreClosure/posteriorEndMonth

### 1 Year Closing Assessment

rPer = 12;
ySuperiorRStore_1Y = rep(NA, posteriorEndMonth-11)
yMiHuronRStore_1Y = rep(NA, posteriorEndMonth-11)
yErieRStore_1Y = rep(NA, posteriorEndMonth-11)
yOntarioRStore_1Y = rep(NA, posteriorEndMonth-11)
yClairRStore_1Y = rep(NA, posteriorEndMonth-11)
for(rp in rPer:posteriorEndMonth){
	ySuperiorRStore_1Y[rp-11] = sum(ySuperiorDStore[(rp-rPer+1):rp]);
	yMiHuronRStore_1Y[rp-11] = sum(yMiHuronDStore[(rp-rPer+1):rp]);
	yErieRStore_1Y[rp-11] = sum(yErieDStore[(rp-rPer+1):rp]);
	yOntarioRStore_1Y[rp-11] = sum(yOntarioDStore[(rp-rPer+1):rp]);
	yClairRStore_1Y[rp-11] = sum(yClairDStore[(rp-rPer+1):rp]);
}

superiorR1YStore = jSample[,paste('ySuperiorR1YStorePP[',12:posteriorEndMonth,']', sep='')]
miHuronR1YStore = jSample[,paste('yMiHuronR1YStorePP[',12:posteriorEndMonth,']', sep='')]
erieR1YStore = jSample[,paste('yErieR1YStorePP[',12:posteriorEndMonth,']', sep='')]
ontarioR1YStore = jSample[,paste('yOntarioR1YStorePP[',12:posteriorEndMonth,']', sep='')]
clairR1YStore = jSample[,paste('yClairR1YStorePP[',12:posteriorEndMonth,']', sep='')]

superiorRStoreMean_1Y = apply(as.matrix(superiorR1YStore), 2, mean, na.rm=TRUE)
miHuronRStoreMean_1Y = apply(as.matrix(miHuronR1YStore), 2, mean, na.rm=TRUE)
erieRStoreMean_1Y = apply(as.matrix(erieR1YStore), 2, mean, na.rm=TRUE)
ontarioRStoreMean_1Y = apply(as.matrix(ontarioR1YStore), 2, mean, na.rm=TRUE)
clairRStoreMean_1Y = apply(as.matrix(clairR1YStore), 2, mean, na.rm=TRUE)

superiorRStore025_1Y = apply(as.matrix(superiorR1YStore), 2, quantile, probs=c(0.025), na.rm=TRUE)
miHuronRStore025_1Y = apply(as.matrix(miHuronR1YStore), 2, quantile, probs=c(0.025), na.rm=TRUE)
erieRStore025_1Y = apply(as.matrix(erieR1YStore), 2, quantile, probs=c(0.025), na.rm=TRUE)
ontarioRStore025_1Y = apply(as.matrix(ontarioR1YStore), 2, quantile, probs=c(0.025), na.rm=TRUE)
clairRStore025_1Y = apply(as.matrix(clairR1YStore), 2, quantile, probs=c(0.025), na.rm=TRUE)

superiorRStore975_1Y = apply(as.matrix(superiorR1YStore), 2, quantile, probs=c(0.975), na.rm=TRUE)
miHuronRStore975_1Y = apply(as.matrix(miHuronR1YStore), 2, quantile, probs=c(0.975), na.rm=TRUE)
erieRStore975_1Y = apply(as.matrix(erieR1YStore), 2, quantile, probs=c(0.975), na.rm=TRUE)
ontarioRStore975_1Y = apply(as.matrix(ontarioR1YStore), 2, quantile, probs=c(0.975), na.rm=TRUE)
clairRStore975_1Y = apply(as.matrix(clairR1YStore), 2, quantile, probs=c(0.975), na.rm=TRUE)

superiorRStore_1YClosure = sum(ySuperiorRStore_1Y <= superiorRStore975_1Y & ySuperiorRStore_1Y >= superiorRStore025_1Y, na.rm=TRUE)
superiorRStore_1YClosureRate = superiorRStore_1YClosure/(posteriorEndMonth-11)

miHuronRStore_1YClosure = sum(yMiHuronRStore_1Y <= miHuronRStore975_1Y & yMiHuronRStore_1Y >= miHuronRStore025_1Y, na.rm=TRUE)
miHuronRStore_1YClosureRate = miHuronRStore_1YClosure/(posteriorEndMonth-11)

erieRStore_1YClosure = sum(yErieRStore_1Y <= erieRStore975_1Y & yErieRStore_1Y >= erieRStore025_1Y, na.rm=TRUE)
erieRStore_1YClosureRate = erieRStore_1YClosure/(posteriorEndMonth-11)

ontarioRStore_1YClosure = sum(yOntarioRStore_1Y <= ontarioRStore975_1Y & yOntarioRStore_1Y >= ontarioRStore025_1Y, na.rm=TRUE)
ontarioRStore_1YClosureRate = ontarioRStore_1YClosure/(posteriorEndMonth-11)

clairRStore_1YClosure = sum(yClairRStore_1Y <= clairRStore975_1Y & yClairRStore_1Y >= clairRStore025_1Y, na.rm=TRUE)
clairRStore_1YClosureRate = clairRStore_1YClosure/(posteriorEndMonth-11)

### 5-Year Closing Assessment

rPer = 60;
ySuperiorRStore_5Y = rep(NA, posteriorEndMonth-59)
yMiHuronRStore_5Y = rep(NA, posteriorEndMonth-59)
yErieRStore_5Y = rep(NA, posteriorEndMonth-59)
yOntarioRStore_5Y = rep(NA, posteriorEndMonth-59)
yClairRStore_5Y = rep(NA, posteriorEndMonth-59)
for(rp in rPer:posteriorEndMonth){
	ySuperiorRStore_5Y[rp-59] = sum(ySuperiorDStore[(rp-rPer+1):rp]);
	yMiHuronRStore_5Y[rp-59] = sum(yMiHuronDStore[(rp-rPer+1):rp]);
	yErieRStore_5Y[rp-59] = sum(yErieDStore[(rp-rPer+1):rp]);
	yOntarioRStore_5Y[rp-59] = sum(yOntarioDStore[(rp-rPer+1):rp]);
	yClairRStore_5Y[rp-59] = sum(yClairDStore[(rp-rPer+1):rp]);
}

superiorR5YStore = jSample[,paste('ySuperiorR5YStorePP[',60:posteriorEndMonth,']', sep='')]
miHuronR5YStore = jSample[,paste('yMiHuronR5YStorePP[',60:posteriorEndMonth,']', sep='')]
erieR5YStore = jSample[,paste('yErieR5YStorePP[',60:posteriorEndMonth,']', sep='')]
ontarioR5YStore = jSample[,paste('yOntarioR5YStorePP[',60:posteriorEndMonth,']', sep='')]
clairR5YStore = jSample[,paste('yClairR5YStorePP[',60:posteriorEndMonth,']', sep='')]

superiorRStoreMean_5Y = apply(as.matrix(superiorR5YStore), 2, mean, na.rm=TRUE)
miHuronRStoreMean_5Y = apply(as.matrix(miHuronR5YStore), 2, mean, na.rm=TRUE)
erieRStoreMean_5Y = apply(as.matrix(erieR5YStore), 2, mean, na.rm=TRUE)
ontarioRStoreMean_5Y = apply(as.matrix(ontarioR5YStore), 2, mean, na.rm=TRUE)
clairRStoreMean_5Y = apply(as.matrix(clairR5YStore), 2, mean, na.rm=TRUE)

superiorRStore025_5Y = apply(as.matrix(superiorR5YStore), 2, quantile, probs=c(0.025), na.rm=TRUE)
miHuronRStore025_5Y = apply(as.matrix(miHuronR5YStore), 2, quantile, probs=c(0.025), na.rm=TRUE)
erieRStore025_5Y = apply(as.matrix(erieR5YStore), 2, quantile, probs=c(0.025), na.rm=TRUE)
ontarioRStore025_5Y = apply(as.matrix(ontarioR5YStore), 2, quantile, probs=c(0.025), na.rm=TRUE)
clairRStore025_5Y = apply(as.matrix(clairR5YStore), 2, quantile, probs=c(0.025), na.rm=TRUE)

superiorRStore975_5Y = apply(as.matrix(superiorR5YStore), 2, quantile, probs=c(0.975), na.rm=TRUE)
miHuronRStore975_5Y = apply(as.matrix(miHuronR5YStore), 2, quantile, probs=c(0.975), na.rm=TRUE)
erieRStore975_5Y = apply(as.matrix(erieR5YStore), 2, quantile, probs=c(0.975), na.rm=TRUE)
ontarioRStore975_5Y = apply(as.matrix(ontarioR5YStore), 2, quantile, probs=c(0.975), na.rm=TRUE)
clairRStore975_5Y = apply(as.matrix(clairR5YStore), 2, quantile, probs=c(0.975), na.rm=TRUE)

superiorRStore_5YClosure = sum(ySuperiorRStore_5Y <= superiorRStore975_5Y & ySuperiorRStore_5Y >= superiorRStore025_5Y, na.rm=TRUE)
superiorRStore_5YClosureRate = superiorRStore_5YClosure/(posteriorEndMonth-59)

miHuronRStore_5YClosure = sum(yMiHuronRStore_5Y <= miHuronRStore975_5Y & yMiHuronRStore_5Y >= miHuronRStore025_5Y, na.rm=TRUE)
miHuronRStore_5YClosureRate = miHuronRStore_5YClosure/(posteriorEndMonth-59)

erieRStore_5YClosure = sum(yErieRStore_5Y <= erieRStore975_5Y & yErieRStore_5Y >= erieRStore025_5Y, na.rm=TRUE)
erieRStore_5YClosureRate = erieRStore_5YClosure/(posteriorEndMonth-59)

ontarioRStore_5YClosure = sum(yOntarioRStore_5Y <= ontarioRStore975_5Y & yOntarioRStore_5Y >= ontarioRStore025_5Y, na.rm=TRUE)
ontarioRStore_5YClosureRate = ontarioRStore_5YClosure/(posteriorEndMonth-59)

clairRStore_5YClosure = sum(yClairRStore_5Y <= clairRStore975_5Y & yClairRStore_5Y >= clairRStore025_5Y, na.rm=TRUE)
clairRStore_5YClosureRate = clairRStore_5YClosure/(posteriorEndMonth-59)


### FINISH

cRates = rbind(
	c(superiorDStoreClosureRate, miHuronDStoreClosureRate, erieDStoreClosureRate, ontarioDStoreClosureRate, clairDStoreClosureRate),
	c(superiorRStore_1YClosureRate, miHuronRStore_1YClosureRate, erieRStore_1YClosureRate, ontarioRStore_1YClosureRate, clairRStore_1YClosureRate),
	c(superiorRStore_5YClosureRate, miHuronRStore_5YClosureRate, erieRStore_5YClosureRate, ontarioRStore_5YClosureRate, clairRStore_5YClosureRate)
);

write.table(cRates, paste('L2SWBM_ALL_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'_Closure.csv', sep=''), sep=',', quote=FALSE, row.names=c('Monthly', '1-Year', '5-Year'), col.names=c(',Superior', 'MI-Huron', 'Erie', 'Ontario', 'St. Clair'));
