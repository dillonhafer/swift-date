Date
===========
***

About
-----

Date is a convenience wrapper around NSDate objects written in swift.

Examples
-----

```swift
var date = Date(year: 2014, month: 3, day: 1)
=> 2014-3-1

var date = Date.parse("2014-3-1")
=> 2014-3-1

var date = Date.parse("3-1-2014", format: "MM-dd-yyyy")
=> 2014-3-1

date.year
=> 2014

date.month
=> 3

date.day
=> 1

date.isLeep()
=> false

date.isSaturday()
=> true

date.wday
=> 7

copyrightLabel.text = "Copyright © \(Date.today.year)"
=> Copyright © 2014
```

**Int extensions**

```swift
Date.today
=> 2014-6-10

5.days.ago
=> 2014-6-5

5.days.from_now
=> 2014-6-15
```

## Credits

Date is maintained by [Dillon Hafer](http://www.dillonhafer.com)

## License

Date is Copyright © 2014 Dillon Hafer. It is free software, and may be redistributed under the terms specified below.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
