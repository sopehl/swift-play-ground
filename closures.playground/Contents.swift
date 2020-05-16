var langs = ["C", "Smalltalk", "Java", "Golang", "Ada"]
print(langs)
/*
 as you see, the sort function need a other function that returns a boolean value as a args
 */
// if you want to print param1 before param2, you need to return true.
// for alfabetic sorting
func tradationalSortFunction(_ param1: String, _ param2: String) -> Bool {
    return param1 < param2
}

var sortedNewLangs = langs.sorted(by: tradationalSortFunction)
print(sortedNewLangs)

// closure exp. syntax
/*
 
 { (parameters) -> return type in
     statements
 }
 
 */

var sortedWithClosure = langs.sorted(by: {(_ param1: String, _ param2: String) -> Bool in
    return param1 < param2
})
print(sortedWithClosure)

// the body of closure is so short, you can use it as below()
langs.sorted(by: {param1, param2 in return param1 < param2})
langs.sorted(by: {param1, param2 in param1 < param2})
langs.sorted(by: {$0 < $1})
langs.sorted(by: <)

// Tailing closure syntax
var tailingClosure1 = langs.sorted {$0<$1}
var tailingClosure2 = langs.sorted() {$0<$1}

print(tailingClosure1)
print(tailingClosure2)

