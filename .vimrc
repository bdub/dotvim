" 
set nocompatible              " be iMproved, required
filetype off                  " required
" 
" " set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" " vundle plugin list here..
" 
" " :NERDTree - file browser
Plugin 'scrooloose/nerdtree'
" " :Emmet 
" " <c-y,>
" "html/css shorthand, eg div.myclass > a[http://somewhere]#id_name
Plugin 'mattn/emmet-vim'
" " :YCM
" " <tab>
Plugin 'Valloric/YouCompleteMe'
" No good. kept crashing.
" lets try JEDI for python autocompletion . 
"Plugin 'davidhalter/jedi-vim'
"
" lets try Syntastic too - Syntax checking hacks for vim
" Syntastic is a syntax checking plugin that runs files through external syntax checkers and displays any resulting errors
Plugin 'scrooloose/syntastic'

" " :UltisnipEdit
" " <c-k> to trigger
Plugin 'SirVer/ultisnips'
" " a bag load of snippets
Plugin 'honza/vim-snippets'
" <cst> to change surrounding tag.
Plugin 'tpope/vim-surround'
" repeat.vim: enable repeating supported plugin maps with "." 
Plugin 'tpope/vim-repeat'

" highlight containing
Plugin 'Valloric/MatchTagAlways'

" activate the matchit Plugin (which is also available as a macro), makes %
" jump to the matching tag.
Plugin 'tmhedberg/matchit'

" The "Tag List" plugin is a source code browser plugin for Vim and provides an overview of the structure of source code files and allows you to efficiently browse through source code files for different programming languages.  You can visit the taglist plugin home page for more information:       http://vim-taglist.sourceforge.net
" Run the ":helptags ." command to process the     taglist help file. Without this step, you cannot jump to the taglist help     topics.
" You can now use the ":TlistToggle" command to open/close the taglist     window. You can use the ":help taglist" command to get more information     about using the taglist plugin.
Plugin 'taglist.vim'

" a nice statusline
Plugin 'vim-airline'

" Nice base16 colourschemes. 
Plugin 'chriskempson/base16-vim' 
" Lucius : Light and dark color scheme for GUI and 256 color terminal. - http://www.vim.org/scripts/script.php?script_id=2536
Plugin 'jonathanfilip/vim-lucius'

Plugin 'altercation/vim-colors-solarized'

Plugin 'wavded/vim-stylus'

" Trying out the fuzzy search <c-p>
Plugin 'ctrlpvim/ctrlp.vim'


" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
" 
" " set standard shiftwidth, tabstop and softtabstop
autocmd FileType python set tabstop=4
autocmd FileType python set shiftwidth=4
autocmd FileType python set softtabstop=4
autocmd FileType python set expandtab
"
" " a nice base16 based colorsheme. more chosen here: http://chriskempson.github.io/base16/
" colorscheme base16-chalk
" " how to activate Lucius light.
colorscheme lucius
LuciusLight


" setting Solarized colortheme
syntax enable
" colorscheme solarized
" if has('gui_running')
"     set background=light
" else
"     set background=dark
" endif

set cursorline
hi CursorLine term=bold cterm=bold
" guibg=Grey40

" " Trigger configuration for Utisnips. Can't use <tab> because it clashes with YCM  (https://github.com/Valloric/YouCompleteMe.)`
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-j>"
let g:UltiSnipsListSnippets="<F2>"

" 
" " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" g:ycm_path_to_python_interpreter = "/opt/local/bin/python"
"
" Swap iTerm2 cursors in vim insert mode when using tmux
" tmux will only forward escape sequences to the terminal if surrounded by a DCS sequence
" http://sourceforge.net/mailarchive/forum.php?thread_name=AANLkTinkbdoZ8eNR1X2UobLTeww1jFrvfJxTMfKSq-L%2B%40mail.gmail.com&forum_name=tmux-users
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

set omnifunc=syntaxcomplete#Complete
" autocmd FileType python set omnifunc=pythoncomplete#Complete
"
" help in seeing matching tags.
noremap % v%
set showmatch
set matchtime=3

let g:syntastic_javascript_checkers = ['eslint']

" Ariline Tabline
let g:airline#extensions#tabline#enabled = 1
" make Airline visible all the time.
set laststatus=2
