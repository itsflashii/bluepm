module = {
  exports = function (attrName, attrInstance)
    table.insert(modules, {name=attrName, instance=attrInstance})
    return iprint('['..attrName..'] has injected on BPM')
  end
}

