# "Wheat mycobiome dynamics driven by interseasonal crop-crop transfer and Fusarium head blight"
### Whitaker B.K., Gdanetz, K., Vaughan M.M., McCormick S.P., Becker, T.

**DOI HERE**

This repository includes the R code, data files, small scripts, and a meta file to supplement the manuscript by Whitaker et al. "Wheat mycobiome dynamics driven by interseasonal crop-crop transfer and Fusarium head blight".

The field experiment was conducted at two locations in the midwestern USA (Ewing Illinois & Urbana Illinois). At each site, replicate plots of three soft red winter wheat varieties were planted into fields that had previously been planted to maize (corn).

**DETAILS** Metadata file, sample matrix, asv matrix, taxonomy matrix.

The R/Rmd files should be run in this order: DADA2_pipeline.Rmd > Remove_nonTargetReads.Rmd > Taxonomy_Curation.Rmd > Structure_Richness_Tissue.Rmd > Structure_Richness_Models.Rmd

The /code folder contains the batch and R scripts necessary to run small codes inside R or on an HPC. Data necessary to run the analyses can be found in /data folder.

Please see the manuscript for details and full reference information.
