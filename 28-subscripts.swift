class alpha
{
    var a:[Int] = []
    var b:String
    
    init()
    {
        a=[0]
        b="0"
    }
    
    func add(_ x:Int)
    {
        a.append(x)
    }
    
    func Print()
    {
        for i in a
        {
            print(i, terminator:" ")
        }
        print()
    }
    
    subscript(i:Int) -> Int    //subscript 1
    {
        get
        {
            return a[i]
        }
        set
        {
            a[i]=newValue
        }
    }
    
    subscript(add  num:Int, add2 num2:Int) -> [Int]    //subscript 2
    {
        var x=a
        for i in 0..<x.count
        {
            x[i]=x[i]+num
        }
        return x
    }
}

var x=alpha()
x.add(2)
x.add(3)
x.Print()
x[2]=2      //subscript 1 called
x.Print()
print(x.a[2])
print(x[2])        //print(x[3]) will give index out of range error  //subscript 1 called
print(x[add:3,add2:2])     //subscript 2 called

//==================================================================================

print()
print()

@dynamicMemberLookup
class beta
{
    var a:Int=0
    var b:String="null"
    
    subscript(dynamicMember mem:String) -> Void
    {
        switch(mem)
        {
            case "twenty":
                        a=20
                        b="Twenty"
            case "ten":
                        a=10
                        b="Ten"
            case "thirty":
                        a=30
                        b="Thirty"
            case "zero":
                        a=0
                        b="Zero"
            default:
                    print("Mem not found")
        }
    }
    
    func Print()
    {
        print("a: \(a), b: \(b)")
    }
}

var y=beta()
y.Print()
y.twenty
y.Print()
y.thirty
y.Print()
y.xy            //since xy is not present as a member

