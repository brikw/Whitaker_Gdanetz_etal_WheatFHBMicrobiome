# "Wheat mycobiome dynamics driven by interseasonal crop-crop transfer and Fusarium head blight"
### Whitaker B.K., Gdanetz, K., Vaughan M.M., McCormick S.P., Becker, T.

**DOI HERE**

This repository includes the R code, data files, small scripts, and a meta data file to supplement the manuscript by Whitaker et al. "Wheat mycobiome dynamics driven by interseasonal crop-crop transfer and Fusarium head blight".

The field experiment was conducted at two locations in the midwestern USA (Ewing Illinois & Urbana Illinois). At each site, replicate plots of three soft red winter wheat varieties were planted into fields that had previously been planted to maize (corn). Plant samples were collected over the growing season (Fall 2020 - Summer 2021) and processed for fungal communities using Illumina MiSeq.

The file 'Meta.xlsx' has detailed information about experimental treatments and measured variables for each column in the sample_data() of the phyloseq object 'VarSamp_ps_assn.RData'. The sample matrix is in the file 'VarSamp_SbyE.csv'. The asv matrix after DADA2 processing, but prior curation is in the file 'VarSamp_SbyS.csv'. The final taxonomic assignments after asv curation are provided in the file 'VarSamp_curatedSeqs_qiime2_nbayes_UNITE-edit2.csv'.

The Rmd file 'Disease_Yield.Rmd' assesses plot level yield, fusarium biomass, and deoxynivalenol (DON) content. The community analysis Rmd files should be run in this order: DADA2_pipeline.Rmd > Remove_nonTargetReads.Rmd > Taxonomy_Curation.Rmd > Structure_Richness_Tissue.Rmd > Structure_Richness_Models.Rmd. Then any of : Variation_Partitioning.Rmd, SourceSink.Rmd, DiffAbun.Rmd, Networks.Rmd. 

The /code folder contains the batch and R scripts necessary to run small codes inside R or on an HPC. Data necessary to run the analyses can be found in the /data folder.

Please see the manuscript for details and full reference information.
