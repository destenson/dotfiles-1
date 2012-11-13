" Pathogen.vim.
" Must turn filetype off and then back on.
filetype off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

" Ctrl-P, Command-T or whatever.
set wildignore+=*.o,*.obj,.git,tmp
set wildignore+=public/uploads,db/sphinx,vim/backup
set wildignore+=.themes  " Octopress.
"
" Command-T
let g:CommandTMaxHeight=20
let g:CommandTMatchWindowAtTop=1
" Let's get used to Ctrl+P instead.
map <leader>t <nop>
"map <leader>T :CommandTFlush<CR>

" Ctrl-P
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_max_height = 20
let g:ctrlp_show_hidden = 0
let g:ctrlp_max_files = 0

" Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=0
" Slow, so only run on :SyntasticCheck
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [], 'passive_filetypes': [] }

" NERDTree
let NERDTreeIgnore=['\.rbc$', '\~$']
" Disable menu
let g:NERDMenuMode=0


map <leader>n :NERDTreeToggle<CR>
map <leader>N :NERDTreeFindIfFindable<CR>

" Commentary.
xmap <leader>c <Plug>Commentary
nmap <leader>c <Plug>Commentary
nmap <leader>cc <Plug>CommentaryLine
nmap <leader>cu <Plug>CommentaryUndo

" Git grep.
" Using "a" because it used to be :Ack.
" We need the trailing space.
exe "nnoremap <leader>a :GitGrep "

" Buffergator
let g:buffergator_suppress_keymaps = 1
let g:buffergator_sort_regime = 'mru'

map <leader>g :BuffergatorToggle<CR>

" Yankstack
" Plugin must redefine mappings before we do.
call yankstack#setup()
" Don't add default keymaps; we'll set our own.
let g:yankstack_map_keys = 0

nmap å <Plug>yankstack_substitute_older_paste
nmap ä <Plug>yankstack_substitute_newer_paste

" vimux
let g:VimuxOrientation = "h"
let g:VimuxUseNearestPane = 1

" turbux
let g:no_turbux_mappings = 1
map M <Plug>SendTestToTmux
map m <Plug>SendFocusedTestToTmux
let g:turbux_command_rspec = 'script/turbux_rspec'

" Blockle
" ,b is taken by CamelCaseMotion.
let g:blockle_mapping = '<leader>B'

" Ack.vim
" Use The Silver Searcher.
let g:ackprg = 'ag --nogroup --nocolor --column'
