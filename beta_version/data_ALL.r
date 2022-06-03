### GET DATA

### SUPERIOR

superiorBOM = read.table('data/SUPBOM', FALSE, skip=6);
superiorBOM = grid2TS(superiorBOM);
superiorBOM[superiorBOM[,3] == -9999.00,3] = NA;
superiorDS = cbind(
	superiorBOM[-(nrow(superiorBOM)),1:2],
	(superiorBOM[-1,3] - superiorBOM[-(nrow(superiorBOM)),3])*1000
);

superiorOutflow = read.table('data/SUPFLOWM', FALSE, skip=6);
superiorOutflow[,2:13] = superiorOutflow[,2:13]*10;
superiorOutflow = grid2TS(superiorOutflow);
superiorOutflow[superiorOutflow[,3] == -99990.00,3] = NA;

superiorOutflowIGS = read.csv('data/stMarysIGS.csv', FALSE);
superiorOutflowIGS = grid2TS(superiorOutflowIGS);

superiorDiversion = read.table('data/LLOGOSUM', FALSE, skip=6);
superiorDiversion = grid2TS(superiorDiversion);
superiorDiversion[superiorDiversion[,3] == -9999.00,3] = NA;

superiorPrecip = read.csv('data/SUP_lake_Prec.csv', TRUE, na.strings='-9999.9');
superiorPrecip[superiorPrecip < 0] = NA;
superiorPrecip_Prior = superiorPrecip
superiorPrecip = superiorPrecip[,c(1,2,(3:ncol(superiorPrecip))*precipInput)]
superiorPrecipSrc = c("***MODEL RAN WITHOUT OBSERVATIONS***")
if(ncol(superiorPrecip) >= 3){
	colnames(superiorPrecip) = c('Year', 'Month', colnames(superiorPrecip)[3:length(colnames(superiorPrecip))])
	superiorPrecipSrc = colnames(superiorPrecip)[3:length(colnames(superiorPrecip))]
}

superiorEvap = read.csv('data/SUP_lake_Evap.csv', TRUE, na.strings='-9999.9');
superiorEvap[superiorEvap < -5000] = NA
superiorEvap_Prior = superiorEvap
superiorEvap = superiorEvap[,c(1,2,(3:ncol(superiorEvap))*evapInput)]
superiorEvapSrc = c("***MODEL RAN WITHOUT OBSERVATIONS***")
if(ncol(superiorEvap) >= 3){
	colnames(superiorEvap) = c('Year', 'Month', colnames(superiorEvap)[3:length(colnames(superiorEvap))])
	superiorEvapSrc = colnames(superiorEvap)[3:length(colnames(superiorEvap))]
}

superiorRunoff = read.csv('data/SUP_lake_Runoff.csv', TRUE, na.strings='None');
superiorRunoff[superiorRunoff < 0] = NA
superiorRunoff_Prior = superiorRunoff
superiorRunoff = superiorRunoff[,c(1,2,(3:ncol(superiorRunoff))*runoffInput)]
superiorRunoffSrc = c("***MODEL RAN WITHOUT OBSERVATIONS***")
if(ncol(superiorRunoff) >= 3){
	colnames(superiorRunoff) = c('Year', 'Month', colnames(superiorRunoff)[3:length(colnames(superiorRunoff))])
	superiorRunoffSrc = colnames(superiorRunoff)[3:length(colnames(superiorRunoff))]
}

superiorNBS = read.csv('data/SUP_lake_NBS.csv', TRUE, na.strings='-9999.9');
superiorNBS[superiorNBS < -5000] = NA
colnames(superiorNBS) = c('Year', 'Month', colnames(superiorNBS)[3:length(colnames(superiorNBS))])
superiorNBSSrc = colnames(superiorNBS)[3:length(colnames(superiorNBS))]

### MI-HURON

miHuronBOM = read.table('data/MHBOM', FALSE, skip=6);
miHuronBOM = grid2TS(miHuronBOM);
miHuronBOM[miHuronBOM[,3] == -9999.00,3] = NA;
miHuronDS = cbind(
	miHuronBOM[-(nrow(miHuronBOM)),1:2],
	(miHuronBOM[-1,3] - miHuronBOM[-(nrow(miHuronBOM)),3])*1000
);

miHuronOutflow = read.table('data/MHFLOWM', FALSE, skip=6);
miHuronOutflow[,2:13] = miHuronOutflow[,2:13]*10;
miHuronOutflow = grid2TS(miHuronOutflow);
miHuronOutflow[miHuronOutflow[,3] == -99990.00,3] = NA;

