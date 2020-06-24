let mapleader =" "
set nocompatible              
filetype off                  
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/goyo.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'preservim/nerdtree'
Plugin 'lervag/vimtex'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'morhetz/gruvbox'
Plugin 'rhysd/vim-grammarous'
Plugin 'mboughaba/i3config.vim'
Plugin 'tomasr/molokai'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'sheerun/vim-polyglot'
Plugin 'francoiscabrol/ranger.vim'
Plugin 'rainglow/vim'
Plugin 'WolfgangMehner/c-support'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rakr/vim-one'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ap/vim-css-color'
Plugin 'jceb/vim-orgmode'
Plugin 'jiangmiao/auto-pairs'
Plugin 'christianchiarulli/onedark.vim'
Plugin 'mhartington/oceanic-next'
Plugin 'tpope/vim-surround'
Plugin 'https://tpope.io/vim/repeat.git'
call vundle#end()            
filetype plugin indent on   
syntax on set number
set number relativenumber
set incsearch
set ignorecase
set smartcase
set nohlsearch
set tabstop=4
set softtabstop=0
set shiftwidth=4
"set expandtab
set nobackup
set noswapfile
"color scheme
if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
colorscheme dracula
let g:airline_theme='one'
nnoremap <F12> :colorscheme gruvbox<CR>
nnoremap <F11> :colorscheme molokai<CR>
nnoremap <F10> :colorscheme onedark<CR>
nnoremap <F9> :colorscheme default<CR>
map <leader>g :Goyo \| set bg=light \| set linebreak<CR>
map <leader>s :setlocal spell! spelllang=en_us<CR>
autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'zathura'
let g:vimtex_view_method = 'zathura'
autocmd filetype cpp nnoremap <F5> :wa <bar> !g++ -ulimit -Wall -Wno-unused-result -std=c++11   -O2   % -o %:r && ./%:r <CR>
autocmd filetype python nnoremap <F5> :wa <bar> !python %<CR>
autocmd filetype tex nnoremap <F5> :wa <bar> !pdflatex %<CR><CR>
autocmd filetype tex nnoremap <F6> :!zathura %:r.pdf& disown<CR><CR>
nnoremap <leader>y GVgg"+y''
nnoremap <leader>p "+p
vnoremap <C-c> "+y
map <C-n> :NERDTreeToggle<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>q :xa<CR>
set mouse=a
imap ii <Esc>
" to a Nerd Font (https://github.com/ryanoasis/nerd-fonts):
set guifont=DroidSansMono\ Nerd\ Font\ 18

" testing rounded separators (extra-powerline-symbols):
let g:airline_left_sep = "\uE0D2"
let g:airline_right_sep = "\uE0D4"

" set the CN (column number) symbol:
let g:airline_section_z = airline#section#create(["\uE0A1" . '%{line(".")}' . "\uE0A3" . '%{col(".")}'])
