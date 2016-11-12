let [plugins, ftplugin] = dein#load_cache_raw(['/home/nyamamoto/.vimrc', '/home/nyamamoto/.dein.toml'], 1)
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/nyamamoto/.vim/dein'
let g:dein#_runtime_path = '/home/nyamamoto/.vim/dein/.dein'
let &runtimepath = '/home/nyamamoto/.vim/dein/repos/github.com/Shougo/dein.vim,/home/nyamamoto/.vim,/var/lib/vim/addons,/home/nyamamoto/.vim/dein/repos/github.com/elzr/vim-json,/home/nyamamoto/.vim/dein/.dein,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,/home/nyamamoto/.vim/after,/home/nyamamoto/.vim/dein/.dein/after'
filetype off
