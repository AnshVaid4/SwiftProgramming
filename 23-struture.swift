struct alpha
{
    var a:Int=0             //Default value to be given if constructor is not created
    var b:String=""
    var c:Float=0
    
    func Print()
    {
        print("A: \(a), B: \(b), C: \(c)")
    }
}

var x=alpha()
x.a=2
x.b="Hello"
x.c=23.2
print("X: \(x), X.A: \(x.a), X.B: \(x.b), X.C: \(x.c)")
x.Print()

//============================================================================

struct beta
{
    var a:Int
    var b:String
    
    init(a:Int=0,b:String="")
    {
        self.a=a
        self.b=b
    }
    
    func Print()
    {
        print("A: \(a), B: \(b)")
    }
}
var y=beta()
var y1=beta(a:10,b:"hello")
print(y,y1)
y.Print()
y1.Print()

//============================================================================
// There is no concept of destructors in structures
/*                                              Inheritance in structures are different from classes. For inheritance in structure, we should first
struct gamma:beta                               create a protocol
{
    var c:Int
    
    init(a:Int, B:String, c:Int=20)
    {
        self.c=c
        super.init(a:self.a,b:B)
    }
    
    func Print()
    {
        print("A: \(a), B: \(b), C: \(c)")
    }
}
var z=gamma(a:23,B:"Laptop")
var z1=gamma(a:52,B:"Screen",c:48)
print(z,z1)
z.Print()
z1.Print()
*/

