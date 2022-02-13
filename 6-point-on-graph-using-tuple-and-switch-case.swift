// var x = Int(readLine()!) ?? "0" can't be used bcz readLine is String Optional type. And ?? "0" will again return nil, cz "0" can't be converted to Int
// var y = Int(readLine()!)

var x = Int.random(in: Int.min...Int.max)
var y = Int.random(in: Int.min...Int.max)
print(x,y)
var point=(x,y)
// print(x!,y!)
// var point=(x!,y!)
switch point  //since point is of (Int,Int) tuple, therefore the cases of (Int,Int) tuple can only be created
{
    case (0..<Int.max,0..<Int.max): print("In first quadrant")
    case (Int.min..<0,Int.min..<0): print("In third quadrant")
    case (Int.min..<0,0..<Int.max): print("In second quadrant")
    case (0..<Int.max,Int.min..<0): print("In fourth quadrant")
    default : print("point")
}


