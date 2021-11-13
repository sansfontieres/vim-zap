" Language: Zap
" Maintainer: Romain Hervier <romain@sansfontieres.com>
" URL: https://github.com/sansfontieres/vim-zap

augroup zap
     au! BufRead,BufNewFile *.zap   setfiletype zap
augroup END
