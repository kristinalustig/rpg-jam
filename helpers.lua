H = {}

function H.splitLinesBySemicolon(line)

  local values = {}
  for value in line:gmatch("[^;]+") do
    if value:sub(1,1) == " " then
      value = value:sub(2)
    end
    if value:sub(#value, #value) == " " then
      value = value:sub(1, #value-1)
    end
    if value == "nil" then
      value = nil
    end
    table.insert(values, value)
  end
  return values

end

return H