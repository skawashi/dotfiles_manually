local keymap = vim.keymap

--Remap space as leader key
keymap.set('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Modes
--   normal_mode = 'n',
--   insert_mode = 'i',
--   visual_mode = 'v',
--   visual_block_mode = 'x',
--   term_mode = 't',
--   command_mode = 'c',
--

-- Do not yank with x
-- keymap.set('n', 'x', ''_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- New tab
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })
-- Split Window
keymap.set('n', '<Space>s', ':split<Return><C-w>w', { silent = true })
keymap.set('n', '<Space>v', ':vsplit<Return><C-w>w', { silent = true })
-- Move Window
keymap.set('n', '<Space>q', '<C-w>w')
keymap.set('n', '<Space><left>', '<C-w>h')
keymap.set('n', '<Space><right>', '<C-w>l')
keymap.set('n', '<Space><up>', '<C-w>k')
keymap.set('n', '<Space><down>', '<C-w>j')
keymap.set('n', '<Space>h', '<C-w>h')
keymap.set('n', '<Space>l', '<C-w>l')
keymap.set('n', '<Space>k', '<C-w>k')
keymap.set('n', '<Space>j', '<C-w>j')

-- Resize Window
keymap.set('n', 'C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')
keymap.set('n', '<C-w>h', '<C-w><')
keymap.set('n', '<C-w>l', '<C-w>>')
keymap.set('n', '<C-w>k', '<C-w>+')
keymap.set('n', '<C-w>j', '<C-w>-')

