--[[

* @overview Export logic for packages created with blue
* @author Vítor 'Soweto' Ribeiro
* @copyright (c) Rocket Community
* @license See LICENSE file on top-level directory

-]]
module = {
  exports = function (attrName, attrInstance)
    table.insert(modules, {name=attrName, instance=attrInstance})
    return iprint('['..attrName..'] has injected on BPM')
  end
}

