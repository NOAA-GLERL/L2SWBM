This folder contains the code and files necessary to run the Large Lake Statistical Water Balance Model (L2SWBM) for the Laurentian Great Lakes and generate version 1 of the historical record. Below is an itemized description of its contents. For detailed information on the data utilized by the model and theoretical background, consult the following papers:

1.) GRONEWOLD, A.D., J. Bruxer, D. Durnford, A.H. CLITES, J.P. SMITH, F. Segleniecks, S.S. Qian, T.S. HUNTER, and V. Fortin. Hydrological drivers of record-setting water level rise on Earth's largest lake system. Water Resources Research 52(DOI:10.1002/2015WR018209) (2016). https://www.glerl.noaa.gov/pubs/fulltext/2016/20160014.pdf

2.) Smith, J.P., and Gronewold, A.D., Development and analysis of a Bayesian water balance model for large lake systems. Available on arXiv: https://arxiv.org/abs/1710.10161

ITEMIZED DESCRIPTION OF CONTENTS:

- Folder 'data': contains the observation/measurement data for the prior and likelihood sections of the model. Some quick acronym pointers:
-- CHICDIVM is for the Chicago Diversion
-- *BO(Q)M indicates it's a beginning of (quarter) month water level file. Usually an average of the last day of the previous month and the first day of the measured month.
-- *FLOWM indicates a monthly outflow file
-- LLOGOSUM is a monthly data set for the sum of Long Lac and Ogoki water diverted into Lake Superior
-- *IGS indicates monthly data from a connecting channel's international gauging station. Currently running the model with inputs from 3: St. Marys, St. Clair, and Detroit
-- WELLANDM is monthly average flow through the Welland canal from Erie into Ontario. I subtract these values from ERFLOWM to get Niagara river flow, as ERFLOWM is the total outflow from Erie into Ontario

-> In the data folder there is a sub-directory named 'mpeCaPA', which contains time-series precipitation data derived from data sets maintained by the Midwest Regional Climate Center, the NOAA National Weather Service, and Environment and Climate Change Canada. We used these data for informal experiments with a collaborator. You may find out more here: http://mrcc.isws.illinois.edu/gismaps/naprecip.htm
 
- Primary model run files in the root of the attached folder. I'm going to start with main_XXFF_ALL.r, and describe its flow, which should cover all of the files in root.

- main_XXFF_ALL.r - Runs the model and produces output time-series plots and CSV formatted posterior estimates of the components of the water balance for the selected lakes. In order, it loads JAGS, sets the working directory (EDIT THIS FOR YOUR MACHINE), and then proceeds to run the model in the following steps:

-- configEtc.r - Loads the config file (config_record.csv). That file can be edited to configure the following:
---> The analysis start and end year and month (as this is on a monthly time scale)
---> The prior start and end year and month. This allows for the conventional prior where all data used for it are not any part of the analysis set, and for a more conceptual prior where we can throw in analysis period estimates/measurements, and treat them as our prior belief in the data, letting the model decide what's true (posterior). The priors, as described in the papers, are distributions based on historical data.
---> Balance rolling window (6 or better recommended. 6 has been working really good, however)
---> MCMC iterations: Burn-in will be half of this value, sampled half will be thinned down to 1000 per chain, so you will have 3000 samples altogether.
---> P, E, and R inputs to select data sets that inform inference on precip, evap, and runoff
---> A model suffix to further properly label any and all output from the model run.
---> The 'Etc' part of the configEtc.r file is the loading of functions and variables for use in the model.

-- data_ALL.r - loads the data for analysis into R, reading the data as they are, and formats them as appropriate

-- tsPlotter_Preview_ALL.r - plots the data in PDF format to preview the data, make sure everything looks OK. I have it commented out in main as you only need to look at it so many times.

-- proc_XXFF_PP_ALL.r - this is the major file that sorts the data into prior and analysis sets, calculates the parameters for the prior distributions, and then generates and runs the model. If you want to modify and experiment with the model, this is where you do it. This script, line-by-line, creates the BUGS model code (in the modelCode variable), saves it as an actual file, then runs it. After sampling, the code calculates summary statistics. You may calculate the R-Hat convergence diagnostic, you will have to uncomment it and comment out some other lines at the very bottom of this file. Problem is that this can be expensive in terms of memory used.

-- The following are commented out so you may run them as desired:

--- tsPlotter_XXFF_ALL.r and dataGen_XXFF_ALL.r - plots the time series of observations/measurements over the inferred 95% credible interval from MCMC sampling (every 10 years of analysis), and generates CSV files with the median, 2.5%ile, and 97.5%ile from the analysis. Plotters with '_PP_' in the file name plot the posterior predictive intervals for observations fed into the model, a checking device recommended by Gelman.

--- statsGen_XXFF.r - generates a small CSV table indicating the water balance closure rates across all lakes (including St. Clair) and 1-month, 12-month, and 60-month intervals. We are constantly looking for ways to improve one-month closure while still successfully closing larger time intervals of the water balance.

If you have any questions, please contact joeseph@umich.edu. This model package is the result of a couple years of working with the model and preparing it for use in other institutions, agencies, etc. Hope you find it useful.
