# Lui-Love2D-UI-Library

A Simple anchor based UI Framework made for Love

##Features

- Anchor Layout Sytem (Similar to Godot 0-1)
- Panels
- Buttons
- Scroll Bar (Sliders)
- Color Pickers
- Containers

## How to Use

It is simple how to get started, create a global variable named Lui and assign Lui.load() to Lui in love.load()
```lua
  Lui = require "lui.lui"

  function love.load()
    Lui = Lui.load()
  end
```

Obviously you are thinking well what if i have multiple menus is adding Lui as a global variable okay, yes just re-assign if you enter a new scene and load new widgets

##Basics
It is made simple to create a widget just do 

```lua
  local button = Button:new({text = "Click Me, ax = 0.5, ay = 0.5})
  Lui:add_child(button)
```

- Remember when loading Lui.load() the widget classes are added to a global scope so creating a widget is easy as Button:new({}) with the table sending values
- Each widgets can receive values which is usually the following
```lua
  values = {
    x = 0,y = 0, -- this is position
    w = 100, y = 100, -- this is size
    ax = 0, ay = 0, -- these are anchor which ranges from 0 - 1 (left to right) and (bottom to top)
  }
```

- Some widgets may need more values like a button which may need text or image and dont worry if you dont pass anything the framework will pull back to its defaults, you pass what you need

The framework is in its alpha release, contributing the code and spotting bugs will help the framework to be modern and stable, make sure to report any bugs and contribute the code 
