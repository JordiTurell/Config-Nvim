
local ok, : = pcall(vim.cmd, "colorscheme base16-onedark")

vim.api.nvim_create_autocmd("TextYankPost", {
	group = num_au,
	callback = function()
		vim.highlight.on_yark({higroup = "Visual", tiemout = 120 })
	end,
})


