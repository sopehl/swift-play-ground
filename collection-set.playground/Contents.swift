var lang = Set<String>()

lang.insert("Java")
lang.insert("C#")
print(lang)

var otherLang: Set<String> = ["Kotlin", "C++"]
print(otherLang)
otherLang.insert("C++")
print(otherLang)

if let removed = lang.remove("C#") {
    print("Removed: \(removed)")
}
print(lang)

// Iteration
for item in otherLang {
    print(item)
}
