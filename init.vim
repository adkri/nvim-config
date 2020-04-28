source ~/.config/nvim/basic.vim
source ~/.config/nvim/plugins.vim

"basics
execute pathogen#infect()
syntax on
filetype plugin indent on

"enable mouse
set mouse=a
" don't use arrowkeys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
" really, just don't
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>

" colors
set t_Co=256
if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
  set termguicolors
endif

set background=dark
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark="medium"
let g:gruvbox_contrast_light="hard"
colorscheme gruvbox

let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }

function ThemeDark()
  set background=dark
  let g:gruvbox_contrast_dark="hard"
  colorscheme gruvbox
  let g:lightline.colorscheme = "jellybeans"
  call lightline#init()
  call lightline#colorscheme()
  call lightline#update()
endfunction

function ThemeDark2()
  set background=dark
  let g:gruvbox_contrast_dark="medium"
  colorscheme gruvbox
  let g:lightline.colorscheme = "jellybeans"
  call lightline#init()
  call lightline#colorscheme()
  call lightline#update()
endfunction

function ThemeLight()
  set background=light
  colorscheme github
  let g:lightline.colorscheme = "github"
  call lightline#init()
  call lightline#colorscheme()
  call lightline#update()
endfunction

nnoremap <silent> <leader>ca :<C-u>call ThemeDark()<CR>
nnoremap <silent> <leader>cq :<C-u>call ThemeDark2()<CR>
nnoremap <silent> <leader>cs :<C-u>call ThemeLight()<CR>


"lines, numbers, and tabs
set relativenumber number
set tabstop=2
set shiftwidth=2
set expandtab

" Ctrl-J will act as escape
nnoremap <C-j> <Esc>
vnoremap <C-j> <Esc>gV
onoremap <C-j> <Esc>
cnoremap <C-j> <C-C><Esc>
inoremap <C-j> <Esc>`^


"splits
set splitright splitbelow
set switchbuf=useopen


" if autocomplete still persists the dialog
" "let g:AutoPairsMapCR = 0
"imap <silent><CR> <CR><Plug>AutoPairsReturn

let g:echodoc#enable_at_startup=1


" highlight cpp using the vim-cpp-modern syntax
let g:cpp_no_function_highlight = 1
let g:cpp_simple_highlight = 1
let g:cpp_named_requirements_highlight = 1

let g:deoplete#enable_at_startup = 1
" Close scratch after selecting option
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | silent! pclose | endif

" let g:python3_host_prog='/usr/local/bin/python3'

" let g:ycm_rust_src_path='/Users/amit/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src'
"let g:ycm_rls_binary_path='/Users/amit/.cargo/bin'
"let g:ycm_rustc_binary_path='/Users/amit/.cargo/bin'
set completeopt-=preview


"let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"

" nnoremap <leader>tg :YcmCompleter GoToDeclaration<CR>
" nnoremap <leader>td :YcmCompleter GoToDefinition<CR> 
" nnoremap <leader>tt :YcmCompleter GoTo<CR>
" nnoremap <leader>tf :YcmCompleter FixIt<CR>
" nnoremap <leader>ta :YcmCompleter GetDoc<CR>

