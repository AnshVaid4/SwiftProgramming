/*in class an allias to the same memory is created as soon as you do var x=y where y is an object of some class. So the function 
print(isKnownUniquelyReferenced(&x)) or print(isKnownUniquelyReferenced(&y) will tell you that the memory has only one reference or not.
[[[[ If you try to change the value of member of any of the object, it will be reflected for both because both identifiers refer same memory.
That's why it is always called that class is reference class. ]]]] So in this case it will give false because it has currently two 
identifiers(x and y) for the same memory. So if you make one of them nil (say x=nil) then print(isKnownUniquelyReferenced(&y)) will give true 
and print(isKnownUniquelyReferenced(&x)) will return false because this identifier does not exist any more, and now if you do y=nil then the 
deinitializer will be called. And now if you do print(isKnownUniquelyReferenced(&x)) or print(isKnownUniquelyReferenced(&y)) it will return only
false because these two identifiers dn't exists any more. And if you try the datamembers of any of the two(which are same) will crash the program.*/

//ARC=Automatic Reference Count

func x(_ ob:a)
{
    ob.x="Changed"
    ob.y=400
    print(isKnownUniquelyReferenced(&obj))
}

class a
{
    var x:String
    var y:Int
    
    init(_ x:String="blank", _ y:Int=0)
    {
        self.x=x
        self.y=y
        print("Initialized object of a() class")
    }
    
    deinit
    {
        print("Deinitialized object of a() class")
    }
    
    func Print()
    {
        print("\(x) \(y)")
    }
}

var obj:a?=a("Hello",250)
print(isKnownUniquelyReferenced(&obj))
x(obj!)
obj!.Print()
var obj2=obj
obj2!.x="OKK"
// obj = nil
print(isKnownUniquelyReferenced(&obj2))
obj!.Print()
obj2!.Print()
obj!.x="OK"
obj!.Print()
obj2!.Print()
print(isKnownUniquelyReferenced(&obj2))
obj2 = nil
obj=nil
//abj2!.x="O" crash the program
print(isKnownUniquelyReferenced(&obj))


//=================================================================================

print("\n\n")


/*When the function is called using structure object then the value of the object is copied to the formal parameters, that too they are constant
so you need to create a new local object of the structure to copy the values of the formal parameters and manipulate them. That's why it is 
called structure is value type and class is reference type. But if you pass the structure object to an inout function, a reference/allias
is created of the actual parameter with formal parameter, so now you manipulatee the values of formal parameter object of structure
then same changes are reflected on the actual parameter object.*/


func x(_ ob:b)//cannot assign to property: 'ob' is a 'let' constant
{
    var ob2 = ob//to change the values you need to create another object of struct b because ob is of let type
    ob2.x="Changed"
    ob2.y=400
    // print(isKnownUniquelyReferenced(&ob)) error
}

func x(_ ob:inout b)
{
    ob.x="Changed"
    ob.y=400
    // print(isKnownUniquelyReferenced(&ob)) error
}



struct b
{
    var x:String
    var y:Int
    
    init(_ x:String="blank", _ y:Int=0)
    {
        self.x=x
        self.y=y
        print("Initialized object of b() structure")
    }
    
    // deinit cz structures don't have destructors
    // {
    //     print("Deinitialized object of a() class")
    // }
    
    func Print()
    {
        print("\(x) \(y)")
    }
}

var o:b?=b("Hello",250)
var O=o

//print(isKnownUniquelyReferenced(&o)) cannot invoke 'isKnownUniquelyReferenced' with an argument list of type '(inout b?)'
print("BEFORE")
O!.Print()
o!.Print()
x(o!)
x(&O!)
print("AFTER")
o!.Print()
O!.Print()
o=nil
O!.Print() //o!.Print() will crash the program because the object o does not exist any more
O=nil
//now O!.Print() will crash the program because the object o does not exist any more


