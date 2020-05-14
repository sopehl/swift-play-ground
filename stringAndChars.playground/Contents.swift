let multiLineString = """
This
is
multi-line
string \
constant.
"""

print(multiLineString)

let blackHeart = "\u{2665}"
print(blackHeart)

let sparklingHeart = "\u{1F496}"
print(sparklingHeart)

var nickname = "Sopehl"
nickname.append("-C2O")
if !nickname.isEmpty {
    print(nickname)
}

print("------------------")

var lang = "Turkish"
for char in lang {
    print(char)
}

var animal: [Character] = ["D", "O", "G"]
var animalAsString: String = String(animal)
var animalAsString2 = String(animal)
print(animalAsString)
print(animalAsString2)
