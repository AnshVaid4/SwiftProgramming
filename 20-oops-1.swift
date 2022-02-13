class Product { // reference type, properties (fields), methods, initializers (constructors), subscripts and extensions, inheritance, deinitializers (destructors)
var name: String = "" // stored properties
var price: Double = 0.0 // stored properties
}

struct Size { // value type, properties (fields), methods, initializers (constructors), subscripts and extensions, public
var inches: Int = 0
var cm: Int = 0
}

var product1 = Product()
product1.name = "Water Bottle"
product1.price = 89.99

print(product1)

var size1 = Size()
size1.inches = 40
size1.cm = 100

print(size1)

//=================================