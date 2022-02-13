var set1 = Set([1,3,5,7,9,11,13,11,13]) // Type inference

var set2:Set = [2,4,6,8,10,12,12,2,4] // Type inference

var set3 = Set<String>() // Explicit Type
print(set1)
print(set2)
print(set3, "Empty: \(set3.isEmpty)")

set3.insert("LUD")
print(set3)

var res = set3.insert("LUD")
if res.inserted {
print("Value inserted")
}
res = set3.insert("LUD")
if !res.inserted {
print("Duplicate value")
}
print(set3)

// contains

print(set3.contains("LDH"))

set3.insert("JAL")
set3.insert("PGW")
set3.insert("ASR")
set3.insert("LPU")

print(set3)
// remove and removeAll
var item = set3.remove("DEL") // String?
print("\(item ?? "Nothing") is removed")

//set3.removeAll()
// set3 = [] // This line will change the data type of set3. False
// print("Empty: \(set3.isEmpty)")

// set3.insert("10")

// iterate
for v in set3 {
print(v)
}

var Set1 = Set([1,3,5,7,9,11,13,11,13,4,8]) // Type inference
var Set2:Set = [2,4,6,8,10,12,12,2,4,11,13,5,7] // Type inference

// union

var unionSet = Set1.union(Set2)
print(Set1, Set2, unionSet)
// formUnion
// set2.formUnion(set1)
// print(set1,set2)

// intersection

var intersectionSet = Set1.intersection(Set2)
print(intersectionSet)

//formIntersection

// set1.formIntersection(set2)
// print(set1)


var sdSet = Set1.symmetricDifference(Set2)
print(Set1, Set2, sdSet.sorted())

// formSymmetricDifference
//set1.formSymmetricDifference(set2)
//print(set1)

// Subtract
var subtractSet = Set2.subtracting(Set1)
print(subtractSet)

set1.subtract(Set2)
print(Set1)


