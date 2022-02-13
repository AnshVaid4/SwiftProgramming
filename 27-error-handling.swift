enum myerror:Error
{
    case GlobalError
    case ZeroMember
    case DivideBy0 (D: String)
}

class alpha
{
    var a=0
    var b=""
    
    func cross() throws
    {
        if a==0
        {
            throw myerror.ZeroMember   //throw Error or Error.Error will be error, cz Error is a protocol, and enum is must to be created
        }
        else
        {
            if a>0
            {
                let temp=a
                a=((a*10)+17)
                print("a changed from \(temp) to \(a)")
            }
            else
            {
                throw myerror.GlobalError
            }
        }
        
    }
}

var x=alpha()
x.a = -2
x.b="Swift"
do
{
    try x.cross()
}
catch  //catch is mandatory after try block if the error is expected to be thrown by the block
{
    print("GlobalError thrown")
}

var x1=alpha()
x1.a=20
x1.b="C++"
do
{
    try x1.cross()
}
catch
{
    print("GlobalError thrown")
}

var x2=alpha()
do
{
    try x2.cross()
}
catch
{
    print("ZeroMember thrown")
}

//=======================================================================

func divide(_ a:Int, _ b:Int) throws -> Int 
{
    if b==0
    {
        throw myerror.DivideBy0 (D: "Denominator can't be 0")
    }
    if b < -9999
    {
        throw myerror.GlobalError
    }
    return a/b
}

do
{
    try print(divide(2,0))
}
catch myerror.DivideBy0 (let D)
{
    print(D)
}

do
{
    try print(divide(2,-10000))  //myerror.DivideBy0 (let D) is only for a paticular case, but in this case GlobalError is occuring, which needs
                                 //to be caught. But catch myerror.DivideBy0 (let D) doesn't catches GlobalError, so the program crashes. But 
                                 //removing myerror.DivideBy0 (let D) part after catch can handle any error, due to which program doesn't crashes
    
}
catch myerror.DivideBy0 (let D)
{
    print(D)
}
catch
{
    print("GlobalError occured")
}

//===================================================================

