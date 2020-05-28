// Range operator
for index in 1...3 {
    print("index: \(index)")
}

// Half-open range operator
let langs = ["Java", "Swift", "Python"]
let lengthOfLangs = langs.count
print("Lang count \(lengthOfLangs)")
for index in 0..<lengthOfLangs {
    print("\(index). lang : \(langs[index])")
}

print("---------------------------")
// One-side range operator
let fruits = ["Apple", "Banana", "Mandarin", "Watermelon"]
print("First fruits till second index(included)")
for item in fruits[...2] {
    print(item)
}

print("---------------------------")
print("Last fruits after second index(included)")
for item in fruits[2...] {
    print(item)
}

print("---------------------------")
print("First fruits till second index(not included)")
for item in fruits[..<2] {
    print(item)
}

// for item in fruits[...2] working like foreach in JAVA
