library(KnowBR)

#Things you'll need before you start:
#1.) the input files are partitioned by taxonomic group. These can be distilled from the Supplementary Material 1 (see Lobo et al. 2018 for data formatting questions)
#e.g., if you wanted to recreate the county-level analysis, you would copy the following 3 columns from SuppMat1 into a new file:
       #1a. Species
       #1b. CountyCentroidLatDD
       #1c. CountyCentroidLonDD

#then add an additional column of all 1s for every observation (to represent the number of individuals collected at each site...unfortunately we do not have accurate abundance data for terrestrial mollusks).


#2.) Shape files for counties and ecoregions (see manuscript for source information)

#NOTE: You will not be able to fully recreate the ecoregion analyses because I have obscurred the National Park Service data per our data user agreement.

#Inputs within each line are associated with the locations of my personal datasets. Yours will need to change to fit your own data.

#############################################################################################################################################################################################################################################################################################################################################################################################
################################COUNTY MAPS AND DATA FILES################################################################################################################################################################################################################################################################################################################################################
#############################################################################################################################################################################################################################################################################################################################################################################################
#############################################################################################################################################################################################################################################################################################################################################################################################

#county data w/ slugs
data(adworld)
KnowBPolygon(data = read.csv("C:/Users/NickG/Documents/TN_Snails/Master_Datasets/Master_Files/Slug_Files/County_Slugs.csv", header=TRUE) , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_CountyShape" , layer="TN_co_GCS") , shapenames = "NAME" , admAreas = TRUE, yb = 33.8, yt = 34, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, extent = FALSE, legend.pos = "x", file1 = "Slugs per county", file2 = "County Slugs Estimators", file3 = "County Slugs Standard error of the estimators", jpg = FALSE, curve = "Clench", colscale=rev(heat.colors(100)))

#plot for county slugs records
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/County Slugs Estimators.CSV", header=TRUE, encoding="latin1") , admAreas = TRUE, polygonname = "Area" , var = "Records" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_CountyShape" , layer="TN_co_GCS") , shapenames = "NAME" , ini = 1 , end = 1000, yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 2, colscale=rev(heat.colors(100)))

#plot for county slugs obs.richness
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/County Slugs Estimators.CSV", header=TRUE, encoding="latin1") , admAreas = TRUE, polygonname = "Area" , var = "Observed.richness" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_CountyShape" , layer="TN_co_GCS") , shapenames = "NAME" , ini = 1 , end = 250, yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 2, colscale=rev(heat.colors(100)))

#plot for county slugs completeness
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/County Slugs Estimators.CSV", header=TRUE, encoding="latin1") , admAreas = TRUE, polygonname = "Area" , var = "Completeness" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_CountyShape" , layer="TN_co_GCS") , shapenames = "NAME" , yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 9, colscale=rev(heat.colors(100)))

#plot for county slugs slope
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/County Slugs Estimators.CSV", header=TRUE, encoding="latin1") , admAreas = TRUE, polygonname = "Area" , var = "Slope" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_CountyShape" , layer="TN_co_GCS") , shapenames = "NAME" , yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 9, colscale=rev(heat.colors(100)), ndigits = 1)

#############################################################################################################################################################################################################################################################################################################################################################################################

#county data w/ snails
data(adworld)
KnowBPolygon(data = read.csv("C:/Users/NickG/Documents/TN_Snails/Master_Datasets/Master_Files/Snail_Files/County_Snails.csv", header=TRUE) , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_CountyShape" , layer="TN_co_GCS") , shapenames = "NAME" , admAreas = TRUE, yb = 33.8, yt = 34, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, extent = FALSE, legend.pos = "x", file1 = "Snails per county", file2 = "County Snails Estimators", file3 = "County Snails Standard error of the estimators", jpg = FALSE, curve = "Clench", colscale=rev(heat.colors(100)))

#plot for county snails records
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/County Snails Estimators.CSV", header=TRUE, encoding="latin1") , admAreas = TRUE, polygonname = "Area" , var = "Records" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_CountyShape" , layer="TN_co_GCS") , shapenames = "NAME" , ini = 1 , end = 1000, yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 9, colscale=rev(heat.colors(100)))

