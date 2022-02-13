// Collections - Three types (a) Array, Set (Unique values, unordered, Dictionary (Key, Value)


var array1 = [1,2,3,4,5,6]


for item in array1 { // iterating using values
print(item)
}

// for i in 0..<array1.count { // iterating using index
// print(array1[i])
// }

// print(array1)

array1.append(7)

print(array1)

array1.insert(80, at: 2) // insert at INDEX

print(array1)

array1.remove(at: 5)

print(array1)

array1 += [10,20,30] //append

print(array1)

var array2 = [1000,2000,3000]

var array3 = array1 + array2

print(array3)

array3.insert(56,at:array3.count)
print(array3)
//array3[array3.count] = 90000 // error // array3.append(90000) // alternative

array3[2]=56
print(array3)
array3[3...5]=[2,3,4]
print(array3)

array3.removeLast()
print(array3)

array3.removeAll()
print(array3)

array3=[3,4,5,6,7,42,42421,456,23]
print(array3)

var array4=array3[0...3]
print(array4)

array4.shuffle()
print(array4)

array4.sort()
print(array4)


print("\n\n\n")

var multiDArray1 = [[1,2,3],[4,5,6],[7,8,9]]
print(multiDArray1.count)   //number of rows
print(multiDArray1[0].count)//number of columns
print("\n\n\n")

for i in 0..<multiDArray1.count {
for j in 0..<multiDArray1[i].count {
print(multiDArray1[i][j])
}
}

print("\n\n\n")

for i in multiDArray1
{
    print(i) //print all the rows
    for j in i
    {
        print(j)//prints all columns
    }
}

var arr5:[Int] = [] //empty array of Integer type
var arr6 = [Int]() //empty array of Integer type

var multiDArray2:[[Int]] = [[]]  //empty array of Integer type
var multiDArray3 = [[Int]]()     //empty array of Integer type

arr6=Array(repeating:1,count:6)
print(arr6)

multiDArray3=Array(repeating:Array(repeating:1,count:2),count:3)
print(multiDArray3)

arr6.removeAll()
print(arr6.isEmpty)

print(arr6.first ?? "empty first")  //.first and .last are of optional type
print(arr6.last ?? "empty second")



//Closure
print("\n\n\n")
// print(array1)
// array1.sort()
// {
// if($0<$1){
// print($0)} 
// else{
// print($1)}
// }
