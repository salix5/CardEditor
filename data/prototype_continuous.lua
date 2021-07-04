function cxxx.initial_effect()
	--[[
	e?：取代為效果代號
	xxx：取代為卡片ID
	yyy：取代為字串編號，從0開始
	SetCountLimit：預設為「這個卡名的效果1回合只能使用1次」
	--]]
	
	--一般永續效果，只影響自身
	local e?=Effect.CreateEffect(c)
	e?:SetType(EFFECT_TYPE_SINGLE)
	e?:SetCode()
	e?:SetProperty(EFFECT_FLAG_SINGLE_RANGE)
	e?:SetRange(LOCATION_)
	e?:SetCondition(cxxx.)
	e?:SetValue(cxxx.)
	c:RegisterEffect(e?)
	
	--一般永續效果，影響其他卡
	local e?=Effect.CreateEffect(c)
	e?:SetType(EFFECT_TYPE_FIELD)
	e?:SetCode()
	e?:SetProperty(EFFECT_FLAG_)
	e?:SetRange(LOCATION_)
	e?:SetTargetRange(0,0)
	e?:SetCondition(cxxx.)
	e?:SetTarget(cxxx.)
	e?:SetValue(cxxx.)
	c:RegisterEffect(e?)
	
	--改變遊戲狀態的永續效果，此卡...的場合
	local e?=Effect.CreateEffect(c)
	e?:SetDescription(aux.Stringid(xxx,yyy))
	e?:SetType(EFFECT_TYPE_SINGLE+EFFECT_TYPE_CONTINUOUS)
	e?:SetCode(EVENT_)
	e?:SetProperty(EFFECT_FLAG_)
	e?:SetCondition(cxxx.)
	e?:SetOperation(cxxx.)
	c:RegisterEffect(e?)
	
	--改變遊戲狀態的永續效果，其他事件
	local e?=Effect.CreateEffect(c)
	e?:SetDescription(aux.Stringid(xxx,yyy))
	e?:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
	e?:SetCode(EVENT_)
	e?:SetRange(LOCATION_)
	e?:SetProperty(EFFECT_FLAG_)
	e?:SetCondition(cxxx.)
	e?:SetOperation(cxxx.)
	c:RegisterEffect(e?)
	
	--裝備卡給予裝備怪獸的效果
	local e?=Effect.CreateEffect(c)
	e?:SetType(EFFECT_TYPE_EQUIP)
	e?:SetCode()
	e?:SetProperty(EFFECT_FLAG_)
	e?:SetCondition(cxxx.)
	e?:SetValue(cxxx.)
	c:RegisterEffect(e?)
end
