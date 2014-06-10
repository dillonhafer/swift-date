import Foundation

extension Int {
    static var SecondsInDay : Int { return 24 * 60 * 60 }
    var days : Int { return self * Int.SecondsInDay }
    var from_now : Date { return Date.today.plus(self) }
    var ago : Date { return Date.today.minus(self) }
}

class Date : NSObject {
    var year : Int
    var month : Int
    var day : Int
    var wday : Int = 0
    
    init(year: Int, month: Int = 1, day: Int = 1) {
        self.year  = year
        self.month = month
        self.day   = day
        super.init()
        self.wday = self.find_wday()
    }
    
    class var today : Date {
        var comps = self.components(NSDate.date())
        return Date(year: comps.year, month: comps.month, day: comps.day)
    }
    
    override var description : String {
        return "\(self.year)-\(self.month)-\(self.day)"
    }
    
    func stringValue() -> String {
        return self.description
    }
    
    func seconds_arithmetic(seconds: Int, isSubtraction: Bool = false) -> Date {
        var given_seconds = seconds
        var offset = NSDateComponents()
        
        if isSubtraction {
            given_seconds = 0 - seconds
        }

        offset.second = given_seconds
        var comps = Date.components(
            NSCalendar.currentCalendar().dateByAddingComponents(
                offset, toDate: Date.today.nsdateValue(), options: NSCalendarOptions()
            )
        )
        
        return Date(year: comps.year, month: comps.month, day: comps.day)
    }
    
    func plus(seconds: Int) -> Date {
        return seconds_arithmetic(seconds)
    }
    
    func minus(seconds: Int) -> Date {
        return seconds_arithmetic(seconds, isSubtraction: true)
    }
    
    class func parse(date: String, format: String = "yyyy-MM-dd") -> Date {
        var parsed_date = self.format(format).dateFromString(date)
        var comps = self.components(parsed_date)
        return Date(year: comps.year, month: comps.month, day: comps.day)
    }
    
    func nsdateValue() -> NSDate {
        return Date.format("yyyy-MM-dd").dateFromString(self.description)
    }
    
    class func format(pattern: String) -> NSDateFormatter {
        var dateformatter = NSDateFormatter()
        dateformatter.dateFormat = pattern
        return dateformatter
    }
    
    class func components(date: NSDate) -> NSDateComponents {
        return NSCalendar.currentCalendar().components(NSCalendarUnit.CalendarUnitYear | NSCalendarUnit.CalendarUnitMonth | NSCalendarUnit.CalendarUnitDay, fromDate: date)
    }
        
    func find_wday() -> Int {
        return Date.components(self.nsdateValue()).weekday
    }

    func isSunday() -> Bool {
        return self.wday == 1
    }
    
    func isMonday() -> Bool {
        return self.wday == 2
    }
    
    func isTuesday() -> Bool {
        return self.wday == 3
    }

    func isWednesday() -> Bool {
        return self.wday == 4
    }

    func isThursday() -> Bool {
        return self.wday == 5
    }

    func isFriday() -> Bool {
        return self.wday == 6
    }

    func isSaturday() -> Bool {
        return self.wday == 7
    }
    
    func isLeep() -> Bool {
        if self.year % 4 == 0 && !(self.year % 100 == 0) || (self.year % 400 == 0) {
            return true
        }
        return false
    }
}