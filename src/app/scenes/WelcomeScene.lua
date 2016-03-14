--欢迎界面
local WelcomeScene = class("WelcomeScene", function()
	-- body
	return display.newScene("WelcomeScene")
end)


function WelcomeScene:ctor( )
	-- body

	--纯色背景
	display.newColorLayer(cc.c4b(102, 204, 255, 255))
        :addTo(self)
    --Logo
    display.newSprite("textrue/bg/logo.png")
    	:align(display.CENTER, display.cx, display.cy)
    	:addTo(self)
    --延时进入场景
    self:performWithDelay(function()
    	-- body
    	local scene = import("app.scenes.LoginScene").new()
    	display.replaceScene(scene)
    end, 2.0)

    --添加图片缓存
    display.addSpriteFrames("textrue/plist/ui_login.plist", "textrue/plist/ui_login.png")




end

function WelcomeScene:onEnter()
	-- body

end

function WelcomeScene:onExit( )
	-- body
end

return WelcomeScene


