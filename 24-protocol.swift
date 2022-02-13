protocol laptop
{                            //you cannot initialize identifiers and functions in protocol
    var kbd:String {get}     //var kbd:String  //main.swift:3:9: error: property in protocol must have explicit { get } or { get set } specifier
    var mouse:String {get set}
    var usb:Int {get}
    var pixel:Int {get set}    //var pixel:Int {set}  //main.swift:6:20: error: variable with a setter must also have a getter
}

class nitro5:laptop     //structures and classes both atleast need stored method or an initializer. Without initializing both, error is thrown
{
    var kbd = "QWERTY"
    var mouse = "Trackpad"
    var usb = 3             //protocol get says atleat get should be there for this identifier. But by default get & set are both given in class
                            //or structure using stored method. Use composite method for usb with only get here to strictly use the protocol
    var pixel = 1080
    var nitros = "5400 rpm"
    
    
    func Print()
    {
        print("Keyboard type: \(kbd), Mouse type: \(mouse), USB ports \(usb), Picture quality: \(pixel), Nitros power: \(nitros)")
    }
}

class predator:laptop
{
    var kbd = "QWERTY"
    var mouse = "Trackpad"
    var usb = 3
    var pixel = 1080
    var nitros = 6000
    var bodytype  = "Metallic"
    
    func Print()
    {
        print("Keyboard type: \(kbd), Mouse type: \(mouse), USB ports \(usb), Picture quality: \(pixel), Nitros power: \(nitros), Body type: \(bodytype)")
    }
}

var ryzen5 = nitro5()
ryzen5.Print()

ryzen5.kbd = "ABCDEF"
ryzen5.mouse = "External"
ryzen5.usb = 4                  // we are able to set even if the usb is get only in protocol because in class by default set
                                // property is given. So use composite property with get only in usb, then you won't be able to set usb from outside
ryzen5.pixel = 720
ryzen5.Print()

var x = ryzen5.usb              // get for nitro5 class. No relation with protocol get
print(x)


var inteli5 = predator()
inteli5.Print()

//====================================================================================

var arr1 = [laptop]()
arr1.append(ryzen5)
arr1.append(inteli5)
/* If both were classes then output would be:
[main.nitro5(kbd: "ABCDEF", mouse: "External", usb: 4, pixel: 720, nitros: "5400 rpm"), main.predator(kbd: "QWERTY", mouse: "Trackpad", usb: 3, pixel: 1080, nitros: 6000, bodytype: "Metallic")]
*/
print(arr1)

// print(type(of:type(of:type(of: inteli5))))

for i in arr1
{
    //print(i.bodytype)  //main.swift:69:11: error: value of type 'laptop' has no member 'bodytype'
    print(i.kbd)
    
    if var x = i as? predator 
    {
        print(x.bodytype)
    }
    else
    {
        continue
    }
}

//====================================================================================

protocol alpha
{
    var a:Int {get}
    var b:String {get}
    func Print2()
}

extension alpha  // extension is used when there is same definition for each child of protocol otherwise declare it in protocol if every child has 
{                // unique implementation of function.
    func Print()
    {
        print(a,b)
    }
}

class beta:alpha
{
    var a=20
    var b="twenty"
    func Print2()
    {
        print(a*2)
    }
    
    func Print()
    {
        print("a: \(a), b: \(b)")
    }
}

struct gamma:alpha
{
    var a=30
    var b="thirty"
    func Print2()
    {
        print(a*3)
    }
}

var l = beta()
var m = gamma()

l.Print()
l.Print2()
m.Print()
m.Print2()