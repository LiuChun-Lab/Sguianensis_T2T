library("DESeq2")
countdata <- read.table("sampleA-VS-sampleB.deseq2.list",skip=1)
len <- length(countdata)
rownames(countdata) <- countdata[,1]
countdata <- countdata[,2:len]
type <- c("Control","Control","Control","Treat","Treat","Treat")
coldata <- data.frame(type)
rownames(coldata) <- c("sampleA-1","sampleA-22","sampleA-3","sampleB-1","sampleB-2","sampleB-3")
colnames(countdata) <- c("sampleA-1","sampleA-2","sampleA-3","sampleB-1","sampleB-2","sampleB-3")

dds <- DESeqDataSetFromMatrix(countData=countdata, colData=coldata, design = ~ type)
dds <- DESeq(dds,quiet=TRUE)
sizefactor <- sizeFactors(dds)
result <- results(dds, cooksCutoff=FALSE, independentFiltering=FALSE, pAdjustMethod="BH")
write.table(result, file="sampleA-VS-sampleB.deseq2.output", quote=FALSE, sep="\t")
write.table(sizefactor, file="sampleA-VS-sampleB.deseq2.sizefactors", quote=FALSE, sep="\t")
