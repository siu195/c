call plug#begin(stdpath('data') . '/plugged')
" visual
Plug 'bluz71/vim-moonfly-colors'
" editing
Plug 'svermeulen/vim-subversive'
Plug 'windwp/nvim-autopairs'
Plug 'b3nj5m1n/kommentary'
Plug 'tpope/vim-abolish'
Plug 'justinmk/vim-sneak'
" telescope
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
Plug 'nvim-lua/plenary.nvim'
" file browser
Plug 'nvim-tree/nvim-web-devicons' " optional
Plug 'nvim-tree/nvim-tree.lua'
" lsp, treesitter, cmp
Plug 'mason-org/mason.nvim'
Plug 'mason-org/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'Saghen/blink.cmp'
" file explorer
call plug#end()
colorscheme moonfly

" s for substitute
nmap s <plug>(SubversiveSubstitute)
nmap ss <plug>(SubversiveSubstituteLine)
nmap S <plug>(SubversiveSubstituteToEndOfLine)
" vim-sneak
let g:sneak#label = 1
map f <Plug>Sneak_s
map F <Plug>Sneak_S
" telescope
nnoremap <Leader>f <cmd>Telescope find_files<cr>
nnoremap <Leader>g <cmd>Telescope live_grep<cr>
nnoremap <Leader>b <cmd>Telescope buffers<cr>
" open telescope if no fileArg onopen
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | execute 'Telescope find_files' | endif
" nvim-tree
nnoremap <Leader>e <cmd>NvimTreeToggle<cr>
" lsp
nnoremap <silent> <leader>j :lua vim.diagnostic.goto_next()<CR>
nnoremap <silent> <leader>k :lua vim.diagnostic.goto_prev()<CR>
nnoremap <silent> gd :lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K :lua vim.lsp.buf.hover()<CR>

lua require("plug")
