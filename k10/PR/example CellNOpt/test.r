#Initially we call our useful packages and then load the data and the prior knowledge.
#library(CellNOptR)
#library(igraph)

#data("ToyModel", package="CellNOptR")
#data("CNOlistToy", package="CellNOptR")
#pknmodel = ToyModel
#cnolist = CNOlist(CNOlistToy)

#plotModel(model = pknmodel, CNOlist = cnolist)

#As a second step, the model has to be pre-processed (commpressed and then expanded), before runing the optimisation.
#model = preprocessing(cnolist, pknmodel)

#res = gaBinaryT1(cnolist, model, verbose=FALSE)


#Results and the optimal sub-model then can then be plotted after calling the following functions:
#cutAndPlot(cnolist, model, list(Res$bString))

#plotModel(model, cnolist, res$bString)

# Same as above and HTML report
#CNORwrap(name="Toy",
#namesData=list(CNOlist="ToyData",model="ToyModel"),
#data=CNOlistToy, model=pknmodel)

library(CellNOptR)
ToyModel=readSIF("kegg.sif")
CNOlistToy=CNOlist("data_MIDAS_PR.csv")
indicesToy<-indexFinder(CNOlistToy,ToyModel,verbose=FALSE)
toyComp<-compressModel(ToyModel,indicesToy)
plotModel(toyComp,CNOlistToy)
writeSIF(toyComp, "kegg_cmpr.sif")

