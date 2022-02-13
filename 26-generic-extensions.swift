struct alpha
{
    var a=20
    var b="hello"
}
extension alpha
{
    func x()
    {
        print("ok")
    }
}
var l=alpha()
l.x()

//================================================================

extension String
{
    func rev() -> String
    {
    var a=""
        for i in self
        {
            a="\(i)\(a)"
        }
    return a
    }
}

print("hello".rev())

//==============================================================

class dummy <T>
{
    var a:T
    var b:T
    
    init(_ a:T, _ b:T)
    {
        self.a=a
        self.b=b
    }
    
    func Print()
    {
        print("a: \(a), b: \(b)")
    }
    
}

extension dummy where T: demo {
    func add()
    {
        print(a.a+Int(a.c))
    }
}

extension dummy:Equatable where T:Equatable   //Conditional Conformance
{
    static func == (_ d1:dummy, _ d2:dummy) -> Bool
    {
        if (d1.a == d2.a) && (d1.b == d2.b)
        {
            return true
        }
        return false
    }
}

class demo 
{
    var a:Int=20
    var b:String="demo"
    var c:Double=23.4
    
    func Print()
    {
        print("a: \(a), b: \(b), c: \(c)")
    }
}

struct demo2
{
    var a:String="Demo2"
    var b:String="demo2"
    
    func Print()
    {
        print("a: \(a), b: \(b)")
    }
}

var x=dummy<Int>(1,2)
var x1=dummy<Int>(1,3)

if x==x1
{
    print("Same")
}
else
{
    print("Not same")
}

var y=demo()
var y1=demo()
y1.a=40
y1.b="demo2"
y1.c=54.3
var z=dummy<demo>(y,y1)
z.Print()

var m=demo2()
var m1=demo2()
m1.a="NemDemo2"
m1.b="Newdemo2"
var z1=dummy<demo2>(m,m1)
z1.Print()
print(z1.a)

z.add()  //z1.add() //will give error

//==============================================================

protocol ip
{
    associatedtype t
    func alpha(a:t)
}

