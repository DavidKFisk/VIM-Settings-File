"Turn on / off syntax highlighting in the VIM editor
syntax on

"Current Color Schem
"~~~ colorscheme industry
colorscheme pablo


set encoding=UTF-8

"Show file Status
set ruler

"Show Line Numbers
set number
set relativenumber
set autoindent
set expandtab
set cursorline
set textwidth=120
set nowrap
set colorcolumn=+1
set shiftwidth=4
set softtabstop=4
set tabstop=4
set laststatus=2

"Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

noremap <CR> :nohlsearch<cr>
noremap o o<Esc>

nmap <F2> i<C-R>="#/bin/bash\n"<CR><Esc>
nmap <F3> i<C-R>=strftime("#File Created On %Y-%m-%d %H:%M:%S by: David K. Fisk\n")<CR><Esc>

imap <F2> <C-R>="#/bin/bash\n"<CR>
imap <F3> <C-R>=strftime("#File Created On %Y-%m-%d %H:%M:%S by: David K. Fisk\n")<CR>

command! WipeReg for i in range(34,122) | silent! call setreg(nr2char(i), []) | endfor

highlight colorcolumn ctermbg=gray ctermfg=0

function! DeleteTrailingWS()
    execute "normal mz"
    %s/\s\+$//ge
    execute "normal 'z"
endfunction

function! DeleteBeginingWS()
    g/^ /norm dw
endfunction

function! CH()
    call append(0, "####################################################################")
    call append(1, "#                                                                  #")
    call append(2, "# " . strftime("   File Created %a %b %d, %Y - %H:%M:%S by: David K. Fisk    #" ))
    call append(3, "#                                                                  #")
    call append(4, "####################################################################")
endfunction

function! VN()
    call append(3, "#    Version Major: 0                                              #")
    call append(4, "#            Minor: 0                                              #")
    call append(5, "#            Patch: 0                                              #")
endfunction

function! MF(LineNumber)
    call append(a:LineNumber, "# " . strftime("   File Modifed %a %b %d, %Y - %H:%M:%S by: David K. Fisk    #" ))
endfunction

function! UV(LineNumber)
    call append(a:LineNumber, "# " . strftime("   File Updated %a %b %d, %Y - %H:%M:%S by: David K. Fisk    #" ))
endfunction

cnoremap kj <C-C>
