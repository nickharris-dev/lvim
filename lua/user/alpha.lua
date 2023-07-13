local kind = require("user.kind")

table.insert(
	lvim.builtin.alpha.dashboard.section.buttons.entries,
	1,
	{ "o", kind.icons.clock .. " Open last session", "<cmd>lua require('persistence').load()<cr>" }
)
table.insert(
	lvim.builtin.alpha.dashboard.section.buttons.entries,
	2,
	{ "g", kind.icons.git .. "  Git", "<cmd>lua require 'lvim.core.terminal'.lazygit_toggle()<cr>" }
)
