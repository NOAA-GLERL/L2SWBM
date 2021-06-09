## Large Lake Statistical Water Balance Model (L2SWBM) - Version 1

Water balance models are often employed to improve understanding of drivers of change in regional hydrologic 
cycles. Most of these models, however, are physically-based, and few employ state-of-the-art statistical methods
to reconcile measurement uncertainty and bias.

Starting in 2015, NOAA Great Lakes Environmental Research Laboratory (GLERL), along with its partners at the
University of Michigan Cooperative Institute for Great Lakes Research (CIGLR), began developing a water balance
model under a Bayesian Markov chain Monte Carlo framework. Through this model, we generate new estimates of monthly
runoff, over-lake evaporation, over-lake precipitation, and connecting channel flows for each of the Great Lakes. The
new model reconciles discrepancies between model and measurement-based estimates of each component while
closing the Laurentian Great Lakes water balance.

In 2017, funding from the International Joint Commission - through their International Watersheds initiative
- was received to use the model in generating a new, balanced historical (1950 - 2015) record of the Laurentian
Great Lakes water balance. The project will help in resolving the regional water budget across monthly and
inter-annual time scales and represents an important stepping stone towards addressing a long-standing need in
the Great Lakes for clear and defensible differentiation between hydrological, climatological, geological, and
anthropogenic drivers behind seasonal and long-term changes in Laurentian Great Lakes water levels.

To run these models, you will need to do the following:

- Visit the JAGS Sourceforge repository and download JAGS for your computer: 
https://sourceforge.net/projects/mcmc-jags/files/JAGS/

- Download the R statistical programming environment
https://cran.r-project.org/

- Open R, and enter the command "install.packages(c('rjags'))", select your mirror, and install locally if necessary


## Operational Code

The code available here was developed for research purposes, the operational version of the code is maintained by the
Coordinating Committee on Great Lakes Basic Hydraulic and Hydrologic Data and can be accessed here:

https://github.com/cc-hydrosub/L2SWBM

## Contact Info

Questions about this code can be sent to NOAA-GLERL at oar.glerl.data@noaa.gov.

## References

GRONEWOLD, A.D., J. Bruxer, D. Durnford, A.H. CLITES, J.P. SMITH, F. Segleniecks, S.S. Qian, T.S. HUNTER, and V. Fortin (2016)
Hydrological drivers of record-setting water level rise on Earth's largest lake system. Water Resources Research 
52(DOI:10.1002/2015WR018209). https://www.glerl.noaa.gov/pubs/fulltext/2016/20160014.pdf

SMITH, J.P. and A.D. GRONEWOLD. Development and analysis of a Bayesian water balance model for large lake systems. ArXiv.
https://arxiv.org/abs/1710.10161

SMITH, J.P. and A.D. GRONEWOLD (2018) Summary Report: Development of the Large Lake Statistical Water Balance Model for Constructing
a New Historical Record of the Great Lakes Water Balance. FINAL report for the International Joint Commission. 
https://www.glerl.noaa.gov/pubs/fulltext/2018/20180021.pdf

SMITH, J.P., A.D. Gronewold, L. Read and J.L. Crooks (2019) Large Lake Statistical Water Balance Model - Laurentian Great Lakes - 
1 month time window - 1980 through 2015 monthly summary data and model output. Deep Blue, University of Michigan, Ann Arbor, MI.
https://doi.org/10.7302/s6h1-d521

Do, H.X., J.P. Smith, L.M. Fry and A.D. Gronewold (2020) Seventy-year long record of monthly water balance estimates for Earth’s
largest lake system. Scientific Data 7, 276. https://doi.org/10.1038/s41597-020-00613-z

Do, Hong X., J.P. SMITH, L.M. Fry and A.D. Gronewold (2020) Monthly water balance estimates for the Laurentian Great Lakes from 1950 
to 2019 (v1.1).  Deep Blue, University of Michigan, Ann Arbor, MI. https://doi.org/10.7302/tx97-nn12

## Acknowledgements

Drew Gronewold, Associate Professor at the University of Michigan's School for Environment and Sustainability, initiated model
development.

We thank Song Qian, Yves Atchade, Kerby Shedden, Edward Ionides, Vincent Fortin, Bryan Tolson, and Craig Stow for helpful discussions
on Bayesian inference and alternative formulations of our water balance model. Jacob Bruxer, Frank Seglenieks, Tim Hunter, and Lauren
Fry provided expert opinions and water balance data. Nicole Rice provided graphical and editorial support.

Funding was provided by the International Joint Commission (IJC) International Watersheds Initiative (IWI) to NOAA and the Cooperative
Institute for Great Lakes Research (CIGLR) through a NOAA Cooperative Agreement with the University of Michigan (NA12OAR4320071);
many thanks to Wendy Leger and Mike Shantz.

The use of product names, commercial and otherwise, in this paper does not imply endorsement by NOAA, NOAA-GLERL, CIGLR, or any other
contributing agency or organization.

## NOAA Disclaimer 

This repository is a scientific product and is not official communication of the National Oceanic and
Atmospheric Administration, or the United States Department of Commerce. All NOAA GitHub project code is
provided on an ‘as is’ basis and the user assumes responsibility for its use. Any claims against the Department of
Commerce or Department of Commerce bureaus stemming from the use of this GitHub project will be governed
by all applicable Federal law. Any reference to specific commercial products, processes, or services by service
mark, trademark, manufacturer, or otherwise, does not constitute or imply their endorsement, recommendation or
favoring by the Department of Commerce. The Department of Commerce seal and logo, or the seal and logo of a
DOC bureau, shall not be used in any manner to imply endorsement of any commercial product or activity by
DOC or the United States Government.


