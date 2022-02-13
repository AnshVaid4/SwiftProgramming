func sayHello(user: String = "Guest") { // default value for a parameter
print("Hello \(user) !!")
}

sayHello(user: "Kite")
sayHello()

func printArray(values: Int...) { // variadic parameter
for i in values {
print(i)
}
}

printArray(values: 1,2,3,4,5,56,6,7,87,8,98,98)
// var arr=[10,20,30,40,50,60,70,80,90,100] //main.swift:16:20: error: cannot convert value of type '[Int]' to expected argument type 'Int'
// printArray(values: arr)                  // printArray(values: arr)
//same with passing tuple

func swap(v1: inout Int, v2: inout Int) {
var temp = v1
v1 = v2
v2 = temp
}

var x = 20
var y = 10

print(x, y, " before swapping")

swap(v1: &x,v2: &y)

print(x, y, " after swapping")
