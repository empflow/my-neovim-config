:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set background=dark

call plug#begin()

Plug 'tpope/vim-surround' " Surround things with braces
Plug 'nvim-lualine/lualine.nvim' " Bottom status bar 
Plug 'tpope/vim-commentary' " For commenting gcc & gc
Plug 'ap/vim-css-color' " CSS color preview
Plug 'rafi/awesome-vim-colorschemes' " Colorschemes
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'ThePrimeagen/vim-be-good' " A game for improving vim skills
Plug 'unblevable/quick-scope' " Highlights the first occurance of a character when 'f' is pressed
Plug 'hrsh7th/nvim-cmp' " Autocompletion
Plug 'nvim-lua/plenary.nvim'
Plug 'hrsh7th/cmp-nvim-lsp' " Autocompletion
Plug 'nvim-tree/nvim-web-devicons' " Icons  
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'run': ':TSUpdate'}
Plug 'theprimeagen/harpoon'

call plug#end()

" Setting the colorscheme (must go after importing the plugin containing the
" theme)
:colorscheme sonokai

let mapleader = " " 

" Harpoon config
lua << END

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<C-a>", mark.add_file)
vim.keymap.set("n", "<C-p>", ui.toggle_quick_menu)
vim.keymap.set("n", "<C-[>", function() ui.nav_prev() end)
vim.keymap.set("n", "<C-]>", function() ui.nav_next() end)

END

" Telescope remaps
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Next character occurance highlighter
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" Lualine theme configuration
lua << END
local wombat_theme = require'lualine.themes.wombat'

require('lualine').setup {
  options = {
    theme = wombat_theme,
  }
}

END

" Treesitter config
lua << END
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "typescript" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
END
