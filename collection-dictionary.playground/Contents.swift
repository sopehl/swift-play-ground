var frameworks = ["java":"spring", "php":"laravel", "ruby": "on rails" ];
print(frameworks)

var cities = [String: String]()
cities["TR"] = "IST"
cities["EN"] = "LND"

print(cities)

for (key, value) in cities {
    print("\(key) -> \(value)")
}
