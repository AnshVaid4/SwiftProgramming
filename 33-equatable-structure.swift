struct alpha:Equatable
{
    var a=0
    var b=""
    
    // static func == (lhs: alpha, rhs: alpha) -> Bool {        //optional in structure
    //  if lhs.a == rhs.a && lhs.b == rhs.b
    //  {
    //      return true
    //  }
    //  else
    //  {
    //      return false
    //  }
    // }
}

var o1=alpha()
var o2=alpha()

print(o1==o2)

o1.a=2

print(o1==o2)


//==============================================================================

class beta:Equatable & Comparable
{
    var a=0
    var b=""
    
    static func == (lhs: beta, rhs: beta) -> Bool {
     if lhs.a == rhs.a && lhs.b == rhs.b
     {
         return true
     }
     else
     {
         return false
     }
        
    }
    
    static func < (lhs: beta, rhs: beta) -> Bool {
     if lhs.a < rhs.a && lhs.b < rhs.b
     {
         return true
     }
     else
     {
         return false
     }
        
    }
}

var O1=beta()
var O2=beta()

print(O1==O2)

O1.a=2

print(O1==O2)
print(O1<=O2)