miHuronOutflowIGS = read.csv('data/stClairIGS.csv', FALSE);
miHuronOutflowIGS = grid2TS(miHuronOutflowIGS);

miHuronDiversion = read.table('data/CHICDIVM', FALSE, skip=6);
miHuronDiversion = grid2TS(miHuronDiversion);
miHuronDiversion[miHuronDiversion[,3] == -9999.00,3] = NA;

miHuronPrecip = read.csv('data/MHG_lake_Prec.csv', TRUE, na.strings='-9999.9');
miHuronPrecip[miHuronPrecip < 0] = NA;
miHuronPrecip_Prior = miHuronPrecip
miHuronPrecip = miHuronPrecip[,c(1,2,(3:ncol(miHuronPrecip))*precipInput)]
miHuronPrecipSrc = c("***MODEL RAN WITHOUT OBSERVATIONS***")
if(ncol(miHuronPrecip) >= 3){
	colnames(miHuronPrecip) = c('Year', 'Month', colnames(miHuronPrecip)[3:length(colnames(miHuronPrecip))])
	miHuronPrecipSrc = colnames(miHuronPrecip)[3:length(colnames(miHuronPrecip))]
}

miHuronEvap = read.csv('data/MHG_lake_Evap.csv', TRUE, na.strings='-9999.9');
miHuronEvap[miHuronEvap < -5000] = NA
miHuronEvap_Prior = miHuronEvap
miHuronEvap = miHuronEvap[,c(1,2,(3:ncol(miHuronEvap))*evapInput)]
miHuronEvapSrc = c("***MODEL RAN WITHOUT OBSERVATIONS***")
if(ncol(miHuronEvap) >= 3){
	colnames(miHuronEvap) = c('Year', 'Month', colnames(miHuronEvap)[3:length(colnames(miHuronEvap))])
	miHuronEvapSrc = colnames(miHuronEvap)[3:length(colnames(miHuronEvap))]
}

miHuronRunoff = read.csv('data/MHG_lake_Runoff.csv', TRUE, na.strings='None');
miHuronRunoff[miHuronRunoff < 0] = NA
miHuronRunoff_Prior = miHuronRunoff
miHuronRunoff = miHuronRunoff[,c(1,2,(3:ncol(miHuronRunoff))*runoffInput)]
miHuronRunoffSrc = c("***MODEL RAN WITHOUT OBSERVATIONS***")
if(ncol(miHuronRunoff) >= 3){
	colnames(miHuronRunoff) = c('Year', 'Month', colnames(miHuronRunoff)[3:length(colnames(miHuronRunoff))])
	miHuronRunoffSrc = colnames(miHuronRunoff)[3:length(colnames(miHuronRunoff))]
}

miHuronNBS = read.csv('data/MHG_lake_NBS.csv', TRUE, na.strings='-9999.9');
miHuronNBS[miHuronNBS < -5000] = NA
colnames(miHuronNBS) = c('Year', 'Month', colnames(miHuronNBS)[3:length(colnames(miHuronNBS))])
miHuronNBSSrc = colnames(miHuronNBS)[3:length(colnames(miHuronNBS))]

### ST. CLAIR

clairBOM = read.table('data/SCBOM', FALSE, skip=6);
clairBOM = grid2TS(clairBOM);
clairBOM[clairBOM[,3] == -9999.00,3] = NA;
clairDS = cbind(
	clairBOM[-(nrow(clairBOM)),1:2],
	(clairBOM[-1,3] - clairBOM[-(nrow(clairBOM)),3])*1000
);

clairDS_CMS = NULL;
for(i in 1:nrow(clairDS)){
	if(clairDS[i,1] %% 4 == 0){
		clairDS_CMS = c(
			clairDS_CMS,
			clairDS[i,3]/secondsInADay/daysInMonthsWithLeap[clairDS[i,2]]*stcArea/1000
		);
	}
	else{
		clairDS_CMS = c(
			clairDS_CMS,
			clairDS[i,3]/secondsInADay/daysInMonths[clairDS[i,2]]*stcArea/1000
		);
	}
}

clairDS[,3] = clairDS_CMS;

