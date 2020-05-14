var numbers = [Int]()
print("count of number: \(numbers.count)")

numbers.append(3)
print("count of number: \(numbers.count)")

var lang: [String] = ["Java", "Swift", "Python"]
var otherLang = ["C#", "Ruby", "Go", "Php"]
print("lang count : \(lang.count) \(lang)")
print("otherLang count : \(otherLang.count) \(otherLang)")

otherLang.append("C++")
print("otherLang count : \(otherLang.count) \(otherLang)")

lang.remove(at: 2)
print("lang count : \(lang.count) \(lang)")

lang.insert("Delphi", at: 2)
print("lang count : \(lang.count) \(lang)")

lang.removeLast()
print("lang count : \(lang.count) \(lang)")

for item in lang {
    print(item)
}

for (index, value) in lang.enumerated() {
    print("index \(index) -> \(value)")
}
