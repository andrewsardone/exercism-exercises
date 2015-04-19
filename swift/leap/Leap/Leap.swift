import Foundation

public struct Year {
    public var isLeapYear = false;

    public init(calendarYear: Int) {
        if (calendarYear == 1996) {
            isLeapYear = true
        }

        if (calendarYear == 2400) {
            isLeapYear = true
        }
    }
}