#plot for county snails obs.richness
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/County Snails Estimators.CSV", header=TRUE, encoding="latin1") , admAreas = TRUE, polygonname = "Area" , var = "Observed.richness" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_CountyShape" , layer="TN_co_GCS") , shapenames = "NAME" , ini = 1 , end = 250, yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 9, colscale=rev(heat.colors(100)))

#plot for county snails completeness
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/County Snails Estimators.CSV", header=TRUE, encoding="latin1") , admAreas = TRUE, polygonname = "Area" , var = "Completeness" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_CountyShape" , layer="TN_co_GCS") , shapenames = "NAME" , yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 9, colscale=rev(heat.colors(100)))

#plot for county snails slope
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/County Snails Estimators.CSV", header=TRUE, encoding="latin1") , admAreas = TRUE, polygonname = "Area" , var = "Slope" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_CountyShape" , layer="TN_co_GCS") , shapenames = "NAME" , yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 9, colscale=rev(heat.colors(100)), ndigits = 1)

#############################################################################################################################################################################################################################################################################################################################################################################################

#county data w/ micros
data(adworld)
KnowBPolygon(data = read.csv("C:/Users/NickG/Documents/TN_Snails/Master_Datasets/Master_Files/Micro_Files/County_Micros.csv", header=TRUE) , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_CountyShape" , layer="TN_co_GCS") , shapenames = "NAME" , admAreas = TRUE, yb = 33.8, yt = 34, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, extent = FALSE, legend.pos = "x", file1 = "Micros per county", file2 = "County Micros Estimators", file3 = "County Micros Standard error of the estimators", jpg = FALSE, curve = "Clench", colscale=rev(heat.colors(100)))

#plot for county micros records
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/County Micros Estimators.CSV", header=TRUE, encoding="latin1") , admAreas = TRUE, polygonname = "Area" , var = "Records" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_CountyShape" , layer="TN_co_GCS") , shapenames = "NAME" , ini = 1 , end = 1000, yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, colscale=rev(heat.colors(100)))

#plot for county micros obs.richness
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/County Micros Estimators.CSV", header=TRUE, encoding="latin1") , admAreas = TRUE, polygonname = "Area" , var = "Observed.richness" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_CountyShape" , layer="TN_co_GCS") , shapenames = "NAME" , ini = 1 , end = 250, yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 2, colscale=rev(heat.colors(100)))

#plot for county micros completeness
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/County Micros Estimators.CSV", header=TRUE, encoding="latin1") , admAreas = TRUE, polygonname = "Area" , var = "Completeness" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_CountyShape" , layer="TN_co_GCS") , shapenames = "NAME" , yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 9, colscale=rev(heat.colors(100)))

#plot for county micros slope
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/County Micros Estimators.CSV", header=TRUE, encoding="latin1") , admAreas = TRUE, polygonname = "Area" , var = "Slope" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_CountyShape" , layer="TN_co_GCS") , shapenames = "NAME" , yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 9, colscale=rev(heat.colors(100)), ndigits = 1)

#############################################################################################################################################################################################################################################################################################################################################################################################

#county data w/ macros
data(adworld)
KnowBPolygon(data = read.csv("C:/Users/NickG/Documents/TN_Snails/Master_Datasets/Master_Files/Macro_Files/County_Macros.csv", header=TRUE) , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_CountyShape" , layer="TN_co_GCS") , shapenames = "NAME" , admAreas = TRUE, yb = 33.8, yt = 34, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, extent = FALSE, legend.pos = "x", file1 = "All Macros per county", file2 = "County Macros Estimators", file3 = "County Macros Standard error of the estimators", jpg = FALSE, curve = "Clench", colscale=rev(heat.colors(100)))

#plot for county macros records
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/County Macros Estimators.CSV", header=TRUE, encoding="latin1") , admAreas = TRUE, polygonname = "Area" , var = "Records" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_CountyShape" , layer="TN_co_GCS") , shapenames = "NAME" , ini = 1 , end = 1000, yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 10, colscale=rev(heat.colors(100)))

#plot for county macros obs.richness
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/County Macros Estimators.CSV", header=TRUE, encoding="latin1") , admAreas = TRUE, polygonname = "Area" , var = "Observed.richness" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_CountyShape" , layer="TN_co_GCS") , shapenames = "NAME" , ini = 1 , end = 250, yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 5, colscale=rev(heat.colors(100)))

