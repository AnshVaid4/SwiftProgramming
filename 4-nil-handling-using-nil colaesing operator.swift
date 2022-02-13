var a=readLine()
// a=nil
if let x=a, let n=String?(x)
{
    print(n)
}
else
{
    print("\(a!)")  //OR use print("\(a ?? "default value")"),  OR use print("Nil occured, handled explicitly") > ! is used only when you're sure
    //that nil will never be passed in input. If Nil comes then this portion will be executed and it will throw an error because no default value 
    //is given
}
