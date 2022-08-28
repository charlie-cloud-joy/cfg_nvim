" =================== General Configuration ===========================

  set autoread                 " reload changes from outside of vim
  set colorcolumn=93,100       " Line Ending Indicator
  set number relativenumber    " #s 'relative' to cursor
  set history=10000            " much cmdline history
  set ignorecase               " ignore case
  set lcs+=trail:❚,space:❚     " Use column to indicate spaces when enabled
  set mouse=a                  " Mouse Enabled
  set showcmd                  " show commands, even if incomplete?
  set showmode                 " default, display mode at bottom line
  set smartcase                " Unless includes capital
  set cursorline               " Locate the cursor vertically
  set path+=~/.io/.blanks/**   " Edit Blanks Easily
  set path+=~/.local/bin/**    " Edit localbin Easily
  set path+=~/.config/**       " Edit Configurations Easily
  set path+=**                 " search recursive for files

  set omnifunc=htmlcomplete#CompleteTags
  autocmd FileType ruby setl omnifunc=syntaxcomplete#Complete

  let prefix    = "~/.config/nvim/"
  let $BASH_ENV = "~/.io/config/.aliases"

  " Update Leader Key to Space
  let mapleader=" "
  set timeout timeoutlen=500

  " Syntax Highlighting
  syntax on

  " Auto-Numbers
  augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * if @% == '-MINIMAP-'|echo 'NONUM'|else|set relativenumber|echo 'RELNUM'|vertical resize 104|endif
    autocmd BufLeave,FocusLost,InsertEnter *  set norelativenumber
  augroup END
  autocmd BufEnter,BufWrite * Minimap
  
  autocmd BufWritePre * lua vim.lsp.buf.formatting()

" =================== Swap Files Off ==================================

  set noswapfile
  set nobackup
  set nowb

" =================== Persistent Undo ==================================

  silent !mkdir ~/.config/nvim/.backups > /dev/null 2>$1
  set undodir=~/.config/nvim/.backups
  set undofile

" =================== Folds ============================================

  set foldmethod=indent " Fold based upon indent
  set foldnestmax=3     " Depth max of 3 nested folds`
  set nofoldenable      " Disable default folding

" =================== Keys =============================================

  exe "source " expand(prefix) . "Keymap.vim"

" =================== Indentation ======================================

  set autoindent
  set smartindent
  set smarttab
  set shiftwidth=2
  set softtabstop=2
  set tabstop=2
  set expandtab

  filetype  plugin  on
  filetype  indent  on

  set nowrap    " Don't Wrap lines
  set linebreak " Wrap lines at a convenient point

" =================== Window Pane Resizing ============================

  nnoremap <silent> <Leader>[ :exe "resize" . (winheight(0) * 3/2)<CR>
  nnoremap <silent> <Leader>] :exe "resize" . (winheight(0) * 2/3)<CR>

" =================== Plugins Load =====================================

  source ~/.config/nvim/Plugins.vim

" =================== Colors ==========================================

  let color_file = expand(prefix) . "color/Emerald.vim"
  exe "source "    expand(color_file)

" =================== Status Line =====================================

  set statusline=
  set statusline+=\ \ \ \ \ \ 
  set statusline+=\ %f
  set statusline+=\ \ \ \ \ \ 
  set statusline+=\|%c
  set statusline+=\|
  set statusline+=-%l-
  set statusline+=\ \ \ \ \ \ 
  set statusline+=%{&fileencoding?&fileenconding:&encoding}
  set statusline+=\:%{&fileformat}

" ================================= Language Servers ==================

  exe "luafile " expand(prefix) . "lua/language_servers"
