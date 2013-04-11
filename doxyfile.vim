" folding for Doxyfiles
" (based on: https://gist.github.com/vim-voom/1035030)
"
" this code can be placed in file
" $HOME/.vim/after/ftplugin/doxyfile.vim

func! Foldexpr_doxyfile()
  let thisline = getline(v:lnum)
  if thisline =~ '^#-\+$'
    let prevline = getline(v:lnum-1)
    if prevline =~ '^\s*$'
      return '>1'
    endif
  endif
  return '='
endfunc
setl foldmethod=expr
setl foldexpr=Foldexpr_doxyfile()
setl foldtext=getline(v:foldstart+1)

"---------- everything after this is optional -----------------------
" change the following fold options to your liking
" see ':help fold-options' for more
setl foldenable
setl foldlevel=0
setl foldcolumn=1


