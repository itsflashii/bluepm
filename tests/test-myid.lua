--[[

* @overview Test file getting information from a certain foundation on the Brazilian stock exchange
* @author Vítor 'Soweto' Ribeiro
* @copyright (c) Rocket Community
* @license See LICENSE file on top-level directory

-]]
local id = require("myid");

addCommandHandler("test.myid", function()
  print(id.v4())
end)
