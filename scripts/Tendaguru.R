names <- read.csv("namesAll.CSV", sep=";")
names2 <- names[(1:47),(1:15)]

table(names2$clade)
table(names2$taxon.status)
table(names2$type)
table(names2$etymology)
table(names2$collab.network)
table(names2$year)
table(names2$author.s.)


names2$yearType <- paste(names2$year, names2$etymology)
allSpecies <- names2[(names2$type=="species"),]
allGenera <- names2[(names2$type=="genus"),]
allGenera$yearEt <- paste(allGenera$year, allGenera$etymology)
allSpecies$yearEt <- paste(allSpecies$year, allSpecies$etymology)
table(allSpecies$year)
table(allGenera$year)
table(allSpecies$etymology)
table(allGenera$etymology)
table(names2$yearType)
table(allGenera$yearEt)
table(allSpecies$yearEt)
table(names2$author.s.base)
table(allGenera$author.s.base)
table(allSpecies$author.s.base)
table(names2$language)
table(allGenera$language)
table(names2$etymology.type)
