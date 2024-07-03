-- packer

local fn = vim.fn
local packer_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local packer_compiled_path = fn.stdpath("config") .. "/lua/packer_compiled.lua"
local packer_bootstrap = false
-- Bootstrap and install packer.
if fn.empty(fn.glob(packer_path)) > 0 then
  packer_bootstrap = true
  fn.system({ "rm", "-f", packer_compiled_path })
  fn.system({
    "git", "clone", "--depth", "1",
    "https://github.com/wbthomason/packer.nvim",
    packer_path,
  })
  print("Bootstrapping Packer, please wait until installation is finished")
  vim.cmd("packadd packer.nvim")
end

local packer = require("packer")
local util = require("packer.util")


packer.startup(function()
  -----------------------------
  -- Self-manage packer
  -----------------------------
  use("wbthomason/packer.nvim")
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use "williamboman/nvim-lsp-installer"
  use "LinArcX/telescope-command-palette.nvim"
  use 'onsails/lspkind-nvim'
  use 'mbbill/undotree'
  use 'scrooloose/nerdtree'
  use 'jistr/vim-nerdtree-tabs'
  use 'tpope/vim-commentary'
  use 'tpope/vim-fugitive'
  use 'airblade/vim-gitgutter'
  use 'vim-scripts/grep.vim'
  use 'vim-scripts/CSApprox'
  use 'Raimondi/delimitMate'
  use 'dense-analysis/ale'
  use 'Yggdroot/indentLine'
  use 'editor-bootstrap/vim-bootstrap-updater'
  use 'tpope/vim-rhubarb' 
  use 'nvim-lualine/lualine.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'rmagatti/auto-session'
  use 'majutsushi/tagbar'
  use 'xolox/vim-misc'
  use 'xolox/vim-session'
  use 'sbdchd/neoformat'
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
  use 'mfussenegger/nvim-dap'
  use 'theHamsta/nvim-dap-virtual-text'

  use 'williamboman/mason.nvim'
  use 'jay-babu/mason-nvim-dap.nvim'
  use 'mfussenegger/nvim-dap-python'
  use { "bluz71/vim-moonfly-colors", as = "moonfly" }
  use { "rose-pine/neovim", name = "rose-pine" }



  use {
    'nvim-treesitter/nvim-treesitter',
     run = ':TSUpdate'
  }

  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
        require("lspsaga").setup({})
    end,
    requires = {
        {"nvim-tree/nvim-web-devicons"},
        --Please make sure you install markdown and markdown_inline parser
        {"nvim-treesitter/nvim-treesitter"}
    }
})

  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }


  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { 'junegunn/fzf', run = ":call fzf#install()" }
  use { 'junegunn/fzf.vim' }

  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'norcalli/nvim-colorizer.lua'
  use "folke/neodev.nvim"
  use "sonph/onehalf"


   -- Bootstrap packer on fresh installations.
  if packer_bootstrap then
    packer.sync()
  end
end)



require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')

require("neodev").setup({
  library = { plugins = { "nvim-dap-ui" }, types = true },
})

 local dap = require('dap')



dap.configurations.python = {
      {
        type = 'python';
        request = 'launch';
        name = "Launch file";
        program = "${file}";
        pythonPath = function()
          return '/opt/homebrew/bin/python3'
        end;
      },
}

