local id = require("myid");

addCommandHandler("test.myid", function()
  print(id.v4())
end)
