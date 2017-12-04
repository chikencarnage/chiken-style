"    Tagbar
nmap <leader>t :TagbarToggle<CR>
let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
	\ }

"    NERDTree
map <leader>nt :NERDTreeToggle<CR>
map <leader>ntf :NERDTreeFind<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeIgnore=['\.o$', '\.pyc$', '\.php\~$']
let NERDTreeChDirMode = 2
let NERDTreeShowLineNumbers = 1
let NERDTreeAutoCenter = 1


"    Airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='minimalist'

"    VIM-Go
let g:go_fmt_fail_silently = 1
let g:go_fmt_command = "goimports"
let g:go_metalinter_autosave = 1
au FileType go nnoremap <leader>gb :GoBuild<CR>
au FileType go nnoremap <leader>gi :GoInstall<CR>
au FileType go nnoremap <leader>ge :GoErrCheck<CR>
au FileType go nnoremap <leader>gl :GoLint<CR>
let g:go_disable_autoinstall = 0
let g:go_highlight_functions = 1  
let g:go_highlight_methods = 1  
let g:go_highlight_structs = 1  
let g:go_highlight_operators = 1  
let g:go_highlight_build_constraints = 1
let g:go_list_type = "quickfix"

"    Fugitive
map <leader>gdi :Gdiff<CR>
map <leader>gst :Gstatus <CR>

"    Bash
let g:BASH_AuthorName   = ''
let g:BASH_Email        = ''
let g:BASH_Company      = ''
au FileType sh setlocal tabstop=4 expandtab shiftwidth=4 softtabstop=4

"    Python
au FileType py setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4

" Indent Guides
let g:indent_guides_enable_on_vim_startup = 1

"    syntastic
map <leader>sc :SyntasticCheck<CR>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = "✗"
let g:syntastic_go_checkers = ['go', 'golint', 'govet', 'gometalinter']
let g:syntastic_go_gometalinter_args = ['--disable-all', '--enable=errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
