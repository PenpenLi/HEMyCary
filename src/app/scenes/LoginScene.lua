--更新以及登陆界面

local LoginScene = class("LoginScene", function(  )
	-- body
	return display.newScene("LoginScene")
end)

function LoginScene:ctor()
	-- body
	display.newSprite("textrue/bg/updateBg.png")
		:align(display.CENTER, display.cx, display.cy)
		:addTo(self)

	self:createBtn()
	-- local lo = import("app.views.Login").new()
	-- 	:addTo(self)
end


function LoginScene:onEnter()
	-- body

end

function LoginScene:onExit()
	-- body
end


--创建更新完成的登陆按钮
function LoginScene:createBtn()

	local fastLogin = cc.ui.UIPushButton.new({
			normal  = "#guestBtn_normal.png",
			pressed = "#guestBtn_pressed.png"
		})
		:align(display.CENTER, display.cx, display.cy)
		:addTo(self)
		:onButtonClicked(function ()
			-- body
			print("快速登陆")

			local mainscene = import("app.scenes.MainScene").new()
			display.replaceScene(mainscene, "fade", 0.8)
		end)

	local login = cc.ui.UIPushButton.new({
			normal  = "#loginBtn_normal.png",
			pressed = "#loginBtn_pressed.png"
		})
		:align(display.CENTER, display.cx - 120, display.cy - 120)
		:addTo(self)
		:onButtonClicked(function ()
			-- body
			print("登陆")
			local loginplane = import("app.views.Login").new()
				:addTo(self)
		end)

	local signin = cc.ui.UIPushButton.new({
		normal  = "#signinBtn_normal.png",
		pressed = "#signinBtn_pressed.png"
		})
		:align(display.CENTER, display.cx + 120, display.cy - 120)
		:addTo(self)
		:onButtonClicked(function ()
			-- body
			print("注册")

		end)
end



return LoginScene