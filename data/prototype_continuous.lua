--[[
	e?：取代為效果代號
	yyy：取代為字串編號，從0開始
	SetCountLimit：預設為「這個卡名的效果1回合只能使用1次」
]]
local s,id,o=GetID()
function s.initial_effect(c)
	--一般永續效果，只影響自身
	local e?=Effect.CreateEffect(c)
	e?:SetType(EFFECT_TYPE_SINGLE)
	e?:SetCode()
	e?:SetProperty(EFFECT_FLAG_SINGLE_RANGE)
	e?:SetRange(LOCATION_)
	e?:SetCondition(s.)
	e?:SetValue(s.)
	c:RegisterEffect(e?)
	
	--一般永續效果，影響其他卡
	local e?=Effect.CreateEffect(c)
	e?:SetType(EFFECT_TYPE_FIELD)
	e?:SetCode()
	e?:SetProperty(EFFECT_FLAG_)
	e?:SetRange(LOCATION_)
	e?:SetTargetRange(0,0)
	e?:SetCondition(s.)
	e?:SetTarget(s.)
	e?:SetValue(s.)
	c:RegisterEffect(e?)
	
	--觸發型永續效果，此卡...的場合
	local e?=Effect.CreateEffect(c)
	e?:SetDescription(aux.Stringid(id,yyy))
	e?:SetType(EFFECT_TYPE_SINGLE+EFFECT_TYPE_CONTINUOUS)
	e?:SetCode(EVENT_)
	e?:SetProperty(EFFECT_FLAG_)
	e?:SetCondition(s.)
	e?:SetOperation(s.)
	c:RegisterEffect(e?)
	
	--觸發型永續效果，其他事件
	local e?=Effect.CreateEffect(c)
	e?:SetDescription(aux.Stringid(id,yyy))
	e?:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
	e?:SetCode(EVENT_)
	e?:SetRange(LOCATION_)
	e?:SetProperty(EFFECT_FLAG_)
	e?:SetCondition(s.)
	e?:SetOperation(s.)
	c:RegisterEffect(e?)
	
	--裝備卡給予裝備怪獸的效果
	local e?=Effect.CreateEffect(c)
	e?:SetType(EFFECT_TYPE_EQUIP)
	e?:SetCode()
	e?:SetProperty(EFFECT_FLAG_)
	e?:SetCondition(s.)
	e?:SetValue(s.)
	c:RegisterEffect(e?)
end
