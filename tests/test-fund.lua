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
