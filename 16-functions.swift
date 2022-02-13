
func sayHello() {
print("Hello")
}

sayHello()

// single parameter function
func sayHello(name: String) {
print("Hello \(name) !!")
}

sayHello(name: "World") // must include label for actual parameter


func greetUser(_ user: String,_ greet: String) {
print("\(greet) \(user) !!")
}
func greetUser(user: String,greet: String) {
print("\(greet) \(user) !!")
}

greetUser(user: "Ansh",greet: "Good Morning")

func minMax(numberList: [Int]) -> [Int] {
var min = numberList[0]
var max = numberList[1]
for v in numberList {
if min > v {
min = v
}
if max < v {
max = v
}
}
return [min,max]
// 1. There can be multiple return values True
// 2. There can be multiple return types False
//Function overloading can be done by using _ with same formal parameters, same no. of parameters but different names of formal parameters,
//same no. of parameters with name of formal parameters but different data types. There is no relation with return type in function overloading.
}
var arr = [1,2,34,45,5,6,7,8,88,7,7,6,65,54,4,4,34]
print(minMax(numberList: arr))

func minMax(numberList: Int...) -> (Int,Int) { // variadic parameters and return a tuple
var min = numberList[0]
var max = numberList[1]
for v in numberList {
if min > v {
min = v
}
if max < v {
max = v
}
}
return (min,max)
}
print(minMax(numberList: 54,67,78,345,98,34,890,23))
