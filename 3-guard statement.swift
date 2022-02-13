var a=34
func test()
{
    guard a<100 else
    {
        print("less")
        return
    }
    print("more")
}

test()
