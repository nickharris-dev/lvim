local kind = require("user.kind")

table.insert(
  lvim.builtin.alpha.dashboard.section.buttons.entries,
  1,
  { "o", kind.icons.clock .. " Open last session", "<cmd>lua require('persistence').load()<cr>" }
)
table.insert(
  lvim.builtin.alpha.dashboard.section.buttons.entries,
  2,
  { "e", kind.nvim_tree_icons.folder.empty_open .. "  Explorer", ":NvimTreeOpen<cr>" }
)
table.insert(
  lvim.builtin.alpha.dashboard.section.buttons.entries,
  3,
  { "g", kind.icons.git .. "  Git", "<cmd>lua require 'lvim.core.terminal'.lazygit_toggle()<cr>" }
)
