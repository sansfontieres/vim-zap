" Language: Zap
" Maintainer: Romain Hervier <romain@sansfontieres.com>
" URL: https://github.com/sansfontieres/vim-zap

syntax clear

if exists("b:current_syntax")
  finish
endif

if !exists('g:zap_styles')
    let g:zap_styles = {'ERROR': 'guibg=Red guifg=White'}
endif

syn case ignore
syn region zapComment       start=" \/\/ "   end="$"
syn region zapLineComment   start="\/\/\/ "  end="$"
syn match  zapProject       /^.\+:\*$/               contains=zapComment
syn region zapTask          start="\[ \]"    end="$" contains=zapComment
syn region zapDone          start="\[X\]"    end="$" contains=zapComment
syn region zapDoing         start="\[\/\]"   end="$" contains=zapComment
syn region zapPriority      start="\[!\]"    end="$" contains=zapComment
syn region zapSubmitted     start="\[>\]"    end="$" contains=zapComment

syn sync fromstart

hi def link zapProject     Title
hi def link zapComment     Comment
hi def link zapLineComment Comment
hi def link zapTask        Identifier
hi def link zapDone        Comment
hi def link zapDoing       String
hi def link zapPriority    Error
hi def link zapSubmitted   String

let b:current_syntax = "zap"
