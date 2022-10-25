local keymap = vim.keymap

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit')

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Disable arrow keys
local opts = { noremap = true, silent = true }
keymap.set('n', '<Up>', '<Nop>', opts)
keymap.set('n', '<Down>', '<Nop>', opts)
keymap.set('n', '<Left>', '<Nop>', opts)
keymap.set('n', '<Right>', '<Nop>', opts)
