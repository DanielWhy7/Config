set fillchars+=eob:\ 
syntax off
set mouse=a

"set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

"set clipboard=unnamed
vnoremap "c :!termux-clipboard-set<CR>
"nnoremap "c :!termux-clipboard-set<CR>

vnoremap "y :w !termux-clipboard-set<CR><CR>
"nnoremap "y :w !termux-clipboard-set<CR><CR>

vnoremap "p :read !termux-clipboard-get<CR>
nnoremap "p :read !termux-clipboard-get<CR>
