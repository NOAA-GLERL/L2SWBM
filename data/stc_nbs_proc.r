# Processing for St. Clair NBS Data

daysInMonths = c(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
daysInMonthsWithLeap = c(31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
secondsInADay = 24*60*60;
stcArea = 1.1090e9;

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

setwd("C:/Users/smith/Desktop/L2SWBM/data");

scRNBS = read.table('SCNBSM', FALSE, skip=6);
scRNBS[,2:13] = scRNBS[,2:13]*10
scRNBS[scRNBS==-99990] = NA;	
scCNBS_GLMHMD = read.csv('NBS_STC.csv', FALSE, skip=4);
scCNBS_GLMHMD_prov = read.table('STC_HISTM_NBS.TXT', FALSE);
scCNBS_GLMHMD_prov = makemm2CMSGrid(scCNBS_GLMHMD_prov, 1e10, stcArea);

header = c('','','GLM-HMD','GLM-HMD Provisional','Coordinated Residual');

stcNBSMat = NULL;

for(y in 1900:2049){
	for(m in 1:12){
		tRow = c(y,m);
		if(length(scCNBS_GLMHMD[scCNBS_GLMHMD[,1] == y,m+1]) == 0){
			tRow = c(tRow, -9999.9);
		}
		else{
			tRow = c(tRow, scCNBS_GLMHMD[scCNBS_GLMHMD[,1] == y,m+1]);
		}
		if(length(scCNBS_GLMHMD_prov[scCNBS_GLMHMD_prov[,1] == y,m+1]) == 0){
			tRow = c(tRow, -9999.9);
		}
		else{
			tRow = c(tRow, scCNBS_GLMHMD_prov[scCNBS_GLMHMD_prov[,1] == y,m+1]);
		}
		if(length(scRNBS[scRNBS[,1] == y,m+1]) == 0){
			tRow = c(tRow, -9999.9);
		}
		else{
			tRow = c(tRow, scRNBS[scRNBS[,1] == y,m+1]);
		}
		stcNBSMat = rbind(stcNBSMat, tRow);
	}	
}

stcNBSMat[is.na(stcNBSMat)] = -9999.9;

colnames(stcNBSMat) = header;

write.table(stcNBSMat, 'STC_lake_NBS.csv', append=FALSE, quote=FALSE, sep=',', row.names=FALSE, col.names=TRUE);
