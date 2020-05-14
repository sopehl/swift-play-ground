import Cocoa

var base = 2
var power = 5
var answer = 1

for _ in 1...power {
    answer *= base
}

print("\(base) ^ \(power) is \(answer)")

var start = 3
var to = 7

while start <= to {
    print(start)
    start += 1
}

// Labeled Loop
var x = 0;
outerLoop : while x < 10 {
    x += 1
    while x > 5 {
        break outerLoop
    }
}

print("x value -> \(x)")

// guard key and early exit
func sendMessage(lang: [String: String]) {
    // if lang["name"] null, execute else
    guard let name = lang["name"] else {
        return
    }

    print("Your programming lang \(name)!")

    guard let tech = lang["tech"] else {
        print("Oww! you don't have any tech")
        return
    }

    print("Good luck with your tech \(tech)")
}

var lang = ["name": "Java", "tech": "Hinernate"]
sendMessage(lang: lang)

var otherLang = ["name": "Php"]
sendMessage(lang: otherLang)

if #available(macOS 10.10,*) {
    print("Your version is greater 10.15")
} else {
    print("You have other version for MACOS")
}
