uniqueSAPA <- function(x) {
    dupli <- duplicated(x[,"RID"])+0  # Codes the duplicates as 1
    x <- x[dupli==0,] #Keep the unique RIDs
    return(x)
  }