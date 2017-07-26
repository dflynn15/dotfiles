if exists('g:vundle_installing_plugins')
  Plugin 'heavenshell/vim-jsdoc'
  finish
endif

let g:jsdoc_default_mapping = 0
let g:jsdoc_underscore_private = 1
let g:jsdoc_allow_input_prompt = 1

nnoremap <leader>j :JsDoc<CR>
