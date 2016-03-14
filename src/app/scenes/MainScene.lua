
--主游戏界面

local MainScene = class("MainScene", function()
    return display.newScene("MainScene")
end)

function MainScene:ctor()
   
    -- display.addSpriteFrames("plist/snail.plist", "plist/snail.png")
    -- display.addSpriteFrames("plist/btnIco.plist", "plist/btnIco.png")
    -- display.addSpriteFrames("plist/UI.plist", "plist/UI.png")
    -- display.addSpriteFrames("plist/UIOwn.plist", "plist/UIOwn.png")

    -- local s = require("app.views.Login").new()
    -- 	:addTo(self)
    -- --s:pos(display.cx, display.cy)
--首页背景
    -- display.newSprite("indexBg.png")
    -- 	:center()
    -- 	:addTo(self)

--UI层
    local uilayer = import("app.views.UILayer").new()
   	self:addChild(uilayer)

end

function MainScene:onEnter()
end

function MainScene:onExit()
end

return MainScene
