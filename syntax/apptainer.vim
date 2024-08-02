" Vim syntax file
" Language: Apptainer Build Script
" Maintainer: Yoann Pradat
" Latest Revision: Aug 2, 2024

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword shellCommand exec export apt apt-get yum dnf touch chmod usermod groupmod cat echo

" TODO add more common shell commands

syn case ignore
syn keyword apptainerKeyword Bootstrap From OSVersion MirrorURL Include UpdateURL Include
syn case match

syn keyword apptainerSection contained help setup files labels environment post runscript test
syn keyword apptainerSection contained apphelp applabels appinstall appenv apprun appfiles

" TODO variable dereferencing

" Regions
syn region apptainerString start=/"/ skip=/\\"|\\\\/ end=/"/
syn region apptainerComment start="#" end="\n"
syn region apptainerSectionLine start="^%" end="\s" contains=apptainerSection
syn region apptainerVariable start="%{" end="}"

" Highlighting
hi def link apptainerVariable    Identifier
hi def link apptainerSection     Function
hi def link apptainerSectionLine SpecialChar
hi def link apptainerKeyword     Keyword
hi def link apptainerComment     Comment
hi def link apptainerString      String
hi def link shellCommand           Statement

let b:current_syntax = "apptainer"
