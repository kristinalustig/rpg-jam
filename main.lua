local GS = require "gameState"

lg = love.graphics
la = love.audio
lm = love.math
lf = love.font
lk = love.keyboard

Scenes = {
  TITLE = 1,
  INTRO = 2,
  PAUSE = 3,
  HELP = 4,
  LOCATION = 5,
  CREDITS = 6,
  GAMEOVER = 7
}

function love.load()

  GS.init()

end

function love.update(dt)



end

function love.draw()

  GS.draw()

end

function love.keypressed(key, scancode, isrepeat)



end
