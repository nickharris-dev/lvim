local ok, chatgpt = pcall(require, "chatgpt")
if not ok then
	return
end

chatgpt.setup({})
