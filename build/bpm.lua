--[[

* @author Vítor 'Soweto' Ribeiro
* @copyright (c) Rocket Community
* @license See LICENSE file on top-level directory

-]]

local modules = {};

function require(attrName)
  for index, module in ipairs(modules) do
    if (modules[index].name == attrName) then
      return modules[index].instance
    end
  end
  return print("Unable to find module: "..attrName)
end

module = {
  exports = function (attrName, attrInstance)
    table.insert(modules, {name=attrName, instance=attrInstance});
  end
}
