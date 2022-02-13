for i in 0..<5
{
    print(i)
}

print("\n")

//===============================================================================================

for i in 0...5
{
    print(i)
}

print("\n")

//===============================================================================================

var i=0
repeat
{
    print(i)
    i+=1
}while i <= 5

print("\n")

//===============================================================================================

for _ in 1..<5              //When used i then it threw error main.swift:30:5: warning: immutable value 'i' was never used;
{                           // consider replacing with '_' or removing it
    print("hello")
}