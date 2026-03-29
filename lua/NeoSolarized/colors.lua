local M = {}

-- @class Dark Color Palette
M.dark = {
	bg0 = "#171717",
	bg1 = "#2e2e2e",
	bg2 = "#464646",
	fg0 = "#5d5d5d",
	fg1 = "#808080",
	fg2 = "#b9b9b9",
	base1 = "#d1d1d1",
	base2 = "#e8e8e8",
	base3 = "#ffffff",
	red = "#ff4040",
	orange = "#f8A048",
	yellow = "#ffb840",
	green = "#60c060",
	aqua = "#70bbe0",
	blue = "#407ce0",
	purple = "#e04a90",
	violet = "#714bbf",
	bg_red = "#801010",
	bg_green = "#108010",
	bg_yellow = "#c08020",
	diff_add = "#208020",
	diff_change = "#c0a040",
	diff_delete = "#a04040",
	diff_text = "#c08040",
	none = "NONE",
}

-- @class Light Color Palette
M.light = {
	bg0 = "#fdf6e3",
	bg1 = "#eee8d5",
	bg2 = "#fdf6e3",
	fg0 = "#002b36",
	fg1 = "#839496",
	fg2 = "#657b83",
	base1 = "#93a1a1",
	base2 = "#002b36",
	base3 = "#073642",
	red = "#dc322f",
	orange = "#cb4b16",
	yellow = "#b58900",
	green = "#859900",
	aqua = "#2aa198",
	blue = "#268bd2",
	purple = "#d33682",
	violet = "#6c71c4",
	bg_red = "#da0000",
	bg_green = "#859000",
	bg_yellow = "#b59900",
	diff_add = "#caffca",
	diff_change = "#ffffca",
	diff_delete = "#ffcaca",
	diff_text = "#e8e8b3",
	none = "NONE",
}

function M.setup(opts)
	opts = opts or {}
	local config = require("NeoSolarized.config")

	local palette = M.dark
	if config.is_day() then
		palette = M.light
	end
	if type(palette) == "function" then
		palette = palette()
	end
	return palette
end

return M
