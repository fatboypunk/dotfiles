set autoindent
set autoread " reload files when changed on disk, i.e. via `git checkout`
set background=dark
set backspace=2  " Fix broken backspace in some setups
set backupcopy=yes " see :help crontab
set clipboard=unnamed " yank and paste with the system clipboard
set cursorcolumn
set cursorline
set directory-=.  " don't store swapfiles in the current directory
set encoding=utf-8
set expandtab " expand tabs to spaces
set hlsearch
set ignorecase " case-insensitive search
set incsearch  " search as you type
set laststatus=2 " always show statusline
set list  " show trailing whitespace
set listchars=tab:▸\ ,trail:▫
set mouse=""
set number
set relativenumber
set ruler  " show where you are
set scrolloff=3 " show context above/below cursorline
set shiftwidth=2  " normal mode indentation commands use 2 spaces
set showcmd
set smartcase " case-sensitive search if any caps
set softtabstop=2 " insert mode tab and backspace use 2 spaces
set tabstop=2
set title
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu " show a navigable menu for tab completion

let g:mapleader=','
map <CR> :nohl<cr>

" Set jj as the esc key
imap jj <Esc>

" resize split windows
" increase pane by 2
nmap <leader>7 :resize +4<CR>
" decrease pane by 2
nmap <leader>8 :resize -4<CR>
" vertical increase pane by 2
map <leader>9 :vertical resize +4<CR>
" vertical decrease pane by 2
nmap <leader>0 :vertical resize -4<CR>

call plug#begin('~/.config/nvim/plugged')

  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif

  let g:deoplete#enable_at_startup = 1
  inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

  Plug 'mhinz/vim-mix-format'
    let g:mix_format_on_save = 1
    let g:mix_format_silent_errors = 1

  Plug 'tpope/vim-markdown'
  Plug 'vim-scripts/ingo-library'
  Plug 'vim-scripts/SyntaxRange'
  Plug 'sheerun/vim-polyglot'

  Plug 'tomasr/molokai'

  Plug 'elixir-editors/vim-elixir'

  Plug 'c-brenn/phoenix.vim'
  Plug 'tpope/vim-projectionist'

  Plug 'slashmili/alchemist.vim'
  Plug 'tpope/vim-commentary'

  Plug 'powerman/vim-plugin-AnsiEsc'

  Plug 'tpope/vim-dispatch'
  Plug 'janko-m/vim-test'
  Plug 'vim-latex/vim-latex'

  if (&ft!='tex')

    nmap <silent> <leader>t :TestNearest<CR><C-\><C-n>
    nmap <silent> <leader>T :TestFile<CR><C-\><C-n>
    nmap <silent> <leader>a :TestSuite<CR><C-\><C-n>
    nmap <silent> <leader>l :TestLast<CR><C-\><C-n>
    nmap <silent> <leader>g :TestVisit<CR>
    let test#strategy = "neovim"
    let g:test#preserve_screen = 1
  else
    g:vimtex_compiler_latexmk
    nmap <silent> <leader>c :VimtexCompile<CR>
  endif

  Plug 'pbrisbin/vim-rename-file'

  " Plug 'rking/ag.vim'
  Plug '/usr/local/opt/fzf'
  Plug 'junegunn/fzf.vim'

  " Plug 'wakatime/vim-wakatime'

  Plug 'mhinz/neovim-remote'
  Plug 'lervag/vimtex'

  Plug 'vim-airline/vim-airline'

  Plug 'rizzatti/dash.vim'
  :nmap <silent> <leader>da <Plug>DashSearch

  Plug 'bogado/file-line'

  Plug 'vim-scripts/indentpython.vim'

  Plug 'ngmy/vim-rubocop'

  Plug 'tpope/vim-rails'

  Plug 'tpope/vim-surround'

  Plug 'flipcoder/vim-textbeat'

  Plug 'Pamplemousse/badWords'

  Plug 'soli/prolog-vim'

  Plug 'KabbAmine/vCoolor.vim'

  Plug 'blueyed/vim-diminactive'

  Plug 'vimwiki/vimwiki'
    let g:vimwiki_list = [{'path': '~/Projects/wiki/'}]

  Plug 'arp242/auto_mkdir2.vim'
call plug#end()

syntax enable
colorscheme molokai
map <leader>n :RenameFile<cr>

" Automatically wrap at 80 characters for LaTeX, Markdown, ruby, css and coffescript
autocmd BufRead,BufNewFile *.tex setlocal textwidth=80
autocmd BufRead,BufNewFile *.md setlocal textwidth=80
autocmd BufRead,BufNewFile *.erb setlocal textwidth=80
autocmd BufRead,BufNewFile *.rb setlocal textwidth=80
autocmd BufRead,BufNewFile *.ex setlocal textwidth=80
autocmd BufRead,BufNewFile *.css setlocal textwidth=80
autocmd BufRead,BufNewFile *.coffee setlocal textwidth=80

" remove trailing whitspaces
autocmd BufWritePre * %s/\s\+$//e
" fdoc is yaml
autocmd BufRead,BufNewFile *.fdoc set filetype=yaml
" md is markdown
autocmd BufRead,BufNewFile *.md set filetype=markdown
" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" if has('nvim')
  tmap <C-o> <C-\><C-n>
" end

au BufNewFile,BufRead *.erl,*.es,*.hrl,*.yaws,*.xrl setf erlang

nmap <leader>s :call OpenViewOrTemplate('sp')<CR>
nmap <leader>v :call OpenViewOrTemplate('vs')<CR>

function! OpenViewOrTemplate(side)
  if expand('%:t') == 'template.html.eex'
    execute a:side . fnamemodify(expand('%:p:h') . '/view.ex', '%:p:h')
  elseif expand('%:t') == 'view.ex'
    execute a:side . fnamemodify(expand('%:p:h') . '/template.html.eex', '%:p:h')
  endif
endfunction

function! RunTerminalCommand(command)
  execute 'botright' . ' new'
  call termopen(a:command)
  au BufLeave <buffer> wincmd p
  nnoremap <buffer> <Enter> :q<CR>
  redraw
  echo "Press <Enter> to exit test runner terminal (<Ctrl-C> first if command is still running)"
endfunction

" use prolog syntax instead of perl for pl
let g:filetype_pl="prolog"
