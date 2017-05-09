#### PRY:
```
[1] pry(main)> docking_station = DockingStation.new
NameError: uninitialized constant DockingStation
from (pry):1:in `__pry__'
[2] pry(main)>
```

NameError is the name of the error

the full path in pry would be ``` '__pry__' ```
the line of the error : ```(pry):1:```


#### IRB:

```
2.4.0 :001 > docking_station = DockingStation.new
NameError: uninitialized constant DockingStation
	from (irb):1
	from /Users/lubosmich/.rvm/rubies/ruby-2.4.0/bin/irb:11:in `<main>'
```


the full path in irb would be ```Users/lubosmich/.rvm/rubies/ruby-2.4.0/bin/irb:11:in `<main>' ```

the line of the error
  from (irb):1

#### Error Explanation
The NameError suggests that we are trying to set the variable a docking_station to a new instantiated object of the DockingClass station which hasn't been defined .


#### Solution
A way to fix this would be to define the class DockingStation.
