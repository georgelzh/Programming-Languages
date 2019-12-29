func greet() -> String {
    let greeting = "Hello!"
    
    print("please Enter your name")
    if let name = readLine() {
        return "hello, \(name)!"
    }
    return greeting
}

print(greet())

//get input
//https://www.programiz.com/swift-programming/basic-input-output