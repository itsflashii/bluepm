--[[

* @overview Test file getting information from a certain foundation on the Brazilian stock exchange
* @author Vítor 'Soweto' Ribeiro
* @copyright (c) Rocket Community
* @license See LICENSE file on top-level directory

-]]
local fund = require("fundapi");

addCommandHandler("test.fund", function()
  fund.getFund('BRSR3', function (info)
    local ticketData = fromJSON(info)
    iprint({
      ticker = ticketData.ticker,
      brand = {
        name= ticketData.brand.name,
        cnpj= ticketData.brand.cnpj
      }
    })
  end)
end)