#plot for county macros completeness
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/County Macros Estimators.CSV", header=TRUE, encoding="latin1") , admAreas = TRUE, polygonname = "Area" , var = "Completeness" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_CountyShape" , layer="TN_co_GCS") , shapenames = "NAME" , yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 9, colscale=rev(heat.colors(100)))

#plot for county micros slope
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/County Macros Estimators.CSV", header=TRUE, encoding="latin1") , admAreas = TRUE, polygonname = "Area" , var = "Slope" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_CountyShape" , layer="TN_co_GCS") , shapenames = "NAME" , yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 9, colscale= heat.colors(100), ndigits = 1)

#############################################################################################################################################################################################################################################################################################################################################################################################

#county data w/ all
data(adworld)
KnowBPolygon(data = read.csv("C:/Users/NickG/Documents/TN_Snails/Master_Datasets/Master_Files/All_Files/County_All.csv", header=TRUE) , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_CountyShape" , layer="TN_co_GCS") , shapenames = "NAME" , admAreas = TRUE, yb = 33.8, yt = 34, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, extent = FALSE, legend.pos = "x", file1 = "All Species per county", file2 = "County Species Estimators", file3 = "County All Standard error of the estimators", jpg = FALSE, curve = "Clench", colscale=rev(heat.colors(100)))

#plot for county species records
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/County Species Estimators.CSV", header=TRUE, encoding="latin1") , admAreas = TRUE, polygonname = "Area" , var = "Records" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_CountyShape" , layer="TN_co_GCS") , shapenames = "NAME" , ini = 1 , end = 1000, yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 10, colscale=rev(heat.colors(100)))

#plot for county species obs.richness
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/County Species Estimators.CSV", header=TRUE, encoding="latin1") , admAreas = TRUE, polygonname = "Area" , var = "Observed.richness" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_CountyShape" , layer="TN_co_GCS") , shapenames = "NAME" , ini = 1 , end = 250, yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 5, colscale=rev(heat.colors(100)))

#plot for county species completeness
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/County Species Estimators.CSV", header=TRUE, encoding="latin1") , admAreas = TRUE, polygonname = "Area" , var = "Completeness" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_CountyShape" , layer="TN_co_GCS") , shapenames = "NAME" , yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 9,  colscale=rev(heat.colors(100)))

#plot for county species slope
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/County Species Estimators.CSV", header=TRUE, encoding="latin1") , admAreas = TRUE, polygonname = "Area" , var = "Slope" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_CountyShape" , layer="TN_co_GCS") , shapenames = "NAME" , yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 9, colscale= heat.colors(100), ndigits = 1)

#############################################################################################################################################################################################################################################################################################################################################################################################
###############################ECOREGION MAPS AND DATA FILES#########################################################################################################################################################################################################################################################################################################################################
#############################################################################################################################################################################################################################################################################################################################################################################################
#############################################################################################################################################################################################################################################################################################################################################################################################

#ecoregion data w/ slugs
data(adworld)
KnowBPolygon(data = read.csv("C:/Users/NickG/Documents/TN_Snails/Master_Datasets/Master_Files/Slug_Files/Georefs_Slugs.csv", header=TRUE) , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_Ecoregion_III" , layer="tn_eco_GCS"), shapenames = "US_L3NAME", admAreas = TRUE,  yb = 33.8, yt = 34, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", file1 = "Slugs per eco", file2 = "Eco Slugs Estimators", file3 = "Eco Slugs Standard error of the estimators", jpg = FALSE, curve = "Clench", colscale=rev(heat.colors(100)))

#plot for eco slugs records
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/Eco Slugs Estimators.CSV", header=TRUE, encoding="latin1") , admAreas = TRUE, polygonname = "Area" , var = "Records" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_Ecoregion_III" , layer="tn_eco_GCS"), shapenames = "US_L3NAME", ini = 1 , end = 1000, yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 2, colscale=rev(heat.colors(100)))

#plot for eco slugs obs.richness
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/Eco Slugs Estimators.CSV", header=TRUE, encoding="latin1"), admAreas = TRUE, polygonname = "Area" , var = "Observed.richness" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_Ecoregion_III", layer="tn_eco_GCS"), shapenames = "US_L3NAME", ini = 1 , end = 250, yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 2, colscale=rev(heat.colors(100)))

