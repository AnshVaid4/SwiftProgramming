var setStationCodes:Set = ["LDH","PGW","JUC","ASR","DLI","VZG"]
var setAirportCodes:Set = ["LUD","PGW","JAL","ASR","DEH","HYD","VIZ"]

print("Union",setStationCodes.union(setAirportCodes))
print("Intersection",setStationCodes.intersection(setAirportCodes))         //common part
print("Difference",setStationCodes.symmetricDifference(setAirportCodes))    //leaving common, rest everything from both sets
print("Subtracting",setStationCodes.subtracting(setAirportCodes))           //Leaving common, rest everyting from 1st set
print("Subtracting",setAirportCodes.subtracting(setStationCodes))
print("Original sets are not changed: \(setStationCodes) AND \(setAirportCodes)")

//formUnion, formIntersection, formDifference, subtract does the changes in the source set

