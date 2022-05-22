local instance = {}

instance.v4 = function ()
  local template ='xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'
  return string.gsub(template, '[xy]', function (c)
      local v = (c == 'x') and math.random(1,10) or math.random(1,10)
      return string.format('%x', v)
  end)
end


module.exports('myid', instance);
