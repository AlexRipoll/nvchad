-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
local opt = vim.opt

-------------------------------------- options ------------------------------------------
opt.clipboard = "unnamedplus"

-- Indenting
-- opt.autoindent = true
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4

-- Numbers
opt.relativenumber = true

opt.iskeyword:append("-") -- consider string-string as whole word

opt.scrolloff = 8
