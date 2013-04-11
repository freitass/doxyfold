# doxyfold

Vim script with a Doxyfile folding schema (based on: https://gist.github.com/vim-voom/1035030).

## Installing

Installation is a two-step process:

* Put the following line into your `~/.vimrc`:
```
autocmd BufRead,BufNewFile Doxyfile set filetype=doxyfile
```

* Place the file `doxyfile.vim` in `$HOME/.vim/after/ftplugin/doxyfile.vim`;

