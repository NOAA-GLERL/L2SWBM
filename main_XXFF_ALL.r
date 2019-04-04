####################################################################################################
####################################################################################################
####################################################################################################
### L2SWBM Operational Script
### Joeseph Smith
### University of Michigan, Cooperative Institute for Great Lakes Research
### National Oceanic and Atmospheric Administration - Great Lakes Environmental Research Laboratory
### Ann Arbor, MI, USA
####################################################################################################
####################################################################################################
####################################################################################################

library(rjags)

##### SET WORKING DIRECTORY

setwd("ENTER WORKING DIRECTORY HERE");

### GET FUNCTIONS, GLOBAL (GREAT LAKES WIDE) VARIABLES AND CONFIGURATION
source('configEtc.r');

### GET DATA
source('data_ALL.r');

### PREVIEW DATA
#source('tsPlotter_Preview_ALL.r')

### CAN CREATE ADDITIONAL SCRIPTS FOR DIFFERENT LENGTH ANALYSES

source('proc_XXFF_PP_ALL.r');

save.image(paste('L2SWBM_ALL_PP_',rollPeriod,'FF_',startAnalysisYear,'_',startAnalysisMonth,'_',endAnalysisYear,'_',endAnalysisMonth,'_',iters,'_',modelSuffix,'.RData',sep=''));

### UN-COMMENT TO RUN, OR COPY AND PASTE INTO CONSOLE
#source('tsPlotter_XXFF_ALL.r');
#source('dataGen_XXFF_ALL.r');
#source('statsGen_XXFF.r');
