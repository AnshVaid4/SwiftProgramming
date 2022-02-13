var dict = ["2":"two", "3": "three" ]
print(dict)
dict["5"]="5"
dict["3"]="03"
print(dict)
dict.updateValue("four", forKey: "4")
print(dict)


//============================================================

// Dictionary (key, value pair) and Set {Unordered Collection}
var dictFiles = ["pdf":"Portable Document Format","doc":"Microsoft Word Document","exe":"Windows Executable"]

print(dictFiles)

var dictRStation = [Int:String]()

// inserting/updating values in dictionary
dictRStation[10] = "Ludhiana"
dictRStation[8] = "Jalandhar"
dictRStation[11] = "Patiala"

dictRStation[8] = "Phagwara" // updating values

// inserting/updating values using updateValue Method
var orig = dictRStation.updateValue("Canada",forKey: 10) // String (as per Value data type) is the return type of updateValue method

print(orig ?? "") // String?

orig = dictRStation.updateValue("UK",forKey: 12)
print(orig ?? "No original Value available")

// remove/delete values from dictionary using removeValue Method
var orig1 = dictRStation.removeValue(forKey: 9) //returns the value which is being deleted
print(orig1 ?? "")
print(dictRStation)

// remove/delete values from dictionary
dictRStation[8] = nil
print(dictRStation)

print(dictRStation.isEmpty) // Bool

var dictApp:[Int:Int] = [:]
print(dictApp.isEmpty)

//iterating dictionary
print(dictRStation)
for i in dictRStation
{
    print(i)
    print(i.key)
    print(i.value)
}