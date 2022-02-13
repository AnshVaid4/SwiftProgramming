var x = Int(readLine()!)
var y = Int(readLine()!)
print(x!,y!)
var point=(x!,y!) // tuple
print(point)

switch point {
case (0,0):
print("\(point) is at origin.")
case let (x1,y1) where x1==y1:
print("\(point) is at a line with x = y.")
default:
break
}

