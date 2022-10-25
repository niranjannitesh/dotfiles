local status, packer = pcall(require, 'packer')
if not status then
  print('packer not found!')
  return
end

vim.cmd [[packadd packer.nvim]]

return packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Zig
  use 'ziglang/zig.vim'

  -- Color Schemes
  use 'arzg/vim-substrata'

  -- Highlight colors
  use {
    'norcalli/nvim-colorizer.lua',
    ft = { 'css', 'javascript', 'vim', 'html' },
    config = [[require('colorizer').setup {'css', 'javascript', 'vim', 'html'}]],
  }

  -- helpers
  use 'nvim-lua/plenary.nvim'

  -- lsp
  use 'neovim/nvim-lspconfig'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use 'neovim/nvim-lspconfig'
  use 'L3MON4D3/LuaSnip'

  -- UI
  use 'nvim-lualine/lualine.nvim'

  -- lsp UI
  use 'glepnir/lspsaga.nvim'
  use 'onsails/lspkind-nvim'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
end)
