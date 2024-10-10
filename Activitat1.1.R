if (!require(GEOquery)) {
  BiocManager::install("GEOquery")
}
require(GEOquery)
gds <- getGEO("GDS2406") #descarreguem les dades en format gds
head(Meta(gds))
eset <- GDS2eSet(gds,do.log2=FALSE) #passem la informació a un expressionset  
eset
colnames(eset)
pData(eset)
pData(eset)[,3]
new_colnames <- paste(c(rep("lung_E18_wildtype_rep", 2), rep("lung_E18_sftpc-nmyc_rep", 2)), c(1,2))

eset
pData(eset)
head(exprs(eset))
colnames(eset) <- new_colnames
