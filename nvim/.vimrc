
" BASICS ---------------------------------------------------------------- {{{

    " Disable compatibility with vi which can cause unexpected issues.
    set nocompatible

    " Enable type file detection. Vim will be able to try to detect the type of file in use.
    filetype on

    " Enable plugins and load plugin for the detected file type.
    filetype plugin on

    " Load an indent file for the detected file type.
    filetype indent on

    " Turn syntax highlighting on.
    syntax on

    " Add numbers to each line on the left-hand side.
    set number

    " Highlight cursor line underneath the cursor horizontally.
    set cursorline

    " Highlight cursor line underneath the cursor vertically.
    "set cursorcolumn

    " Set shift width to 4 spaces.
    set shiftwidth=4

    " Set tab width to 4 columns.
    set tabstop=4

    " Use space characters instead of tabs.
    set expandtab

    " Do not save backup files.
    set nobackup

    " Do not let cursor scroll below or above N number of lines when scrolling.
    set scrolloff=10

    " Do not wrap lines. Allow long lines to extend as far as the line goes.
    set nowrap

    " While searching though a file incrementally highlight matching characters as you type.
    set incsearch

    " Ignore capital letters during search.
    set ignorecase

    " Override the ignorecase option if searching for capital letters.
    " This will allow you to search specifically for capital letters.
    set smartcase

    " Show partial command you type in the last line of the screen.
    set showcmd

    " Show the mode you are on the last line.
    set showmode

    " Show matching words during a search.
    set showmatch

    " Use highlighting when doing a search.
    set hlsearch

    " Set the commands to save in history default number is 20.
    set history=1000

    " Enable auto completion menu after pressing TAB.
    set wildmenu

    " Make wildmenu behave like similar to Bash completion.
    set wildmode=list:longest

    " There are certain files that we would never want to edit with Vim.
    " Wildmenu will ignore files with these extensions.
    set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

    set nohlsearch

    set pumheight=10

    set clipboard^=unnamed

    set termguicolors

" }}}

" PLUGINS ---------------------------------------------------------------- {{{
call plug#begin('~/.vim/plugged')

    "NerdTree Stuff
    Plug 'preservim/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'ryanoasis/vim-devicons'

    "git
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'

    "Telescope
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/plenary.nvim'
    " Plug 'nvim-telescope/telescope.nvim'

    "Color Schemes
    Plug 'sainnhe/everforest'
    Plug 'NLKNguyen/papercolor-theme' 
    Plug 'joshdick/onedark.vim'
    Plug 'ellisonleao/gruvbox.nvim'
    Plug 'phanviet/vim-monokai-pro'
    Plug 'drewtempelmeyer/palenight.vim'
    Plug 'sainnhe/sonokai'

    "Misc.
    Plug 'dense-analysis/ale'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'sheerun/vim-polyglot'
    Plug 'preservim/nerdcommenter'
    Plug 'kana/vim-submode'
    Plug 'simeji/winresizer'
    Plug 'mhinz/vim-startify'
    Plug 'frazrepo/vim-rainbow'
    " Plug 'tpope/vim-surround'
    " Plug 'tommcdo/vim-lion'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'  
    Plug 'kassio/neoterm'

    "Status Line
    Plug 'itchyny/lightline.vim'

call plug#end()
" }}}

