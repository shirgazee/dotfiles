for f in split(glob('~/.vim/*.vim'), '\n')
    exe 'source' f
endfor

noh
