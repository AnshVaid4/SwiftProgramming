print("Enter a string:",terminator:" ")
var input = readLine()!
var y = ""

if let x = Float(input)
{
    print("Please enter a string, not a number")
}
else
{
    for i in input
    {
        switch String(i)
        {
            case "a","e","i","o","u","A","E","I","O","U": continue
            default: y=y+String(i)
        }
    }
    print("Altered string: \(y)")
}

