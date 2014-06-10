Date
===========
***

About
-----

Date is a convenience wrapper around NSDate objects written in swift.

Examples
-----

```
var date = Date(year: 2014, month: 3, day: 1)
=> 2014-3-1

date.year
=> 2014

date.month
=> 3

date.day
=> 1

date.isLeep
=> false

date.isSaturday
=> true
```

**Int extensions**

```
Date.today
=> 2014-6-10

5.days.ago
=> 2014-6-5

5.days.from_now
=> 2-14-6-15

```

## Credits

[![Boondock Walker](https://farm4.staticflickr.com/3684/9677153149_c7f7cac09d_o.png)](http://www.boondockwalker.com)

Date is maintained by [Dillon Hafer](http://www.dillonhafer.com) and [Boondock Walker](http://www.boondockwalker.com)

## License

Date is Copyright © 2014 Dillon Hafer and Boondock Walker, LLC. It is free software, and may be redistributed under the terms specified below.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.