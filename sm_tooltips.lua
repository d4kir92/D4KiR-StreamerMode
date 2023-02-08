-- Tooltips

function SMGTThink()
	for i, tex in pairs( { GameTooltip:GetRegions() } ) do
		if tex.GetText then
			if tex then
				local msg = tex:GetText()
				if msg then
					STMOSetText( tex, msg )
				end
			end
		end
	end
end

if GameTooltip.AddDoubleLine then
	hooksecurefunc( GameTooltip, "AddDoubleLine", function()
		SMGTThink()
	end )
end
if GameTooltip.AddLine then
	hooksecurefunc( GameTooltip, "AddLine", function()
		SMGTThink()
	end )
end
if GameTooltip.AppendText then
	hooksecurefunc( GameTooltip, "AppendText", function()
		SMGTThink()
	end )
end
if GameTooltip.SetText then
	hooksecurefunc( GameTooltip, "SetText", function()
		SMGTThink()
	end )
end

local f = CreateFrame( "FRAME" )
f:SetScript( "OnUpdate", function()
	if DropDownList1Button1NormalText:GetText() then
		STMOSetText( DropDownList1Button1NormalText, DropDownList1Button1NormalText:GetText() )
	end
end )
