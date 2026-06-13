love = love

Vector2 = require "math.vector2"
Vector2i = require "math.vector2i"
Rect2 = require "math.rect2"
Rect2i = require "math.rect2i"
Color = require "math.color"

Lui = require "lui.lui"

function love.load()
    Lui = Lui.load()
    love.window.setMode(1280,720,{fullscreen = false, resizable = true, vsync = 0})
    local img = love.graphics.newImage("lui/assets/images/button_normal_01.png")

    local par = Panel:new({ax = 0.5, ay = 0.5, w = 400, h = 400})
    local cont = VScrollBar:new({ax = 1, ay = 1})
    Lui:add_child(par)
    par:add_child(cont)
end

function love.update(dt)
    Lui:update()

    if love.keyboard.isDown("escape") then
        love.event.quit()
    end
end

function love.draw()
    Lui:draw()
end

function love.resize(x,y)
    Lui:resize(x,y)
end

function love.mousepressed(x, y, button, istouch, presses)
    Lui:mouse_pressed(button)
end

function love.mousereleased(x, y, button, istouch)
    Lui:mouse_released(button)
end