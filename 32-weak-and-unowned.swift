/*weak is optional and unowned is both non-optional and optional both(you can use it either way), added in front of the object insside one of the
classes holdig strong references to other class. These two keywords are explecitly used in order to prevent strong binding.*/

class A
{
    var x:Int
    weak var y:B? //unowned var y:B?   OR    unowned var y:B
    
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

var obA:A?=A(250)

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



obA=nil

print(isKnownUniquelyReferenced(&obA))
print(isKnownUniquelyReferenced(&obB))

obB=nil

print(isKnownUniquelyReferenced(&obA))
print(isKnownUniquelyReferenced(&obB))

