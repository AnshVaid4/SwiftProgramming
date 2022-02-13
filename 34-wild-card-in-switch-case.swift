var x = Int(readLine()!)
var y = Int(readLine()!)

var z=(x!,y!)

switch z
{
    case (_,10):print("Point is on y=10")
    case (_,0):print("Point is on x axis")
    case (_,20):print("Point is on y=20")
    case (_,30):print("Point is on y=30")
    case (0,_):print("Point is on y axis")
    case (10,_):print("Point is on x=10")
    case (20,_):print("Point is on x=20")
    case (_,_):print("Point is somewhere on plain")
    default:print("Check the point")
}