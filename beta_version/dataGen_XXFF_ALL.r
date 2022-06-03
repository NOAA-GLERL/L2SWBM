### DATA GENERATOR FOR THE L2SWBM

write.table(jSum, paste('L2SWBM_ALL_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'_STATS.csv', sep=''), sep=',', quote=FALSE);

pTime = cbind(yearVector, m);

superiorPrecip025 = jSum[paste('superiorPrecip[',1:nMonths,']', sep=''),3];
superiorPrecipMedian = jSum[paste('superiorPrecip[',1:nMonths,']', sep=''),5];
superiorPrecip975 = jSum[paste('superiorPrecip[',1:nMonths,']', sep=''),7];
superiorPrecip = cbind(pTime, superiorPrecipMedian, superiorPrecip025, superiorPrecip975);
write.table(format(superiorPrecip, digits=3), paste('superiorPrecip_L2SWBM_ALL_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.csv',sep=''), append=FALSE, quote=FALSE, sep=',', row.names=FALSE, col.names=c('Year','Month','Median','2.5 Percentile', '97.5 Percentile'));

superiorEvap025 = jSum[paste('superiorEvap[',1:nMonths,']', sep=''),3];
superiorEvapMedian = jSum[paste('superiorEvap[',1:nMonths,']', sep=''),5];
superiorEvap975 = jSum[paste('superiorEvap[',1:nMonths,']', sep=''),7];
superiorEvap = cbind(pTime, superiorEvapMedian, superiorEvap025, superiorEvap975);
write.table(format(superiorEvap, digits=5), paste('superiorEvap_L2SWBM_ALL_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.csv',sep=''), append=FALSE, quote=FALSE, sep=',', row.names=FALSE, col.names=c('Year','Month','Median','2.5 Percentile', '97.5 Percentile'));

superiorRunoff025 = jSum[paste('superiorRunoff[',1:nMonths,']', sep=''),3];
superiorRunoffMedian = jSum[paste('superiorRunoff[',1:nMonths,']', sep=''),5];
superiorRunoff975 = jSum[paste('superiorRunoff[',1:nMonths,']', sep=''),7];
superiorRunoff = cbind(pTime, superiorRunoffMedian, superiorRunoff025, superiorRunoff975);
write.table(format(superiorRunoff, digits=3), paste('superiorRunoff_L2SWBM_ALL_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.csv',sep=''), append=FALSE, quote=FALSE, sep=',', row.names=FALSE, col.names=c('Year','Month','Median','2.5 Percentile', '97.5 Percentile'));

superiorOutflow025 = jSum[paste('superiorOutflow[',1:nMonths,']', sep=''),3];
superiorOutflowMedian = jSum[paste('superiorOutflow[',1:nMonths,']', sep=''),5];
superiorOutflow975 = jSum[paste('superiorOutflow[',1:nMonths,']', sep=''),7];
superiorOutflow = cbind(pTime, superiorOutflowMedian, superiorOutflow025, superiorOutflow975);
write.table(format(superiorOutflow, digits=3), paste('superiorOutflow_L2SWBM_ALL_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.csv',sep=''), append=FALSE, quote=FALSE, sep=',', row.names=FALSE, col.names=c('Year','Month','Median','2.5 Percentile', '97.5 Percentile'));

superiorDiversion025 = jSum[paste('superiorDiversion[',1:nMonths,']', sep=''),3];
superiorDiversionMedian = jSum[paste('superiorDiversion[',1:nMonths,']', sep=''),5];
superiorDiversion975 = jSum[paste('superiorDiversion[',1:nMonths,']', sep=''),7];
superiorDiversion = cbind(pTime, superiorDiversionMedian, superiorDiversion025, superiorDiversion975);
write.table(format(superiorDiversion, digits=3), paste('superiorDiversion_L2SWBM_ALL_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.csv',sep=''), append=FALSE, quote=FALSE, sep=',', row.names=FALSE, col.names=c('Year','Month','Median','2.5 Percentile', '97.5 Percentile'));

superiorDStore025 = jSum[paste('superiorDStore[',1:nMonths,']', sep=''),3];
superiorDStoreMedian = jSum[paste('superiorDStore[',1:nMonths,']', sep=''),5];
superiorDStore975 = jSum[paste('superiorDStore[',1:nMonths,']', sep=''),7];
superiorDStore = cbind(pTime, superiorDStoreMedian, superiorDStore025, superiorDStore975);
write.table(format(superiorDStore, digits=3), paste('superiorDStore_L2SWBM_ALL_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.csv',sep=''), append=FALSE, quote=FALSE, sep=',', row.names=FALSE, col.names=c('Year','Month','Median','2.5 Percentile', '97.5 Percentile'));

ySuperiorDStore025_PP = jSum[paste('ySuperiorDStorePP[',1:nMonths,']', sep=''),3];
ySuperiorDStoreMedian_PP = jSum[paste('ySuperiorDStorePP[',1:nMonths,']', sep=''),5];
ySuperiorDStore975_PP = jSum[paste('ySuperiorDStorePP[',1:nMonths,']', sep=''),7];
ySuperiorDStore_PP = cbind(pTime, ySuperiorDStoreMedian_PP, ySuperiorDStore025_PP, ySuperiorDStore975_PP);
write.table(format(ySuperiorDStore_PP, digits=3), paste('ySuperiorDStorePP_L2SWBM_ALL_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.csv',sep=''), append=FALSE, quote=FALSE, sep=',', row.names=FALSE, col.names=c('Year','Month','Median','2.5 Percentile', '97.5 Percentile'));

miHuronPrecip025 = jSum[paste('miHuronPrecip[',1:nMonths,']', sep=''),3];
miHuronPrecipMedian = jSum[paste('miHuronPrecip[',1:nMonths,']', sep=''),5];
miHuronPrecip975 = jSum[paste('miHuronPrecip[',1:nMonths,']', sep=''),7];
miHuronPrecip = cbind(pTime, miHuronPrecipMedian, miHuronPrecip025, miHuronPrecip975);
write.table(format(miHuronPrecip, digits=3), paste('miHuronPrecip_L2SWBM_ALL_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.csv',sep=''), append=FALSE, quote=FALSE, sep=',', row.names=FALSE, col.names=c('Year','Month','Median','2.5 Percentile', '97.5 Percentile'));

miHuronEvap025 = jSum[paste('miHuronEvap[',1:nMonths,']', sep=''),3];
miHuronEvapMedian = jSum[paste('miHuronEvap[',1:nMonths,']', sep=''),5];
miHuronEvap975 = jSum[paste('miHuronEvap[',1:nMonths,']', sep=''),7];
miHuronEvap = cbind(pTime, miHuronEvapMedian, miHuronEvap025, miHuronEvap975);
write.table(format(miHuronEvap, digits=5), paste('miHuronEvap_L2SWBM_ALL_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.csv',sep=''), append=FALSE, quote=FALSE, sep=',', row.names=FALSE, col.names=c('Year','Month','Median','2.5 Percentile', '97.5 Percentile'));

miHuronRunoff025 = jSum[paste('miHuronRunoff[',1:nMonths,']', sep=''),3];
miHuronRunoffMedian = jSum[paste('miHuronRunoff[',1:nMonths,']', sep=''),5];
miHuronRunoff975 = jSum[paste('miHuronRunoff[',1:nMonths,']', sep=''),7];
miHuronRunoff = cbind(pTime, miHuronRunoffMedian, miHuronRunoff025, miHuronRunoff975);
write.table(format(miHuronRunoff, digits=3), paste('miHuronRunoff_L2SWBM_ALL_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.csv',sep=''), append=FALSE, quote=FALSE, sep=',', row.names=FALSE, col.names=c('Year','Month','Median','2.5 Percentile', '97.5 Percentile'));

miHuronOutflow025 = jSum[paste('miHuronOutflow[',1:nMonths,']', sep=''),3];
miHuronOutflowMedian = jSum[paste('miHuronOutflow[',1:nMonths,']', sep=''),5];
miHuronOutflow975 = jSum[paste('miHuronOutflow[',1:nMonths,']', sep=''),7];
miHuronOutflow = cbind(pTime, miHuronOutflowMedian, miHuronOutflow025, miHuronOutflow975);
write.table(format(miHuronOutflow, digits=3), paste('miHuronOutflow_L2SWBM_ALL_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.csv',sep=''), append=FALSE, quote=FALSE, sep=',', row.names=FALSE, col.names=c('Year','Month','Median','2.5 Percentile', '97.5 Percentile'));

miHuronDiversion025 = jSum[paste('miHuronDiversion[',1:nMonths,']', sep=''),3];
miHuronDiversionMedian = jSum[paste('miHuronDiversion[',1:nMonths,']', sep=''),5];
miHuronDiversion975 = jSum[paste('miHuronDiversion[',1:nMonths,']', sep=''),7];
miHuronDiversion = cbind(pTime, miHuronDiversionMedian, miHuronDiversion025, miHuronDiversion975);
write.table(format(miHuronDiversion, digits=3), paste('miHuronDiversion_L2SWBM_ALL_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.csv',sep=''), append=FALSE, quote=FALSE, sep=',', row.names=FALSE, col.names=c('Year','Month','Median','2.5 Percentile', '97.5 Percentile'));


miHuronDStore025 = jSum[paste('miHuronDStore[',1:nMonths,']', sep=''),3];
miHuronDStoreMedian = jSum[paste('miHuronDStore[',1:nMonths,']', sep=''),5];
miHuronDStore975 = jSum[paste('miHuronDStore[',1:nMonths,']', sep=''),7];
miHuronDStore = cbind(pTime, miHuronDStoreMedian, miHuronDStore025, miHuronDStore975);
write.table(format(miHuronDStore, digits=3), paste('miHuronDStore_L2SWBM_ALL_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.csv',sep=''), append=FALSE, quote=FALSE, sep=',', row.names=FALSE, col.names=c('Year','Month','Median','2.5 Percentile', '97.5 Percentile'));

yMiHuronDStore025_PP = jSum[paste('yMiHuronDStorePP[',1:nMonths,']', sep=''),3];
yMiHuronDStoreMedian_PP = jSum[paste('yMiHuronDStorePP[',1:nMonths,']', sep=''),5];
yMiHuronDStore975_PP = jSum[paste('yMiHuronDStorePP[',1:nMonths,']', sep=''),7];
yMiHuronDStore_PP = cbind(pTime, yMiHuronDStoreMedian_PP, yMiHuronDStore025_PP, yMiHuronDStore975_PP);
write.table(format(yMiHuronDStore_PP, digits=3), paste('yMiHuronDStorePP_L2SWBM_ALL_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.csv',sep=''), append=FALSE, quote=FALSE, sep=',', row.names=FALSE, col.names=c('Year','Month','Median','2.5 Percentile', '97.5 Percentile'));

eriePrecip025 = jSum[paste('eriePrecip[',1:nMonths,']', sep=''),3];
eriePrecipMedian = jSum[paste('eriePrecip[',1:nMonths,']', sep=''),5];
eriePrecip975 = jSum[paste('eriePrecip[',1:nMonths,']', sep=''),7];
eriePrecip = cbind(pTime, eriePrecipMedian, eriePrecip025, eriePrecip975);
write.table(format(eriePrecip, digits=3), paste('eriePrecip_L2SWBM_ALL_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.csv',sep=''), append=FALSE, quote=FALSE, sep=',', row.names=FALSE, col.names=c('Year','Month','Median','2.5 Percentile', '97.5 Percentile'));

erieEvap025 = jSum[paste('erieEvap[',1:nMonths,']', sep=''),3];
erieEvapMedian = jSum[paste('erieEvap[',1:nMonths,']', sep=''),5];
erieEvap975 = jSum[paste('erieEvap[',1:nMonths,']', sep=''),7];
erieEvap = cbind(pTime, erieEvapMedian, erieEvap025, erieEvap975);
write.table(format(erieEvap, digits=5), paste('erieEvap_L2SWBM_ALL_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.csv',sep=''), append=FALSE, quote=FALSE, sep=',', row.names=FALSE, col.names=c('Year','Month','Median','2.5 Percentile', '97.5 Percentile'));

erieRunoff025 = jSum[paste('erieRunoff[',1:nMonths,']', sep=''),3];
erieRunoffMedian = jSum[paste('erieRunoff[',1:nMonths,']', sep=''),5];
erieRunoff975 = jSum[paste('erieRunoff[',1:nMonths,']', sep=''),7];
erieRunoff = cbind(pTime, erieRunoffMedian, erieRunoff025, erieRunoff975);
write.table(format(erieRunoff, digits=3), paste('erieRunoff_L2SWBM_ALL_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.csv',sep=''), append=FALSE, quote=FALSE, sep=',', row.names=FALSE, col.names=c('Year','Month','Median','2.5 Percentile', '97.5 Percentile'));

erieOutflow025 = jSum[paste('erieOutflow[',1:nMonths,']', sep=''),3];
erieOutflowMedian = jSum[paste('erieOutflow[',1:nMonths,']', sep=''),5];
erieOutflow975 = jSum[paste('erieOutflow[',1:nMonths,']', sep=''),7];
erieOutflow = cbind(pTime, erieOutflowMedian, erieOutflow025, erieOutflow975);
write.table(format(erieOutflow, digits=3), paste('erieOutflow_L2SWBM_ALL_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.csv',sep=''), append=FALSE, quote=FALSE, sep=',', row.names=FALSE, col.names=c('Year','Month','Median','2.5 Percentile', '97.5 Percentile'));

erieDiversion025 = jSum[paste('erieDiversion[',1:nMonths,']', sep=''),3];
erieDiversionMedian = jSum[paste('erieDiversion[',1:nMonths,']', sep=''),5];
erieDiversion975 = jSum[paste('erieDiversion[',1:nMonths,']', sep=''),7];
erieDiversion = cbind(pTime, erieDiversionMedian, erieDiversion025, erieDiversion975);
write.table(format(erieDiversion, digits=3), paste('erieDiversion_L2SWBM_ALL_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.csv',sep=''), append=FALSE, quote=FALSE, sep=',', row.names=FALSE, col.names=c('Year','Month','Median','2.5 Percentile', '97.5 Percentile'));

erieDStore025 = jSum[paste('erieDStore[',1:nMonths,']', sep=''),3];
erieDStoreMedian = jSum[paste('erieDStore[',1:nMonths,']', sep=''),5];
erieDStore975 = jSum[paste('erieDStore[',1:nMonths,']', sep=''),7];
erieDStore = cbind(pTime, erieDStoreMedian, erieDStore025, erieDStore975);
write.table(format(erieDStore, digits=3), paste('erieDStore_L2SWBM_ALL_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.csv',sep=''), append=FALSE, quote=FALSE, sep=',', row.names=FALSE, col.names=c('Year','Month','Median','2.5 Percentile', '97.5 Percentile'));

yErieDStore025_PP = jSum[paste('yErieDStorePP[',1:nMonths,']', sep=''),3];
yErieDStoreMedian_PP = jSum[paste('yErieDStorePP[',1:nMonths,']', sep=''),5];
yErieDStore975_PP = jSum[paste('yErieDStorePP[',1:nMonths,']', sep=''),7];
yErieDStore_PP = cbind(pTime, yErieDStoreMedian_PP, yErieDStore025_PP, yErieDStore975_PP);
write.table(format(yErieDStore_PP, digits=3), paste('yErieDStorePP_L2SWBM_ALL_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.csv',sep=''), append=FALSE, quote=FALSE, sep=',', row.names=FALSE, col.names=c('Year','Month','Median','2.5 Percentile', '97.5 Percentile'));

ontarioPrecip025 = jSum[paste('ontarioPrecip[',1:nMonths,']', sep=''),3];
ontarioPrecipMedian = jSum[paste('ontarioPrecip[',1:nMonths,']', sep=''),5];
ontarioPrecip975 = jSum[paste('ontarioPrecip[',1:nMonths,']', sep=''),7];
ontarioPrecip = cbind(pTime, ontarioPrecipMedian, ontarioPrecip025, ontarioPrecip975);
write.table(format(ontarioPrecip, digits=3), paste('ontarioPrecip_L2SWBM_ALL_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.csv',sep=''), append=FALSE, quote=FALSE, sep=',', row.names=FALSE, col.names=c('Year','Month','Median','2.5 Percentile', '97.5 Percentile'));

ontarioEvap025 = jSum[paste('ontarioEvap[',1:nMonths,']', sep=''),3];
ontarioEvapMedian = jSum[paste('ontarioEvap[',1:nMonths,']', sep=''),5];
ontarioEvap975 = jSum[paste('ontarioEvap[',1:nMonths,']', sep=''),7];
ontarioEvap = cbind(pTime, ontarioEvapMedian, ontarioEvap025, ontarioEvap975);
write.table(format(ontarioEvap, digits=5), paste('ontarioEvap_L2SWBM_ALL_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.csv',sep=''), append=FALSE, quote=FALSE, sep=',', row.names=FALSE, col.names=c('Year','Month','Median','2.5 Percentile', '97.5 Percentile'));

ontarioRunoff025 = jSum[paste('ontarioRunoff[',1:nMonths,']', sep=''),3];
ontarioRunoffMedian = jSum[paste('ontarioRunoff[',1:nMonths,']', sep=''),5];
ontarioRunoff975 = jSum[paste('ontarioRunoff[',1:nMonths,']', sep=''),7];
ontarioRunoff = cbind(pTime, ontarioRunoffMedian, ontarioRunoff025, ontarioRunoff975);
write.table(format(ontarioRunoff, digits=3), paste('ontarioRunoff_L2SWBM_ALL_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.csv',sep=''), append=FALSE, quote=FALSE, sep=',', row.names=FALSE, col.names=c('Year','Month','Median','2.5 Percentile', '97.5 Percentile'));

ontarioOutflow025 = jSum[paste('ontarioOutflow[',1:nMonths,']', sep=''),3];
ontarioOutflowMedian = jSum[paste('ontarioOutflow[',1:nMonths,']', sep=''),5];
ontarioOutflow975 = jSum[paste('ontarioOutflow[',1:nMonths,']', sep=''),7];
ontarioOutflow = cbind(pTime, ontarioOutflowMedian, ontarioOutflow025, ontarioOutflow975);
write.table(format(ontarioOutflow, digits=3), paste('ontarioOutflow_L2SWBM_ALL_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.csv',sep=''), append=FALSE, quote=FALSE, sep=',', row.names=FALSE, col.names=c('Year','Month','Median','2.5 Percentile', '97.5 Percentile'));

ontarioDStore025 = jSum[paste('ontarioDStore[',1:nMonths,']', sep=''),3];
ontarioDStoreMedian = jSum[paste('ontarioDStore[',1:nMonths,']', sep=''),5];
ontarioDStore975 = jSum[paste('ontarioDStore[',1:nMonths,']', sep=''),7];
ontarioDStore = cbind(pTime, ontarioDStoreMedian, ontarioDStore025, ontarioDStore975);
write.table(format(ontarioDStore, digits=3), paste('ontarioDStore_L2SWBM_ALL_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.csv',sep=''), append=FALSE, quote=FALSE, sep=',', row.names=FALSE, col.names=c('Year','Month','Median','2.5 Percentile', '97.5 Percentile'));

yOntarioDStore025_PP = jSum[paste('yOntarioDStorePP[',1:nMonths,']', sep=''),3];
yOntarioDStoreMedian_PP = jSum[paste('yOntarioDStorePP[',1:nMonths,']', sep=''),5];
yOntarioDStore975_PP = jSum[paste('yOntarioDStorePP[',1:nMonths,']', sep=''),7];
yOntarioDStore_PP = cbind(pTime, yOntarioDStoreMedian_PP, yOntarioDStore025_PP, yOntarioDStore975_PP);
write.table(format(yOntarioDStore_PP, digits=3), paste('yOntarioDStorePP_L2SWBM_ALL_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.csv',sep=''), append=FALSE, quote=FALSE, sep=',', row.names=FALSE, col.names=c('Year','Month','Median','2.5 Percentile', '97.5 Percentile'));

clairNBS025 = jSum[paste('clairNBS[',1:nMonths,']', sep=''),3];
clairNBSMedian = jSum[paste('clairNBS[',1:nMonths,']', sep=''),5];
clairNBS975 = jSum[paste('clairNBS[',1:nMonths,']', sep=''),7];
clairNBS = cbind(pTime, clairNBSMedian, clairNBS025, clairNBS975);
write.table(format(clairNBS, digits=3), paste('clairNBS_L2SWBM_ALL_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.csv',sep=''), append=FALSE, quote=FALSE, sep=',', row.names=FALSE, col.names=c('Year','Month','Median','2.5 Percentile', '97.5 Percentile'));

clairOutflow025 = jSum[paste('clairOutflow[',1:nMonths,']', sep=''),3];
clairOutflowMedian = jSum[paste('clairOutflow[',1:nMonths,']', sep=''),5];
clairOutflow975 = jSum[paste('clairOutflow[',1:nMonths,']', sep=''),7];
clairOutflow = cbind(pTime, clairOutflowMedian, clairOutflow025, clairOutflow975);
write.table(format(clairOutflow, digits=3), paste('clairOutflow_L2SWBM_ALL_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.csv',sep=''), append=FALSE, quote=FALSE, sep=',', row.names=FALSE, col.names=c('Year','Month','Median','2.5 Percentile', '97.5 Percentile'));

clairDStore025 = jSum[paste('clairDStore[',1:nMonths,']', sep=''),3];
clairDStoreMedian = jSum[paste('clairDStore[',1:nMonths,']', sep=''),5];
clairDStore975 = jSum[paste('clairDStore[',1:nMonths,']', sep=''),7];
clairDStore = cbind(pTime, clairDStoreMedian, clairDStore025, clairDStore975);
write.table(format(clairDStore, digits=3), paste('clairDStore_L2SWBM_ALL_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.csv',sep=''), append=FALSE, quote=FALSE, sep=',', row.names=FALSE, col.names=c('Year','Month','Median','2.5 Percentile', '97.5 Percentile'));

yClairDStore025_PP = jSum[paste('yClairDStorePP[',1:nMonths,']', sep=''),3];
yClairDStoreMedian_PP = jSum[paste('yClairDStorePP[',1:nMonths,']', sep=''),5];
yClairDStore975_PP = jSum[paste('yClairDStorePP[',1:nMonths,']', sep=''),7];
yClairDStore_PP = cbind(pTime, yClairDStoreMedian_PP, yClairDStore025_PP, yClairDStore975_PP);
write.table(format(yClairDStore_PP, digits=3), paste('yClairDStorePP_L2SWBM_ALL_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.csv',sep=''), append=FALSE, quote=FALSE, sep=',', row.names=FALSE, col.names=c('Year','Month','Median','2.5 Percentile', '97.5 Percentile'));

