S = {}

local overworld1
local playerSpritesheet
local playerQuads = {}

function S.init()

  --load all the images here
  overworld1 = lg.newImage("/assets/images/overworld1.png")

  --load player sprite and create quads
  playerSpritesheet = lg.newImage("/assets/images/playersprite.png")
  playerQuads = S.quadFromSpritesheet(playerSpritesheet, 128, 128, 4, 4)

  --init the items here

end

--image, width of single quad, height, num of rows, num columns
function S.quadFromSpritesheet(img, w, h, r, c)

  local quads = {}

  for i=0, r, 1 do
    for j=0, c, 1 do
      table.insert(quads, love.graphics.newQuad(i*h, w*j, w, h, img:getWidth(), img:getHeight()))
    end
  end

  return quads

end

function S.draw()

  lg.draw(overworld1)
  love.graphics.draw(playerSpritesheet, playerQuads[1])

end

return S