" MAPPINGS --------------------------------------------------------------- {{{

    "set map leader    
    let mapleader="\<Space>"
    
    "rebind delete word
    nnoremap dw daw

    "Press <space> \ to jump back to the last cursor position.
    nnoremap <leader>\ ``

    " Center the cursor vertically when moving to the next word during a search.
    nnoremap n nzzzv
    nnoremap N Nzzzv

    " Yank from cursor to the end of line.
    nnoremap Y y$

    "Split windows
    nnoremap <leader>ww :vsplit<cr> 
    nnoremap <leader>wv :split<cr> 

    " Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
    nnoremap <leader>wj <c-w>j
    nnoremap <leader>wk <c-w>k
    nnoremap <leader>wh <c-w>h
    nnoremap <leader>wl <c-w>l

    "move lines
    vnoremap J :m '>+1<cr>gv=gv'
    vnoremap K :m '<-2<cr>gv=gv'
    inoremap <C-j> :m .+1<cr>==
    inoremap <C-k> :m .-2<cr>==
    nnoremap <leader>k :m .-2<cr>==
    nnoremap <leader>j :m .+1<cr>==

    " "Open NerdTree
    nnoremap <leader>n :NERDTreeToggle<cr>

    " " Have nerdtree ignore certain files and directories.
    let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']

    " "Nerd Commenter
    nnoremap ? :call nerdcommenter#Comment(0,"toggle")<cr>
    vnoremap ? :call nerdcommenter#Comment(0,"toggle")<cr>gv

    "ALE error navigation
    nnoremap <leader>e :ALENextWrap<cr>
    nnoremap <leader>E :ALEPreviousWrap<cr>

    "open .vimrc
    nnoremap <leader>vim :vsplit ~/.config/nvim/.vimrc<cr>

    "source % shortcut
    nnoremap <leader>so :source %<cr>

    " Find files using FZF 
    nnoremap <leader>ff <cmd>Files<cr>
    nnoremap <leader>fb <cmd>Buffers<cr>

    "new window resizing
    nnoremap <leader>r :WinResizerStartResize<cr>

    "buffer navigation
    nnoremap <leader>bn <cmd>bn<cr>
    nnoremap <leader>bp <cmd>bp<cr>
    nnoremap <leader>bd <cmd>bd<cr>

    "Plug Update
    nnoremap <leader>pu :PlugUpdate<cr>
    nnoremap <leader>pi :PlugInstall<cr>
    nnoremap <leader>pc :PlugClean<cr>
    
    "Terminal Commands
    " nnoremap <leader><cr> :TREPLSendLine<cr>j " send current line and move down
    " vnoremap <leader><cr> :TREPLSendSelection<cr> " send current selection
    nnoremap <leader><CR> :Ttoggle<CR>
    tnoremap <Esc> <C-\><C-n> 

" }}}

" VIMSCRIPT -------------------------------------------------------------- {{{

    " This will enable code folding.
    " Use the marker method of folding.
    augroup filetype_vim
        autocmd!
        autocmd FileType vim setlocal foldmethod=marker
    augroup END

    augroup remember_folds
      autocmd!
      "autocmd BufWinLeave * mkview
      autocmd BufWinLeave,BufLeave,BufWritePost,BufHidden,QuitPre ?* nested silent! mkview!
      autocmd BufWinEnter ?* silent! loadview
    augroup END

    " Display cursorline and cursorcolumn ONLY in active window.
    augroup cursor_off
        autocmd!
        autocmd WinLeave * set nocursorline
        autocmd WinEnter * set cursorline
    augroup END

    " Display more of the file by default.
    " Hide the toolbar.
    set guioptions-=T

    " Hide the the left-side scroll bar.
    set guioptions-=L

    " Hide the the right-side scroll bar.
    set guioptions-=r

    " Hide the the menu bar.
    set guioptions-=m

    " Hide the the bottom scroll bar.
    set guioptions-=b

    "Format on save
    command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

    filetype plugin on 

    set background=dark
    colorscheme sonokai

    "start nvin with NERDTree open
    autocmd VimEnter * NERDTree 
    autocmd VimEnter * wincmd p

    "close vim if nerd tree is only buffer
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

    "NERDTree Icons
    let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'🔧',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

    let g:NERDCommentEmptyLines = 1
    let g:NERDSpaceDelims = 1
    let g:NERDCompactSexyComs = 1
    let g:NERDTrimTrailingWhitespace = 1
    let g:NERDDefaultAlign = 'left'

    let g:startify_custom_header = []
    let g:startify_bookmarks = [
      \ '~/.config/nvim/.vimrc',
      \ ]

    set noswapfile
    "allow comments in json
    autocmd FileType json syntax match Comment +\/\/.\+$+

    "toggle coc
    function! CocToggle()
        if g:coc_enabled
            CocDisable
        else
            CocEnable
        endif
    endfunction
    command! CocToggle :call CocToggle()

    let g:rainbow_active = 1

    let g:rainbow_load_separately = [
                \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
                \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
                \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
                \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
                \ ]

    let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
    let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']

    let g:neoterm_default_mod='belowright' " open terminal in bottom split
    let g:neoterm_size=16 " terminal split size
    let g:neoterm_autoscroll=1 " scroll to the bottom when running a command
" }}}

" STATUS LINE ------------------------------------------------------------ {{{
   
    "status line basics
    set noshowmode
    autocmd VimEnter,WinEnter,BufEnter,BufDelete,SessionLoadPost,FileChangedShellPost * call lightline#update()
    autocmd BufLeave,WinLeave * setlocal statusline=""
    set laststatus=2
    if !has('gui_running')
        set t_Co=256
    endif

    "lightline
    let g:lightline = { 
                \ 'colorscheme': 'wombat',
                \ 'active': {
                    \ 'left': [ [ 'mode', 'paste' ],
                    \           [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
                    \ },
                    \ 'component_function': {
                        \   'gitbranch': 'FugitiveHead'
                        \ }
                        \ }
" }}}

