local Login = class("Login", function()
	-- body
	return display.newLayer()
end)

function Login:ctor()
	-- body
	
	self.loginbg = display.newSprite("#loginBg.png")
	:pos(display.cx, display.cy)
	:addTo(self)

	local idinput = cc.ui.UIInput.new({
		image = "",
		listener = onEdit,
		size = cc.size(280,42)
		})
		:pos(display.cx, display.cy - 196)
		:addTo(self.loginbg)
	idinput:setPlaceHolder("请输入账号")

	local passwordinput = cc.ui.UIInput.new({
		image = "",
		listener = onEdit,
		size = cc.size(280,42),
		})
		:pos(display.cx, display.cy - 286)
		:addTo(self.loginbg)
	passwordinput:setInputFlag(0)
	passwordinput:setPlaceHolder("请输入密码")

	local btn_login = cc.ui.UIPushButton.new({
		normal = "#loginBtn_normal.png",
		pressed = "#loginBtn_pressed.png"
		})
		:pos(display.cx - 50, display.bottom + 80)
		:addTo(self.loginbg)
		:onButtonClicked(function(event)
			--TODO
			print("登陆")		
			self:exitAction()	


		end)

	local btn_repassword = cc.ui.UIPushButton.new("#forgetPassword.png")
		:pos(display.cx + 60, display.bottom + 140)
		:addTo(self.loginbg)
		:onButtonClicked(function(event)
			-- TODO
			--device.openURL("http://www.baidu.com")
			print("忘记密码")

			
			
		end)
	self.loginbg:setPosition(display.left - 300, display.cy)
	self:enterAction()
end

function onEdit(event, editbox)
		-- body
		print(event)
	if event == "changed" then
		--todo
		if string.len(editbox:getText()) >= 16 then
			--todo
			editbox:setText(string.sub(editbox:getText(),0,15))
			print(string.len(editbox:getText()))
			return
		end
	end
end

--[[--
执行一个动作效果

-- 等待 1.0 后开始移动对象
-- 耗时 1.5 秒，将对象移动到屏幕中央
-- 移动使用 backout 缓动效果
-- 移动结束后执行函数，显示 move completed
transition.execute(sprite, MoveTo:create(1.5, cc.p(display.cx, display.cy)), {
    delay = 1.0,
    easing = "backout",
    onComplete = function()
        print("move completed")
    end,
})
--]]--

--进入动画
function Login:enterAction()
	self.maskLayer = display.newColorLayer(cc.c4b(0,0,0,150))
	:addTo(self, -1)
	local mt = cc.MoveTo:create(0.3,cc.p(display.cx, display.cy))
	self.loginbg:runAction(mt)
end

--退出散出动画
function Login:exitAction()
	-- body
	self.maskLayer:removeSelf()
	local mt = cc.MoveTo:create(0.3,cc.p(display.right + 300, display.cy))
	local callfunc = cc.CallFunc:create(function()
		-- body
		print("动作执行完毕")
		self:removeSelf()
	end)
	local ca = cc.Sequence:create(mt, callfunc)
	self.loginbg:runAction(ca)
end	

















return Login