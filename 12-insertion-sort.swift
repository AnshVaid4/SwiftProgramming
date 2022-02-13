print("How many numbers you want to enter?",terminator:" ")
var input=Int(readLine() ?? "0")
if input! > 0
{
    var a:[Int] = []
    print("Start entering the numbers. Press enter after every number.")
    for _ in 0..<input!
    {
        let num=Int(readLine()!)
        if num != nil
        {
            a.append(num!)
        }
        else
        {
            print("[+] User input was empty, so a random integer is being added")
            a.append(Int.random(in:0...Int.max))
        }
    }
    // var a = [5,3,7,2,6,1]
    print("\n\n\nYour array is   \(a)")
    let len=(a.count)
    var temp:Int
    for i in 1..<len
    {
        for j in 0..<i
        {
            if a[j] > a[i]
            {
                temp = a[i]
                var k = i
                while k > j
                {
                    a[k] = a[k-1]  //shifting array elements to right side
                    k-=1
                }
                a[j] = temp        //value inserted at the correct position
            }
        }
    }
    
    print("Sorted array is \(a)")
}
else
{
    print("Length must be greater than 0")
}

