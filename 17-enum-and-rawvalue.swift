// var x=Int(readLine()!)
// switch x!
// {
//     case 0..<100: print("Between 0 and 100")
//     case 100..<250: print("Between 100 and 250")
//     case 250..<500: print("Between 250 and 500")
//     case 500..<750: print("Between 500 and 750")
//     case 750..<1000: print("Between 750 and 1000")
//     default: print(x!)
// }


enum days
{
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
    case Sunday
}

var holiday=days.Monday
print(holiday)

if holiday == .Monday  //if holiday == .Mon   //will give error cz .Mon is not present in enum
{
    print("Monday selectd")
}

enum Days:String
{
    case Monday="Mon"
    case Tuesday="Tue"
    case Wednesday="Wed"
    case Thursday="Thu"
    case Friday="Fri"
    case Saturday="Sat"
    case Sunday="Sun"
}

var Holiday=Days.Monday
print(Holiday.rawValue)
print(Days.Monday)
print(Holiday)
print(Days.Monday.rawValue)

enum week:String
{
    case Monday="hello"
    case Tuesday="world"
    case Wednesday="this"
    case Thursday="is"
    case Friday="for"
    case Saturday="testing"
    case Sunday="rawvalue"
}

var HOliday=week.Monday
print(HOliday.rawValue)
print(HOliday)
print(week.Monday)

if HOliday == .Monday
{
    print("""
    Type inference is used so automatically .Monday, HOliday has Monday and  .Monday is also haviving Monday. So condition is true
    and we are talking about week enum and not of days enum, this is what meant by type inference.
    """)
}

