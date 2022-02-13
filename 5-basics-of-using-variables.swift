var a="hello"
// var b:Int="hello"  //will produce error because we have reserved the variable for only integer type values
                      //main.swift:3:11: error: cannot convert value of type 'String' to specified type 'Int'
var b:Int=20
print(a,b+2)  //OR print("\(a) \(b+2)")



let `let`=43  //use the keywords as variables
print(`let`)



var x=20.2
var y:Int
y=Int(x)
print(y)



var w:Bool
w=true
print(w.toggle())



var s="""
hello this is
multiline string
let's try. Also double quotes work here like "this".
Use the variables like \"\(x)\"
"""
print(s)