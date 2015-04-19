import Foundation

public struct Year {
    public var isLeapYear = false;

    public init(calendarYear: Int) {
        isLeapYear = isLeapYear(calendarYear)
    }

    func isLeapYear(calendarYear: Int) -> Bool {
        switch calendarYear {
        case _ where calendarYear % 400 == 0: return true
        case _ where calendarYear % 100 == 0: return false
        case _ where calendarYear % 4 == 0: return true
        default: return false
        }
    }
}
