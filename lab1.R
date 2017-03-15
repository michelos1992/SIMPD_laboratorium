epsilon <-0.01
# the separation threshold

performanceTable <- rbind(
  c(5.7, 3, 32, 20, 1499),
  c(5.2, 3, 32, 20, 1499),
  c(5.2, 3, 32, 20, 1499),
  c(5, 1, 8, 8, 349),
  c(5, 1, 8, 5, 449),
  c(5, 1, 16, 8, 599),
  c(5.7, 3, 32, 20, 1749),
  c(5, 1, 16, 8, 549),
  c(4.7, 1, 8, 5, 349),
  c(5.2, 3, 32, 20, 1499)
)

rownames(performanceTable) <- c(
  "Microsoft Lumia 950 XL DS LTE",
  "Microsoft Lumia 950 DS LTE (biały)",
  "Microsoft Lumia 950 LTE",
  "Microsoft Lumia 640 Dual Sim",
  "Microsoft Lumia 535 Dual Sim",
  "Microsoft Lumia 650",
  "Microsoft Lumia 950 XL LTE",
  "Microsoft Lumia 650 DS",
  "Microsoft Lumia 550 LTE",
  "Microsoft Lumia 950 DS LTE (czarny)")

colnames(performanceTable) <- c(
  "MaxDisplaySize",
  "MaxRAM",
  "MaxROM",
  "MaxPhoto",
  "Price")
# ranks of the alternatives
alternativesRanks <- c(1,2,3,4,5,6,7,8,9,10)
names(alternativesRanks) <- row.names(performanceTable)
# criteria to minimize or maximize
criteriaMinMax <- c("max","max","max","max","min")
names(criteriaMinMax) <- colnames(performanceTable)
x<-additiveValueFunctionElicitation(performanceTable,
                                    criteriaMinMax, epsilon,
                                    alternativesRanks = alternativesRanks)
print(x)
