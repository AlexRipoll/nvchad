local present, toggleterm = pcall(require, "toggleterm")
if not present then
	return
end

toggleterm.setup({
	size = 30,
	open_mapping = [[<C-t>]],
	hide_numbers = true,
	shade_filetypes = {},
	shade_terminals = true,
	shading_factor = 2,
	start_in_insert = true,
	insert_mappings = true,
	persist_size = true,
	direction = "float",
	close_on_exit = true,
	shell = vim.o.shell,
	float_opts = {
		border = "curved",
		winblend = 0,
		highlights = {
			border = "Normal",
			background = "Normal",
		},
	},
})

function _G.set_terminal_keymaps()
	local opts = { noremap = true }
	vim.keymap.set("t", "<esc>", [[<C-t><C-n>]], opts)
	vim.keymap.set("t", "jk", [[<C-t><C-n>]], opts)
	vim.keymap.set("t", "<C-h>", [[<C-t><C-n><C-W>h]], opts)
	vim.keymap.set("t", "<C-j>", [[<C-t><C-n><C-W>j]], opts)
	vim.keymap.set("t", "<C-k>", [[<C-t><C-n><C-W>k]], opts)
	vim.keymap.set("t", "<C-l>", [[<C-t><C-n><C-W>l]], opts)
end

vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
