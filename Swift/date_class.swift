/* this program has a date class that stores date (month, day, year).
File name: date_class.swift */

class Date {
    var month: Int = 1
    var day: Int = 1
    var year: Int = 1

    init(month: Int, day: Int, year: Int) {
        if (month > 0) && (month < 13) {
        self.month = month
        self.day = day
        self.year = year
        }
    }

    func printString() -> String {
        return("The date is: \(month)\\\(day)\\\(year)")
    }
}

let testDate = Date(month: 8, day: 1, year: 2500)
print(testDate)
print(testDate.printString())



//initializing problem
//https://www.tutorialkart.com/swift-tutorial/swift-error-return-from-initializer-without-initializing-all-stored-properties/