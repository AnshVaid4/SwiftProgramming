class car
{
    //in swift unlike c++ you need to initialize the data members with some initial values otherwise it gives error, else use constructors 
    var name:String=""                                          //instead to eliminate the initialization of data members in the beginning
    var prize:Int=0
    var capacity:Float=0
    var colour:String=""
    
    func write(Name:String, Prize:Int, Capacity:Float, Colour:String)
    {
        name=Name
        prize=Prize
        capacity=Capacity
        colour=Colour
    }
    
    func Print()
    {
        print("Name: \(name), Prize: \(prize), Capacity: \(capacity), Colour: \(colour)")
    }
}

var x = car()
x.write(Name:"WangonR", Prize:700000, Capacity: 23.4, Colour:"Blue")
print(x,x.name,x.prize,x.capacity,x.colour)
x.Print()

//=====================================================================================================

class person
{
    var name:String=""   //stored properties
    var age:Int=0
    var sib:String=""
    var Siblings:String 
    {                    //computed properties=> Used to hide the backend operation performed for storing the data in data member
        get              //mainly data abstraction, because of which user doesn't get to know actual variable where the data gets stored
        {                //and what are the conditions for which the data for storing the data in data member or which operations are performed
            return sib   //on data member while retrieving the data from data member. 
        }
        
        set (s)
        {
            sib=s
        }
    }
    
    func Print()
    {
        print("Name: \(name), Age: \(age), Sib: \(sib)  Siblings=  \(Siblings)")
    }
    
    func Print(Name:String)  //function overloading
    {
       name=Name
       print("Name: \(name), Age: \(age), Sib: \(sib)  Siblings=  \(Siblings)") 
    }
}

var y=person()
y.name="Ramesh"
y.age=23
y.Siblings="no" //set will be called i.e. y.sib="no"
var y2=y.Siblings //get will be called i.e. y2.y.sib
print(y,y.name,y.age," y.sib= ",y.sib," y.Siblings= ",y.Siblings)
y.Print()
y.Print(Name:"Shyam")
y.Print()

//=====================================================================================================

class voter
{
    var name:String
    var age:Int
    var gender:String
    var Age2:Int
    {
        get
        {
            return age
        }
        
        set (x) //OR set { if newValue>=18{...............
        {
            if x>=18
            {
                age=x
            }
            else
            {
                age=17
            }
        }
    }
    
    init()      //default constructor
    {
        name="Person's Name"
        age=19
        gender="M/F"
    }
    
    
    init(Name:String, Age:Int, Gender:String) //Constructor overloading
    {
        name=Name
        age=Age
        gender=Gender
    }
    
    //The below constructor will never be used because the the same functionality is given by above two constructors
    init(NAME:String="Rahul", AGE:Int=18, GENDER:String="M")  //Constructor overloading
    {
        name=NAME   //Do not use the same formal parameters as used in above constructor, cz in swift the overloading can even be done with same
        age=AGE     //number of parameters with slight difference in their names, till the time we are specifying the parameter name during func 
        gender=GENDER  //calling
    }
    
    
    func Print()
    {
        print("Name: \(name), Age: \(age), Gender: \(gender)")
    }
}

var z=voter()
var z1=voter(Name:"Ansh", Age:22, Gender:"M")
var z2=voter(Name:"Karan", Age:12, Gender:"M")
var z3=voter(NAME:"Ram")                            //forcefully telling compiler to use the 3rd constructor
z.Print()
z1.Print()
z2.Print()
z3.Print()

//=====================================================================================================

class twoWheeler        //Inheritance and using super class and passing vaues to super constructor
{
    var enginePower:String
    var wheelSize:String
    var speed:Int
    var cost:Int
    
    init(Power:String="45CC", Size:String="Small", Speed:Int=110, Prize:Int=40000)
    {
        enginePower=Power
        wheelSize=Size
        speed=Speed
        cost=Prize
    }
    
    func Print()
    {
        print("Engine power: \(enginePower), Size of wheel: \(wheelSize), Speed: \(speed), Prize: \(cost)")
    }
}

class bike:twoWheeler
{
    var rearWheelBrake:String
    var numberOfGears:Int
    var colour:String
    
    
    init(Power1:String="45CC", Size1:String="Small", Speed1:Int=110, Prize1:Int=40000, Brake:String="Foot", Gears:Int=4, Colour:String="Black")
    {
        rearWheelBrake=Brake
        numberOfGears=Gears
        colour=Colour
        
        super.init(Power:Power1, Size:Size1, Speed:Speed1, Prize:Prize1)
    }
    
    override func Print()
    {
        print("Engine power: \(enginePower), Size of wheel: \(wheelSize), Speed: \(speed), Prize: \(cost), Rear brake style: \(rearWheelBrake), Number of gears: \(numberOfGears), Colour: \(colour)")
    }
}

class scooty:twoWheeler
{
    var rearWheelBrake:String
    var colour:String
    
    init(Power1:String="45CC", Size1:String="Small", Speed1:Int=110, Prize1:Int=40000, Brake:String="Hands", Colour:String="Grey")
    {
        rearWheelBrake=Brake
        colour=Colour
        
        super.init(Power:Power1, Size:Size1, Speed:Speed1, Prize:Prize1)
    }
    
    override func Print()
    {
        print("Engine power: \(enginePower), Size of wheel: \(wheelSize), Speed: \(speed), Prize: \(cost), Rear brake style: \(rearWheelBrake), Colour: \(colour)")
    }
}

class bicycle:bike
{
    var adjustableSeat:String
    var basketSize:String
    var pedalsType:String
    
    init(Power2:String="45CC", Size2:String="Small", Speed2:Int=110, Prize2:Int=40000, Brake2:String="Foot", Gears2:Int=4, Colour2:String="Black", Seat:String="Adjustable", Basket:String="Small", Pedals:String="Clipless")
    {
        adjustableSeat=Seat
        basketSize=Basket
        pedalsType=Pedals
        
        super.init(Power1:Power2, Size1:Size2, Speed1:Speed2, Prize1:Prize2, Brake:Brake2, Gears:Gears2, Colour:Colour2)
    }
    
    override func Print()
    {
        print("Engine power: \(enginePower), Size of wheel: \(wheelSize), Speed: \(speed), Prize: \(cost), Rear brake style: \(rearWheelBrake), Colour: \(colour), Seat type: \(adjustableSeat), Basket size: \(basketSize), Type of pedals: \(pedalsType)")
    }
}

var a = twoWheeler()
var a1 = twoWheeler(Power:"100CC", Size:"Big", Speed:200, Prize:70000)
a.Print()
a1.Print()

var b = bike()
var b1 = bike(Power1:"200CC", Size1:"Big", Speed1:210, Prize1:200000, Brake:"Disc", Gears:5, Colour:"Bronze")
b.Print()
b1.Print()

var c = scooty()
var c1 = scooty(Speed1:140, Prize1:34000, Colour:"White")
c.Print()
c1.Print()

var d = bicycle()
var d1 = bicycle(Power2:"Depends on cyclist", Size2:"Big", Speed2:20, Prize2:10000, Brake2:"Disc", Gears2:12, Basket:"None", Pedals:"Platform")
d.Print()
d1.Print()

//Just to show the use of newValue in below program \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/

class demo
{
    var a=0
    var x:Int
    {
        get
        {
            return a
        }
        
        set
        {
            a = newValue
        }
    }
}

var dem=demo()
var demx=dem.x
print(dem.x)
dem.x=2
print(dem.x)