class Product { // reference type, properties (fields), methods, initializers (constructors), subscripts and extensions, inheritance, deinitializers (destructors)
var name: String = "" // stored properties
var price: Double = 0.0 // stored properties

var Name: String { // computed properties
get {
return name
}
set (v) {
name = v
}
}
var age: UInt8 = 0
var Age: UInt8 { // computed properties
get {
return age
}
set (v) {
if (v <= 125) {
age = v
}
}
}


init(n: String = "", p: Double = 0.0) { // parameterized initializer
name = n
price = p
}
}


var product1 = Product()
product1.Name = "Water Bottle"
product1.price = 89.99
product1.Age = 126

var product2 = Product(n: "Mobile", p: 17999.99)
print(product1.Name, product1.price, product1.Age)
print(product2.name, product2.price)