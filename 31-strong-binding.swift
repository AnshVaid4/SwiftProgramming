class A
{
    var x:Int
    var y:B?
    
    init(_ x:Int=0)
    {
        self.x=x
        print("Initializer called for class A object")
    }
    
    deinit
    {
        print("Deinitialzer called for class B object")
    }
    
    func Print()
    {
        print("\(x) \(y!)")
    }
}

class B
{
    var x:String
    var y:A?
    
    init(_ x:String="Hello")
    {
        self.x=x
        print("Initializer called for class A object")
    }
    
    deinit
    {
        print("Deinitialzer called for class B object")
    }
    
    func Print()
    {
        print("\(x) \(y!)")
    }
}

var obA:A?=A(250)   //A? is necessary so that explicitly the object could be mad nil
print(isKnownUniquelyReferenced(&obA))
// print(isKnownUniquelyReferenced(&obB)) Error since obB is not yet created

var obB:B?=B("World")

print(isKnownUniquelyReferenced(&obA))
print(isKnownUniquelyReferenced(&obB))

obA!.y=obB

print(isKnownUniquelyReferenced(&obA))
print(isKnownUniquelyReferenced(&obB))

obB!.y=obA

print(isKnownUniquelyReferenced(&obA))
print(isKnownUniquelyReferenced(&obB))

obA!.Print()
obB!.Print()

print(isKnownUniquelyReferenced(&obA))
print(isKnownUniquelyReferenced(&obB))

/*Uncomment the below two lines to make the deinitializers called at the end*/
// obA!.y=nil
// obB!.y=nil

obA=nil

print(isKnownUniquelyReferenced(&obA))
print(isKnownUniquelyReferenced(&obB))

obB=nil

print(isKnownUniquelyReferenced(&obA))
print(isKnownUniquelyReferenced(&obB))

/*Deinitializer is not yet called even if the references are made nil because of strong binding, i.e. the obA.y and obB.y still have the reference
of each other classes, so you need to remove those references first by uncommenting above lines, and call the Deinitializer.*/