clairOutflow = read.table('data/SCFLOWM', FALSE, skip=6);
clairOutflow[,2:13] = clairOutflow[,2:13]*10;
clairOutflow = grid2TS(clairOutflow);
clairOutflow[clairOutflow[,3] == -99990.00,3] = NA;

clairOutflowIGS = read.csv('data/detroitIGS.csv', FALSE);
clairOutflowIGS = grid2TS(clairOutflowIGS);

clairNBS = read.csv('data/STC_lake_NBS.csv', TRUE, na.strings='-9999.9');
clairNBS[clairNBS < -5000] = NA
clairNBS = clairNBS[,c(1,2,(3:ncol(clairNBS))*c(1,0,1,0,0,0,1,1))]
# GLERL, USACE AHPS, RNBS, CaPA-GEM Proto 

clairNBS_CMS = NULL;
# Convert all but last column as that's already in CMS
for(i in 1:nrow(clairNBS)){
	if(clairNBS[i,1] %% 4 == 0){
		clairNBS_CMS = rbind(
			clairNBS_CMS,
			clairNBS[i,3:(ncol(clairNBS)-1)]/secondsInADay/daysInMonthsWithLeap[clairNBS[i,2]]*stcArea/1000
		);
	}
	else{
		clairNBS_CMS = rbind(
			clairNBS_CMS,
			clairNBS[i,3:(ncol(clairNBS)-1)]/secondsInADay/daysInMonths[clairNBS[i,2]]*stcArea/1000
		);
	}
}

clairNBS[,3:ncol(clairNBS)] = cbind(clairNBS_CMS, clairNBS[,ncol(clairNBS)]);

colnames(clairNBS) = c('Year', 'Month', colnames(clairNBS)[3:length(colnames(clairNBS))])
clairNBSSrc = colnames(clairNBS)[3:length(colnames(clairNBS))]

### ERIE

erieBOM = read.table('data/ERBOQM', FALSE, skip=6);
erieBOM = erieBOM[erieBOM[,2] == 1, c(1,3:14)]
erieBOM = grid2TS(erieBOM);
erieBOM[erieBOM[,3] == -9999.00,3] = NA;
erieDS = cbind(
	erieBOM[-(nrow(erieBOM)),1:2],
	(erieBOM[-1,3] - erieBOM[-(nrow(erieBOM)),3])*1000
);

erieOutflow = read.table('data/ERFLOWM', FALSE, skip=6);
erieOutflow[,2:13] = erieOutflow[,2:13]*10;
erieOutflow = grid2TS(erieOutflow);
erieOutflow[erieOutflow[,3] == -99990.00,3] = NA;

erieDiversion = read.table('data/WELLANDM', FALSE, skip=6);
erieDiversion = grid2TS(erieDiversion);
erieDiversion[erieDiversion[,3] == -9999.00,3] = NA;

erieOutflow[,3] = erieOutflow[,3]-erieDiversion[,3]

eriePrecip = read.csv('data/ERI_lake_Prec.csv', TRUE, na.strings='-9999.9');
eriePrecip[eriePrecip < 0] = NA;
eriePrecip_Prior = eriePrecip
eriePrecip = eriePrecip[,c(1,2,(3:ncol(eriePrecip))*precipInput)]
eriePrecipSrc = c("***MODEL RAN WITHOUT OBSERVATIONS***")
if(ncol(eriePrecip) >= 3){
	colnames(eriePrecip) = c('Year', 'Month', colnames(eriePrecip)[3:length(colnames(eriePrecip))])
	eriePrecipSrc = colnames(eriePrecip)[3:length(colnames(eriePrecip))]
}

erieEvap = read.csv('data/ERI_lake_Evap.csv', TRUE, na.strings='-9999.9');
erieEvap[erieEvap < -5000] = NA
erieEvap_Prior = erieEvap
erieEvap = erieEvap[,c(1,2,(3:ncol(erieEvap))*evapInput)]
erieEvapSrc = c("***MODEL RAN WITHOUT OBSERVATIONS***")
if(ncol(erieEvap) >= 3){
	colnames(erieEvap) = c('Year', 'Month', colnames(erieEvap)[3:length(colnames(erieEvap))])
	erieEvapSrc = colnames(erieEvap)[3:length(colnames(erieEvap))]
}
	
