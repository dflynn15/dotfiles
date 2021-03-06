if exists('g:vundle_installing_plugins')
  Plugin 'tpope/vim-fugitive'
  finish
endif

nnoremap <Leader>gc :Gcommit -v<CR>
nnoremap <Leader>gca :Gcommit -a -v<CR>
nnoremap <Leader>ga :Git add<CR>
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gp :Git push<CR>
 " Mnemonic, gu = Git Update
nnoremap <Leader>gu :Git pull<CR>
nnoremap <Leader>gd :Gvdiff<CR>
" Undo the last commit
command! Gcundo :Git reset HEAD~1
