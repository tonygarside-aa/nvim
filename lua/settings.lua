vim.o.mouse = ''
vim.o.clipboard = 'unnamedplus'
vim.o.hidden = true

vim.o.status = 'on'
vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = 'yes'
vim.o.cursorline = true

vim.o.autoindent = true
vim.o.smartindent = true
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2

vim.o.incsearch = true
vim.o.hlsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.wrapscan = true

vim.o.laststatus = 2

vim.o.netrw_preview = 1

vim.api.nvim_exec([[
  augroup YankToClipboard
    autocmd!
    autocmd TextYankPost * if v:event.operator == 'y' && v:event.regname == '' | call system("pbcopy", @0) | endif
  augroup end
]], true)

vim.g.gruvbox_material_background = 'medium'
vim.g.gruvbox_material_palette = 'mix'
vim.cmd 'colorscheme gruvbox-material'
