let name : String? = "Okan"
let value = name!
print(value)

if let value2 = name {
    print(value2)
}

let lang: String! = "Java"
let langVal: String = lang
print(langVal)

if let item = lang {
    print("implicitly unwrapped \(item)")
}
