# Blue Package Manager 📦
A Package manager for Multi Theft Auto Lua.


### How to Import
First of all, you need to import the library BEFORE your modules
```xml
<script src="path/to/myfolder/libs/bpm.lua" type="shared" />
```
After starting and verifying that the library did not find defects, you can create a folder called "bpm_modules" and create your respective modules following the folder architecture with @ before the name



### How to create a Module
```lua
local instance = {} -- Office where all your functions and classes for export are stored

instance.sayFoo = function(arg1)
  return "foo "..arg1
end

instance.getTime = function()
  local timehour, timeminute = getTime()
  
  return "The current game time is "..timehour..":"..timeminute
end


module.exports("coolmodule", instance)
```

### How to use a Module
```lua
local say = require("coolmodule")

print(say.getTime()) -- Returns game hour and minutes
print(say.sayFoo("bar")) -- Returns "foo bar"
```
