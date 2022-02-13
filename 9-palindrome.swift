/*

print("Enter an integer:",terminator:" ")
var input = readLine()
var x = input!
var y=""

if let numb = Int(x), numb >= 0
{
    print("Entered number is",numb,"\n\n")
    for character in x
    {
        y=String(character)+y
    }
    
    if x == y
    {
        print("Original number is \(x) and it's reverse is \(y)")
        print("Number is palindrome")
    }
    else
    {
        print("Original number is \(x) and it's reverse is \(y)")
        print("Sorry, the number is not palindrome")
    }
}
else
{
    print("Please enter a positive integer")
}

*/

print("Enter an integer:",terminator:" ")
var input = Int(readLine()!)
var sum = 0
if var num = input 
{
    while num > 0
    {
      let r=num%10
      num=num/10
      sum=(sum*10)+r 
    }
    // print(sum)
    
    if sum == input
    {
        print("\(input!) is palidrome")
    }
    else
    {
        print("\(input!) is not palindrome")
    }
}
else
{
    print("Please enter an integer")
}

