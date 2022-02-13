func findtype <X> (v:X)
{
    if let n = v as? Int
    {
        print("\(n) is Integer")
    }
    
    if let n = v as? Float
    {
        print("\(n) is Float")
    }
    
    if let n = v as? Double
    {
        print("\(n) is Double")
    }
    
    if let n = v as? String
    {
        print("\(n) is String")
    }
    
    if let n = v as? Bool
    {
        print("\(n) is Boolean")
    }
}

findtype(v:"hello")
findtype(v:23)
findtype(v:Int(2.3))
findtype(v:true)

//=====================================================================================

