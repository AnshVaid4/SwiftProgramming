func Print()  //Default function
{
    print("Hello World 1")
}
Print()

//=====================================================================================

func Print(x:String)  //Paramaterized function
{
    print("Hello \(x) 2")
}
Print()       //Function Overloading
Print(x:"AV")

//=====================================================================================

func Print(_ x:String)    //Function overloading part 2
{
    print("Namaste \(x)")
}
Print()       //Function Overloading
Print(x:"AV") 
Print("AV")

//=====================================================================================

/*    REMEMBER OVERLOADING CANNOT BE JUDGED FROM THE RETURN TYPE OF ANY FUNCTION, RATHER IT IS JUDGED FROM THE FUNCTION NAME AND PARAMETERS.
func Print(_ x:String) -> String     
{
    return x
}
Print("Hello AV")
*/

//=====================================================================================

func Add(_ x:Int, _ y:Int=4) -> Int    //Defining a return type with a default parametarized function
{
    print("x=\(x) and y=\(y)")
    return x+y
}
print(Add(2,3))
print(Add(3))
print(Add(3,5))

//=====================================================================================

func Add( x:Int ...) //here x will becomme an array collection
{
    var sum=0
    for i in x
    {
        sum=sum+i
    }
    print(sum)
}
Add(x:2,3,4)

func Add2(_ x:Int ...)      //accepting more than one Integers
{
    print(type(of:x))
    print(x[0])  //print(x.0) is error
    var sum=0
    for i in x
    {
        sum=sum+i
    }
    print(sum)
}
Add2(2,3,4,6)
//Add2([2,3,4,6]) Invalid

func Add3(_ x:[Int] ) -> Int        //accepting an array as parameter
{
    print(type(of:x))
    var sum=0
    for i in x
    {
        sum=sum+i
    }
    return sum
}
print(Add3([2,3,8,4]))

func Add4(_ x:Int...) -> (String, Int,Int,String)  //Returning exact 4 values in the form of tuple. But you have to mention the data type for each 
{                                                   //index of tuple in same order
    return ("First",x[0],x[x.count-1],"Last")
}
print(Add4(2,3,4,5,6))

func num(_ x:Int) -> [Int]  //Returning two or more values using array where unlike tuple we need to give the data type only once, but can't 
{                           //return other data types in particular data type array in integer array unlike tuple like (Int,Int,String,Float)
    var a:[Int] = []
    for i in 0...x
    {
        a.append(i)
    }
    return a
}
print(num(10))

//=====================================================================================

func sub(x: inout Int, y:inout Int)   //Call by value, creating allias of a,b
{
    x=x+20
    print(x-y)
}
var a=23
var b=12
sub(x:&a,y:&b)
print(a)

//=====================================================================================

func ADD(_ x:Int, _ y:Int=2, _ z :Int=2) -> Int      //The rightmost value should have default values in continuation, otherwise leave them empty
{
    print("x: \(x), y: \(y), z: \(z)")
    return x+y+z
}
print(ADD(8,3))  //print(ADD(x8,z:3))
print(ADD(8))    //print(ADD(x:8)) Also worked if _ is not there

