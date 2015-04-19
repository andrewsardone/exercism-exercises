import Foundation

public struct Year {
    public var isLeapYear = false;

    public init(calendarYear: Int) {
        isLeapYear = isLeapYear(calendarYear)
    }

    func isLeapYear(calendarYear: Int) -> Bool {
        if calendarYear % 400 == 0 {
            return true
        }
        else if calendarYear % 100 == 0 {
            return false
        }
        else if calendarYear % 4 == 0 {
            return true
        }
        else {
            return false
        }
    }
}
