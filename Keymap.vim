
" ================================= Braces & Brackets =================

  source $HOME/.config/nvim/Brackets.vim

" ================================= YAML ==============================

  nnoremap <Leader>yml ggI--- #<esc>:r!date -u +\%s<CR>kJx2o<esc>I...<esc>kms

" ================================= Comments ==========================

   nnoremap <Leader># mrI# <esc>`r
   nnoremap <Leader><A-#> mr^d2l`r
   vnoremap # <c-v>I# <esc>
   vnoremap <A-#> I<Del><Del><esc>

" ================================= Completion ========================

  inoremap </ </<c-x><c-o>
  inoremap "<Space>=== " ==================================<c-o>mn===================================<CR>

" ================================= EasyAlign =========================

  xmap ga <Plug>(EasyAlign)
  nmap ga <Plug>(EasyAlign)
  vmap <M-A> gaip*<c-X>

" ================================= Insert Movement ===================

  inoremap <c-h> <c-o>h
  inoremap <c-j> <c-o>j
  inoremap <c-k> <c-o>k
  inoremap <c-l> <esc>la

" ================================= select all ========================

  inoremap <a-a> <esc>mpggvg
  nnoremap <A-a> mpggVG
  vnoremap <A-a> mpggVG

" ================================= Tabs / unTabs =====================

  nnoremap <Leader><Tab> mp^<c-v>'ii  <esc>`p
  nnoremap <Leader><A-Tab> mp<home><c-v>'ihx`p 
  nnoremap <A-Tab> vip<c-v>lx
  vnoremap <A-Tab> <c-v>lxv
  nnoremap <Tab> mpvip<c-v>I  <esc>`p
  vnoremap <Tab> <c-v>I<Tab><esc>

" ================================ Shebang ============================

  nnoremap 3r mhggI#!/usr/bin/env ruby<CR># frozen_string_literal: true<CR><esc>`h
  nnoremap 3b mhggI#!/bin/bash<CR><esc>`h

" ================================ Utility ============================

  nnoremap ~ :r!
  inoremap kj <esc>l
  inoremap KJ <esc>l
  vnoremap KJ <esc>l
  vnoremap kj <esc>l
  nnoremap X :bd!1<CR>
  nnoremap D :r!date -u +\%s<CR>Jx
  nnoremap <c-l> :lua lsp.vim.buf.formatting()<CR>
  nnoremap <c-s> :w<CR>
  inoremap <c-s> <c-o>:w<CR>
  nnoremap <c-e> :e<CR>
  nnoremap <c-x> :q<CR>
  nnoremap <Leader>r :source $MYVIMRC<CR>
  nnoremap <Leader>q :q!<CR>
  nnoremap <Leader>% :! ./%<CR>
  nnoremap <Leader>t :tabnew 
  nnoremap <A-t> :tabfind 
  nnoremap <A-f> :sfind 
  nnoremap <c-f> :set filetype=
  nnoremap <A-r> :resize 
  nnoremap <Leader>col :sfind ~/.config/nvim/Color.vim<CR>
  nnoremap <Leader>key :sfind ~/.config/nvim/Keymap.vim<CR>
  nnoremap <Leader>init :sfind ~/.config/nvim/init.vim<CR>
  nnoremap <Leader>s :w 
  nnoremap <Leader>S :w 

" ================================= Whitespace Toggle =================

  nnoremap <A-p> :set list!<CR>
  vnoremap <A-p> :set list!<CR>

