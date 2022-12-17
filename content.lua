local H = require "helpers"

C = {}

local itemDescriptions = {}
local dialog = {}

function C.init()

  --itemId, longName, description
  for line in love.filesystem.lines("content/items.txt") do
    table.insert(C.itemDescriptions, H.splitLinesBySemicolon(line))
  end

  --npcId, dialogId, isPlayerLine, hasOptions, {options}
  for line in love.filesystem.lines("content/dialog.txt") do
    table.insert(C.dialog, H.splitLinesBySemicolon(line))
  end

end



return C
