local map = vim.api.nvim_set_keymap
local options = { noremap = true, silet = true }

map('n', '<Space>', '', {})
vim.g.mapleader = ' '

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.find_files, {})

vim.keymap.set('n', '-', require('oil').open, {})

vim.keymap.set('n', '<C-u>', '<C-u>zz', {})
vim.keymap.set('n', '<C-d>', '<C-d>zz', {})

vim.api.nvim_exec([[
  augroup netrw_mapping
    autocmd!
    autocmd FileType netrw nnoremap <buffer><silent> <C-l> :TmuxNavigateRight<CR>
  augroup END
]], true)

vim.cmd("command! -nargs=0 W write")
vim.cmd("command! -nargs=0 Wq write | quit")

vim.api.nvim_set_keymap('n', '<leader>b', "<cmd>lua require('persistent-breakpoints.api').toggle_breakpoint()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>c', '<Cmd>lua require("dap").continue()<CR>', { noremap = true, silent = true })

vim.keymap.set('x', 'ga', '<Plug>(EasyAlign)', {})

vim.keymap.set('n', 'ga', '<Plug>(EasyAlign)', {})
