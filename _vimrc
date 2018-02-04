syntax enable

so ~/vimfiles/plugins.vim

"------------------ Visuals ---------------------------"
colorscheme atom-dark-256 
set guifont=Fira_Code:h12
set t_CO=256

set guioptions -=l
set guioptions -=L
set guioptions -=r
set guioptions -=R


set backspace=indent,eol,start					"make backspace behave like every other editor
set number
let mapleader = ','

"------------------ Search ---------------------------"
set hlsearch
set incsearch


"------------------ Mappings ---------------------------"
set splitbelow
set splitright

nmap <C-J> <C-W><C-J> 
nmap <C-K> <C-W><C-K> 
nmap <C-H> <C-W><C-H> 
nmap <C-L> <C-W><C-L> 

"------------------ Mappings ---------------------------"
nmap <Leader>ev :tabedit $MYVIMRC<cr>

" no selection after search
nmap <Leader><space> :nohlsearch<cr> 

nmap <C-1> :NERDTreeToggle<cr> 

"------------------ Auto-Commands ---------------------------"
"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost _vimrc source %
augroup end
