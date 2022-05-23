function require(attrName)
  for index, module in ipairs(modules) do
    if (modules[index].name == attrName) then
      return modules[index].instance
    end
  end
  return print("Unable to find module: "..attrName)
end
