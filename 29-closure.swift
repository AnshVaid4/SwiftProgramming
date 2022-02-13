var a = { ()  in
    print("This is basic closure.")
}
a()

var b = { (_ a:String) -> String in
    return "Hello \(a)"
}
print(b("Ansh"))

//============================================================================================

func x(one: () -> Void) //here return type for closure is important, even if it is void
{                       //the above line represents that x function is needing a parameter one, which will call a closure with no parameter
    one()               //and no return type
}

x(one: a)

func x(one: (String) -> String, two:String) ->String
{
    return one(two)
}
print(x(one:b,two:"Ansh"))

//============================================================================================

var c = {  (_ i:Int, _ j:String) -> Void in
    for i in 0..<i
    {
        print("\(j) : \(i)")
    }
}
c(3,"Hello")

func x(one: (Int,String) -> Void, two:Int, three:String)
{
    one(two,three)
}

x(one:c, two:4, three:"Loop")  //since no value is returned therefore using it in print will print (), i.e. nothing

func y(one: (Int,String) -> Void, two:Int, three:String) -> String
{
    one(two,three)
    return "OVER"
}

print(y(one:c, two:4, three:"Swift")) //since in this the value is returned, even though the closure is Void type, using it in print is obvio

//============================================================================================

var d = { (_ a:Int, _ b:Int) -> Int in
    return a*b
}
print(d(2,3))

func mul(one: (Int, Int) -> Int, two:Int, three:Int) -> Int  //since the closure has return type, therefore it is obvious that this function
{                                                            //should also return the value, otherwise no error is produces, and no result is visible
   return one(two,three)
}
print(mul(one:d, two:5, three:10))

//===========================================================================================
//to be done. Shorthand concept

// var e = { (_ a:String, _ b:Int) -> Void in
//     print("\(a) \(b)")
// }

// e("twenty", 20)

// func x1(one: {print($0," ", $1)})


// x1("Thirty", 30)

//===========================================================================================

var xx = { (a:String) -> Void in
    print(a)
    
}

func exec(s:String, handler: (String) -> Void)
{
    handler(s)
}

exec(s:"Hello", handler:xx)

exec(s:"Other Way"){   //s in // //expanding closures 
    print("This is \($0)") //if not using $0 then we have to explicitly enter the parameter name, _ in, otherwise error
}

//-----------------------------------------------------------------------------------------

var yy={ () -> Void in
print("Default")
}

func exec2(handler: () -> Void)
{
    handler()
}

exec2(handler:yy)

exec2{
    print("Default2")
}
//OR exec2(handler: {print("Default2")})

//===========================================================================================

var names = ["Raj", "Disha", "Mohit", "Arun", "Rajesh Sharma", "Smith Johnson"]

print(names)

var sortedNames = names.sorted()

print(sortedNames)

var sortedNames1 = names.sorted {
    $0 > $1
    //$1 < $0
    //$1.count < $0.count
    //$1.count > $0.count
}

names.forEach { //just like => for i in names { print(i)}
    print($0)
}
//hasPrefix("A")
//map() returns an array updated with the value, keeps nil values and optional vaues
//compactMap removes nil values and convert optional type to exact type
//filter returns filtered data
//first returns first value in collection
//reduce for adding or multiply all elements in collection

var prices = [3.3, 45.76, 34.23, 60.80, 90.10, 81.99, 4.25]

var addone = prices.map {
    $0+1
}

print(addone)

var largePrices = prices.filter {
    $0 > 50
}

print(largePrices)

var stocks = [4:800, 50:45, 100:1000, 45:56, 500:15]

let amount = stocks.reduce(0) {
    $0 + ($1.key * $1.value)
}

print(amount)

//==================================================================================================

//mutating functions

struct TestType {
//typealias getTwoValueClosure = ( (Int, Int) -> Int ) //create a typealias

    var numOne = 8
    var numTwo = 5
    
    var results = 0

    mutating func getResult(handler: (Int,Int)->Int /*getTwoValueClosure*/) -> Int {  //Function is updating the value of structure variable, therefore it should be
        results = handler(numOne, numTwo)                       //mutating function
        return results
    }
    
}

var max = { (p1: Int, p2: Int) -> Int in
    if p1>p2 {
        return p1
    }
    else {
        return p2
    }
}

var add = { (a:Int, b:Int) -> Int in 
    return a+b
}

var sub = { (a:Int, b:Int) -> Int in
    return a-b
}


var test = TestType()

print(test.getResult(handler: max))
print(test.getResult(handler: add))
print(test.getResult(handler: sub))

//var test2:TestType.getTwoValueClosure={
// return a+b}