erieRunoff = read.csv('data/ERI_lake_Runoff.csv', TRUE, na.strings='None');
erieRunoff[erieRunoff < 0] = NA
erieRunoff_Prior = erieRunoff
erieRunoff = erieRunoff[,c(1,2,(3:ncol(erieRunoff))*runoffInput)]
erieRunoffSrc = c("***MODEL RAN WITHOUT OBSERVATIONS***")
if(ncol(erieRunoff) >= 3){
	colnames(erieRunoff) = c('Year', 'Month', colnames(erieRunoff)[3:length(colnames(erieRunoff))])
	erieRunoffSrc = colnames(erieRunoff)[3:length(colnames(erieRunoff))]
}

erieNBS = read.csv('data/ERI_lake_NBS.csv', TRUE, na.strings='-9999.9');
erieNBS[erieNBS < -5000] = NA
colnames(erieNBS) = c('Year', 'Month', colnames(erieNBS)[3:length(colnames(erieNBS))])
erieNBSSrc = colnames(erieNBS)[3:length(colnames(erieNBS))]

### ONTARIO

ontarioBOM = read.table('data/ONTBOQM', FALSE, skip=6);
ontarioBOM = ontarioBOM[ontarioBOM[,2] == 1, c(1,3:14)]
ontarioBOM = grid2TS(ontarioBOM);
ontarioBOM[ontarioBOM[,3] == -9999.00,3] = NA;
ontarioDS = cbind(
	ontarioBOM[-(nrow(ontarioBOM)),1:2],
	(ontarioBOM[-1,3] - ontarioBOM[-(nrow(ontarioBOM)),3])*1000
);

ontarioOutflow = read.table('data/ONTFLOWM', FALSE, skip=6);
ontarioOutflow[,2:13] = ontarioOutflow[,2:13]*10;
ontarioOutflow = grid2TS(ontarioOutflow);
ontarioOutflow[ontarioOutflow[,3] == -99990.00,3] = NA;

ontarioPrecip = read.csv('data/ONT_lake_Prec.csv', TRUE, na.strings='-9999.9');
ontarioPrecip[ontarioPrecip < 0] = NA;
ontarioPrecip_Prior = ontarioPrecip
ontarioPrecip = ontarioPrecip[,c(1,2,(3:ncol(ontarioPrecip))*precipInput)]
ontarioPrecipSrc = c("***MODEL RAN WITHOUT OBSERVATIONS***")
if(ncol(ontarioPrecip) >= 3){
	colnames(ontarioPrecip) = c('Year', 'Month', colnames(ontarioPrecip)[3:length(colnames(ontarioPrecip))])
	ontarioPrecipSrc = colnames(ontarioPrecip)[3:length(colnames(ontarioPrecip))]
}

ontarioEvap = read.csv('data/ONT_lake_Evap.csv', TRUE, na.strings='-9999.9');
ontarioEvap[ontarioEvap < -5000] = NA
ontarioEvap_Prior = ontarioEvap
ontarioEvap = ontarioEvap[,c(1,2,(3:ncol(ontarioEvap))*evapInput)]
ontarioEvapSrc = c("***MODEL RAN WITHOUT OBSERVATIONS***")
if(ncol(ontarioEvap) >= 3){
	colnames(ontarioEvap) = c('Year', 'Month', colnames(ontarioEvap)[3:length(colnames(ontarioEvap))])
	ontarioEvapSrc = colnames(ontarioEvap)[3:length(colnames(ontarioEvap))]
}

ontarioRunoff = read.csv('data/ONT_lake_Runoff.csv', TRUE, na.strings='None');
ontarioRunoff[ontarioRunoff < 0] = NA
ontarioRunoff_Prior = ontarioRunoff
ontarioRunoff = ontarioRunoff[,c(1,2,(3:ncol(ontarioRunoff))*runoffInput)]
ontarioRunoffSrc = c("***MODEL RAN WITHOUT OBSERVATIONS***")
if(ncol(ontarioRunoff) >= 3){
	colnames(ontarioRunoff) = c('Year', 'Month', colnames(ontarioRunoff)[3:length(colnames(ontarioRunoff))])
	ontarioRunoffSrc = colnames(ontarioRunoff)[3:length(colnames(ontarioRunoff))]
}

ontarioNBS = read.csv('data/ONT_lake_NBS.csv', TRUE, na.strings='-9999.9');
ontarioNBS[ontarioNBS < -5000] = NA
colnames(ontarioNBS) = c('Year', 'Month', colnames(ontarioNBS)[3:length(colnames(ontarioNBS))])
ontarioNBSSrc = colnames(ontarioNBS)[3:length(colnames(ontarioNBS))]