#plot for eco slugs completeness
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/Eco Slugs Estimators.CSV", header=TRUE, encoding="latin1") , admAreas = TRUE, polygonname = "Area" , var = "Completeness" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_Ecoregion_III" , layer="tn_eco_GCS"), shapenames = "US_L3NAME", yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 9, colscale=rev(heat.colors(100)))

#plot for eco slugs slope
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/Eco Slugs Estimators.CSV", header=TRUE, encoding="latin1") , admAreas = TRUE, polygonname = "Area" , var = "Slope" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_Ecoregion_III" , layer="tn_eco_GCS"), shapenames = "US_L3NAME", yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 9, colscale= heat.colors(100), ndigits = 1)

#############################################################################################################################################################################################################################################################################################################################################################################################

#ecoregion data w/ snails
data(adworld)
KnowBPolygon(data = read.csv("C:/Users/NickG/Documents/TN_Snails/Master_Datasets/Master_Files/Snail_Files/Georefs_Snails.csv", header=TRUE) , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_Ecoregion_III" , layer="tn_eco_GCS"), shapenames = "US_L3NAME", admAreas = TRUE,  yb = 33.8, yt = 34, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", file1 = "Snails per eco", file2 = "Eco Snails Estimators", file3 = "Eco Snails Standard error of the estimators", jpg = FALSE, curve = "Clench", colscale=rev(heat.colors(100)))

#plot for eco snails records
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/Eco Snails Estimators.CSV", header=TRUE, encoding="latin1") , admAreas = TRUE, polygonname = "Area" , var = "Records" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_Ecoregion_III" , layer="tn_eco_GCS"), shapenames = "US_L3NAME", ini = 1 , end = 1000, yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 5, colscale=rev(heat.colors(100)))

#plot for eco snails obs.richness
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/Eco Snails Estimators.CSV", header=TRUE, encoding="latin1"), admAreas = TRUE, polygonname = "Area" , var = "Observed.richness" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_Ecoregion_III", layer="tn_eco_GCS"), shapenames = "US_L3NAME", ini = 1 , end = 250, yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 5, colscale=rev(heat.colors(100)))

#plot for eco snails completeness
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/Eco Snails Estimators.CSV", header=TRUE, encoding="latin1") , admAreas = TRUE, polygonname = "Area" , var = "Completeness" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_Ecoregion_III" , layer="tn_eco_GCS"), shapenames = "US_L3NAME", yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 9, colscale=rev(heat.colors(100)))

#plot for eco snails slope
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/Eco Snails Estimators.CSV", header=TRUE, encoding="latin1") , admAreas = TRUE, polygonname = "Area" , var = "Slope" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_Ecoregion_III" , layer="tn_eco_GCS"), shapenames = "US_L3NAME", yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 9, colscale= heat.colors(100), ndigits = 1)

#############################################################################################################################################################################################################################################################################################################################################################################################

#ecoregion data w/ micros
data(adworld)
KnowBPolygon(data = read.csv("C:/Users/NickG/Documents/TN_Snails/Master_Datasets/Master_Files/Micro_Files/Georefs_Micros.csv", header=TRUE) , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_Ecoregion_III" , layer="tn_eco_GCS"), shapenames = "US_L3NAME", admAreas = TRUE,  yb = 33.8, yt = 34, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", file1 = "Micros per eco", file2 = "Eco Micros Estimators", file3 = "Eco Micros Standard error of the estimators", jpg = FALSE, curve = "Clench", colscale=rev(heat.colors(100)))

#plot for eco micros records
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/Eco Micros Estimators.CSV", header=TRUE, encoding="latin1") , admAreas = TRUE, polygonname = "Area" , var = "Records" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_Ecoregion_III" , layer="tn_eco_GCS"), shapenames = "US_L3NAME", ini = 1 , end = 1000, yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 10, colscale=rev(heat.colors(100)))

#plot for eco micros obs.richness
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/Eco Micros Estimators.CSV", header=TRUE, encoding="latin1"), admAreas = TRUE, polygonname = "Area" , var = "Observed.richness" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_Ecoregion_III", layer="tn_eco_GCS"), shapenames = "US_L3NAME", ini = 1 , end = 250, yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 2, colscale=rev(heat.colors(100)))

#plot for eco micros completeness
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/Eco Micros Estimators.CSV", header=TRUE, encoding="latin1") , admAreas = TRUE, polygonname = "Area" , var = "Completeness" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_Ecoregion_III" , layer="tn_eco_GCS"), shapenames = "US_L3NAME", yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 9, colscale=rev(heat.colors(100)))

