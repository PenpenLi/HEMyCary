
local UILayer = class("UILayer", function()
	-- body
	return display.newLayer()
end)


function UILayer:ctor()

	--顶部背景
	display.newSprite("indexTitle.png")
		:align(display.CENTER, display.cx, display.top - 26)
		:addTo(self)

	--金币背景
	display.newSprite("#goldBg.png")
		:align(display.CENTER, display.left + 90, display.top - 35)
		:scale(0.9)
		:addTo(self)

	--钻石背景
	display.newSprite("#diamondBg.png")
		:align(display.CENTER, display.cx , display.top - 35)
		:scale(0.9)
		:addTo(self)

	--精力背景
	display.newSprite("#energyBg.png")
		:align(display.CENTER, display.right - 90, display.top - 35)
		:scale(0.9)
		:addTo(self)
	
	self.gold = cc.ui.UILabel.new({
		UILabelType = 2,
		text = "55555",
		font = "font/fzcyj_test.ttf",
		size = 16
		})
		:align(display.CENTER, display.left + 90, display.top - 35)
		:addTo(self)

	self.diamond = cc.ui.UILabel.new({
		UILabelType = 2,
		text = "55555",
		font = "font/fzcyj_test.ttf",
		size = 16
		})
		:align(display.CENTER, display.cx, display.top - 35)
		:addTo(self)
	self.energy = cc.ui.UILabel.new({
		UILabelType = 2,
		text = "55555",
		font = "font/fzcyj_test.ttf",
		size = 16
		})
		:align(display.CENTER, display.right - 90, display.top - 35)
		:addTo(self)

	cc.ui.UIPushButton.new({""})



	print("Cotr")

end


--顶部UI

function UILayer:topUI()


end



return UILayer

