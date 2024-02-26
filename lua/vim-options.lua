vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set autoindent")
vim.cmd("set smartindent")
vim.cmd("set relativenumber")
vim.g.mapleader = " "
vim.cmd("nnoremap <leader><TAB> :><CR>")
-- vim.cmd("nnoremap <A-n> :tabn<CR>")
-- vim.cmd("nnoremap <A-x> :tabc<CR>")
vim.cmd("nnoremap <A-n> :tabnew<CR>")



-- vim.cmd("nnoremap <A-h> :tabl<CR>")
-- vim.cmd("nnoremap <A-l> :tabr<CR>")
-- vim.cmd("nnoremap <A-j> :tabp<CR>")
vim.cmd("nmap <silent> <c-k> :wincmd k<CR>")
vim.cmd("nmap <silent> <c-j> :wincmd j<CR>")
vim.cmd("nmap <silent> <c-h> :wincmd h<CR>")
vim.cmd("nmap <silent> <c-l> :wincmd l<CR>")
vim.cmd("map tv :lcd %:p:h<CR>:vs<CR><C-w><C-w>:set nonu<CR>:te<CR>i")
vim.cmd("map th :lcd %:p:h<CR>:sp<CR><C-w><C-w>:set nonu<CR>:te<CR>i")

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<<leader>-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<<leader>->>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
map('n', '<leader>c', '<Cmd>BufferClose!<CR>', opts)
map('n', '<leader>t', '<Cmd>terminal<CR>', opts)


vim.keymap.set('n', 'gO', "<Cmd>call append(line('.') - 1, repeat([''], v:count1))<CR>")
vim.keymap.set('n', 'go', "<Cmd>call append(line('.'),     repeat([''], v:count1))<CR>")

vim.cmd("tmap <C-h> <C-\\><C-N><C-h>")
vim.cmd("tmap <C-l> <C-\\><C-N><C-l>")
vim.cmd("tmap <C-j> <C-\\><C-N><C-j>")
vim.cmd("tmap <C-k> <C-\\><C-N><C-k>")
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "<C-c>", "i")
