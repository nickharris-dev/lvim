local kind = require("user.kind")

local wk = lvim.builtin.which_key

wk.mappings["h"] = {}

wk.mappings["Q"] = { "<cmd>qa<cr>", "Quit All" }

wk.mappings["r"] = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename Symbol" }

wk.mappings["z"] = { "<cmd>zenmode<CR>", "Zen mode 🧘" }

-- AI
lvim.builtin.which_key.mappings["a"] = {
	name = "AI",
	a = { "<cmd>ChatGPTCompleteCode<cr>", "ChatGPT Complete Code" },
	c = { "<cmd>ChatGPT<cr>", "ChatGPT" },
	e = { "<cmd>ChatGPTEditWithInstructions<cr>", "ChatGPT Edit With Instructions" },
	s = { "<cmd>ChatGPTActAs<cr>", "ChatGPT Act As" },
	p = { "<cmd>CopilotPanel<cr>", "Copilot Panel" },
}
lvim.builtin.which_key.vmappings["a"] = {
	e = { "<cmd>ChatGPTEditWithInstructions<cr>", "ChatGPT Edit With Instructions" },
}
local ChatGPTRunAS = {
	name = "ChatGPT Run",
	e = { "<cmd>ChatGPTRun explain_code<cr>", "Explain Code" },
	r = { "<cmd>ChatGPTRun code_readability_analysis<cr>", "Readability Analysis" },
	g = { "<cmd>ChatGPTRun grammar_correction<cr>", "Gramma Correction" },
	t = { "<cmd>ChatGPTRun translate<cr>", "Translate" },
	k = { "<cmd>ChatGPTRun keywords<cr>", "Keywords" },
	d = { "<cmd>ChatGPTRun docstring<cr>", "Docstring" },
	a = { "<cmd>ChatGPTRun add_tests<cr>", "Add Tests" },
	o = { "<cmd>ChatGPTRun optimize_code<cr>", "Optimise" },
	s = { "<cmd>ChatGPTRun summarize<cr>", "Summarise" },
	f = { "<cmd>ChatGPTRun fix_bugs<cr>", "Fix Bugs" },
}
lvim.builtin.which_key.mappings["ar"] = ChatGPTRunAS
lvim.builtin.which_key.vmappings["ar"] = ChatGPTRunAS

-- Extend Git
wk.mappings["gy"] = { "<cmd>lua require('gitlinker').get_buf_range_url('n')<cr><cr>", "Copy Buffer Link" }

-- Extend Search
wk.mappings["sw"] = {
	"<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.expand('<cword>') })<cr>",
	" " .. kind.cmp_kind.EnumMember .. " Search Word Under Cursor",
}

wk.mappings["t"] = {
	name = "Telescope",
	p = { ":Telescope projects<cr>", "Projects" }, -- requires telescope-project.nvim plugin
	r = { ":Telescope resume<cr>", "Resume" },
}
