var c="swift"
//print(c[0])  //print(c.0) //cannot be done with strings
for i in c{
    print(i)
}
var d=10
print("This is how I can use a variable in string \(d)", "or use it simply outside string",c,d)

var e="this is \(d)"
print(e,"separated",separator:"+",terminator:"") //terminator is nothing so next print statement will coincide with this line

print("\n")

//=========================================================================================================


var b = (first:"one", "two", 1,"2")
print(b.first)
print(b.0)  //can use this to explicity get any value on idex of a collection

// for x in b{            //cannot do this in tuples
//     print(x)   
// }

print("\n")

//==========================================================================================================


//We can traverse the collection because it has every thing of same data type unlike tuple
var a = ["hello", "world", "1","2"]
for i in a
{
    print(i)
}
// print(a[0]) //can use this to explicity get any value on idex of a collection
