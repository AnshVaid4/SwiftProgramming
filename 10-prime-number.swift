print("Enter an integer:",terminator:" ")
var input = readLine()!
var flag = 0
if let num = Int(input)
{
    if num < 4 && num >= 0
    {
        if num == 1 || num == 0
        {
            print("\(num) is not a prime number")
        }
        else
        {
            print("\(num) is a prime number")
        }
        
    }
    
    else
    {
        if num > 0
        {
            for i in 2...(num/2)
            {
                if (num%i) == 0
                {
                    flag=1
                    break
                }
            }
            if(flag == 1)
            {
                print("\(num) is not a prime number")
            }
            else
            {
                print("\(num) is a prime number")
            }
        }
        else {print("Please enter a positive integer")}
    }
}

else{    print("Please enter an integer") }
