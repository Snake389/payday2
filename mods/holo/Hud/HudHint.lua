Holo:clone(HUDHint)
function HUDHint:init(...)
	self.old.init(self, ...)
	local clip_panel = self._hint_panel:child("clip_panel")
	self._hint_panel:set_top(self._hud_panel:top() + 65)
	clip_panel:child("bg"):set_color(hintbox_color)
	clip_panel:child("bg"):set_alpha(HoloAlpha)
	self._hint_panel:set_h(40)
	clip_panel:child("bg"):set_h(40)
	clip_panel:child("hint_text"):set_color(hintbox_text_color)
	clip_panel:child("hint_text"):set_font_size(12)
	clip_panel:child("hint_text"):set_font(Idstring("fonts/font_large_mf"))
	clip_panel:child("hint_text"):move(0, 2)
	self._hint_panel:child("marker"):set_h(0)
end
function HUDHint:update()
	local clip_panel = self._hint_panel:child("clip_panel")
	clip_panel:child("bg"):set_color(hintbox_color)
	clip_panel:child("bg"):set_alpha(HoloAlpha)
	clip_panel:child("hint_text"):set_color(hintbox_text_color)
end
