" Go filetype plugin for Vim

" Set tabs to 4 spaces for Go files
setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal expandtab

" Enable syntax highlighting
syntax on

" Enable auto-indentation
filetype indent on
setlocal autoindent
setlocal smartindent

" Set Go-specific compiler and error format
compiler go

" Go key mappings
nnoremap <buffer> <F5> :!go run %<CR>
nnoremap <buffer> <F6> :!go build %<CR>
nnoremap <buffer> <F7> :!go test %<CR>

" GoDoc key mapping
nnoremap <buffer> <Leader>gd :GoDoc<CR>

" GoLint key mapping
nnoremap <buffer> <Leader>gl :!golint %<CR>

" Format the code with gofmt before saving
autocmd BufWritePre *.go :silent! execute '%!gofmt'

" Add additional plugins and settings
if exists(':GoInstallBinaries')
  autocmd FileType go call go#config#InstallBinaries()
endif

" Load additional Go settings if vim-go is installed
if exists(':GoDef')
  nnoremap <buffer> <Leader>gd :GoDef<CR>
  nnoremap <buffer> <Leader>gi :GoInfo<CR>
endif

" Set quickfix list for go vet
nnoremap <buffer> <Leader>gv :!go vet ./...<CR>:copen<CR>