#plot for eco micros slope
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/Eco Micros Estimators.CSV", header=TRUE, encoding="latin1") , admAreas = TRUE, polygonname = "Area" , var = "Slope" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_Ecoregion_III" , layer="tn_eco_GCS"), shapenames = "US_L3NAME", yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 9, colscale= heat.colors(100), ndigits = 1)

#############################################################################################################################################################################################################################################################################################################################################################################################

#ecoregion data w/ macros
data(adworld)
KnowBPolygon(data = read.csv("C:/Users/NickG/Documents/TN_Snails/Master_Datasets/Master_Files/Macro_Files/Georefs_Macros.csv", header=TRUE) , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_Ecoregion_III" , layer="tn_eco_GCS") , shapenames = "US_L3NAME" , admAreas = TRUE,  yb = 33.8, yt = 34, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, extent = FALSE, legend.pos = "x",  file1 = "Macros per eco", file2 = "Eco Macros Estimators", file3 = "Eco Macros Standard error of the estimators", jpg = FALSE, curve = "Clench", colscale=rev(heat.colors(100)))

#plot for eco macros records
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/Eco Macros Estimators.CSV", header=TRUE, encoding="latin1") , admAreas = TRUE, polygonname = "Area" , var = "Records" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_Ecoregion_III" , layer="tn_eco_GCS"), shapenames = "US_L3NAME", ini = 1 , end = 1000, yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 10, colscale=rev(heat.colors(100)))

#plot for eco macros obs.richness
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/Eco Macros Estimators.CSV", header=TRUE, encoding="latin1"), admAreas = TRUE, polygonname = "Area" , var = "Observed.richness" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_Ecoregion_III", layer="tn_eco_GCS"), shapenames = "US_L3NAME", ini = 1 , end = 250, yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 5, colscale=rev(heat.colors(100)))

#plot for eco macros completeness
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/Eco Macros Estimators.CSV", header=TRUE, encoding="latin1") , admAreas = TRUE, polygonname = "Area" , var = "Completeness" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_Ecoregion_III" , layer="tn_eco_GCS"), shapenames = "US_L3NAME", yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 9, colscale=rev(heat.colors(100)))

#plot for eco macros slope
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/Eco Macros Estimators.CSV", header=TRUE, encoding="latin1") , admAreas = TRUE, polygonname = "Area" , var = "Slope" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_Ecoregion_III" , layer="tn_eco_GCS"), shapenames = "US_L3NAME", yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 5, colscale= heat.colors(100), ndigits = 1)

#############################################################################################################################################################################################################################################################################################################################################################################################

#ecoregion data w/ all
data(adworld)
KnowBPolygon(data = read.csv("C:/Users/NickG/Documents/TN_Snails/Master_Datasets/Master_Files/All_Files/Georefs_All.csv", header=TRUE) , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_Ecoregion_III" , layer="tn_eco_GCS") , shapenames = "US_L3NAME" , admAreas = TRUE,  yb = 33.8, yt = 34, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, extent = FALSE, legend.pos = "x",  file1 = "All per eco", file2 = "Eco All Estimators", file3 = "Eco All Standard error of the estimators", jpg = FALSE, curve = "Clench", colscale=rev(heat.colors(100)))

#plot for eco all records
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/Eco All Estimators.CSV", header=TRUE, encoding="latin1") , admAreas = TRUE, polygonname = "Area" , var = "Records" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_Ecoregion_III" , layer="tn_eco_GCS"), shapenames = "US_L3NAME", ini = 1 , end = 1000, yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 10, colscale=rev(heat.colors(100)))

#plot for eco all obs.richness
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/Eco All Estimators.CSV", header=TRUE, encoding="latin1"), admAreas = TRUE, polygonname = "Area" , var = "Observed.richness" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_Ecoregion_III", layer="tn_eco_GCS"), shapenames = "US_L3NAME", ini = 1 , end = 250, yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 5, colscale=rev(heat.colors(100)))

#plot for eco all completeness
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/Eco All Estimators.CSV", header=TRUE, encoding="latin1") , admAreas = TRUE, polygonname = "Area" , var = "Completeness" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_Ecoregion_III" , layer="tn_eco_GCS"), shapenames = "US_L3NAME", yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 9, colscale=rev(heat.colors(100)))

