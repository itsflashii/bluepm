local instance = {}

local settings = {
  entrypoint="http://simuladordedividendos.com.br/v1"
}

instance.getFund = function (ticker, callback)
  return fetchRemote(settings.entrypoint..'/fund/acoes/'..ticker, callback, "", false, source)
end


module.exports("fundapi", instance)
