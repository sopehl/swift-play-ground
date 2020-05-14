let number = 3
print(number)

let minusNumber = -number

if minusNumber == -3 {
    print(minusNumber)
}

let defaultAge = 25
var age: Int? = 27
var selectedAge = age != nil ? age! : 25
print(selectedAge)

let defaultYear = 2020
var year: Int?
var selectedYear = year ?? defaultYear // if year is nill, return default, otherwise return current year
print(selectedYear)
