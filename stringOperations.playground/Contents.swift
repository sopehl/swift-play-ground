var hello = "Hello"
var world = "World"

var message = hello + world
print(message)

var exclamationMark: Character = "!"
message.append(exclamationMark)
print(message)

print(#"6 times 7 is \#(6 * 7)."#)

let turkishFlag: Character = "\u{1F1F9}\u{1F1F7}"
print(turkishFlag)

print(message.count)

var secondIndexChar = message.index(message.startIndex, offsetBy: 4)
print(message[secondIndexChar])