#plot for eco all slope
data(adworld)
MapPolygon(data = read.csv2("C:/RWizard/Data/Eco All Estimators.CSV", header=TRUE, encoding="latin1") , admAreas = TRUE, polygonname = "Area" , var = "Slope" , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_Ecoregion_III" , layer="tn_eco_GCS"), shapenames = "US_L3NAME", yb = 37, yt = 37.2, minLon = -90.4, maxLon = -81.6, minLat = 34.95, maxLat = 36.7,  cex.legend = 0.9, cex.axis = 0.9, legend.pos = "x", jpg = FALSE, breaks = 5, colscale= heat.colors(100), ndigits = 1)

#############################################################################################################################################################################################################################################################################################################################################################################################
###############################SURVEY QUALITY#########################################################################################################################################################################################################################################################################################################################################
#############################################################################################################################################################################################################################################################################################################################################################################################
#############################################################################################################################################################################################################################################################################################################################################################################################

#Eco Slug SurveyQ
data(adworld)
SurveyQ(data = read.csv2("C:/RWizard/Data/Eco Slugs Estimators.CSV", header=TRUE, encoding="latin1"), shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_Ecoregion_III" , layer="tn_eco_GCS") , shapenames = "US_L3NAME" , admAreas = TRUE, Areas = "Area")

#Eco Snail SurveyQ
data(adworld)
SurveyQ(data = read.csv2("C:/RWizard/Data/Eco Snails Estimators.CSV", header=TRUE, encoding="latin1"), shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_Ecoregion_III" , layer="tn_eco_GCS") , shapenames = "US_L3NAME" , admAreas = TRUE, Areas = "Area")

#Eco Micro SurveyQ
data(adworld)
SurveyQ(data = read.csv2("C:/RWizard/Data/Eco Micros Estimators.CSV", header=TRUE, encoding="latin1"), shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_Ecoregion_III" , layer="tn_eco_GCS") , shapenames = "US_L3NAME" , admAreas = TRUE, Areas = "Area")

#Eco Macro SurveyQ
data(adworld)
SurveyQ(data = read.csv2("C:/RWizard/Data/Eco Macros Estimators.CSV", header=TRUE, encoding="latin1"), shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_Ecoregion_III" , layer="tn_eco_GCS") , shapenames = "US_L3NAME" , admAreas = TRUE, Areas = "Area")

#Eco All SurveyQ
data(adworld)
SurveyQ(data = read.csv2("C:/RWizard/Data/Eco All Estimators.CSV", header=TRUE, encoding="latin1"), shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_Ecoregion_III" , layer="tn_eco_GCS") , shapenames = "US_L3NAME" , admAreas = TRUE, Areas = "Area")

##############################################################################################################

#County Slugs SurveyQ
data(adworld)
SurveyQ(data = read.csv2("C:/RWizard/Data/County Slugs Estimators.CSV", header=TRUE, encoding="latin1") , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_CountyShape" , layer="TN_co_GCS") , shapenames = "NAME", Areas = "Area")

#County Snail SurveyQ
data(adworld)
SurveyQ(data = read.csv2("C:/RWizard/Data/County Snails Estimators.CSV", header=TRUE, encoding="latin1") , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_CountyShape" , layer="TN_co_GCS") , shapenames = "NAME", Areas = "Area")

#County Micro SurveyQ
data(adworld)
SurveyQ(data = read.csv2("C:/RWizard/Data/County Micros Estimators.CSV", header=TRUE, encoding="latin1") , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_CountyShape" , layer="TN_co_GCS") , shapenames = "NAME", Areas = "Area")

#County Macro SurveyQ
data(adworld)
SurveyQ(data = read.csv2("C:/RWizard/Data/County Macros Estimators.CSV", header=TRUE, encoding="latin1") , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_CountyShape" , layer="TN_co_GCS") , shapenames = "NAME", Areas = "Area")

#County All SurveyQ
data(adworld)
SurveyQ(data = read.csv2("C:/RWizard/Data/County Species Estimators.CSV", header=TRUE, encoding="latin1") , shape = rgdal::readOGR("C:/Users/NickG/Documents/TN_Snails/TN_CountyShape" , layer="TN_co_GCS") , shapenames = "NAME", Areas = "Area")

