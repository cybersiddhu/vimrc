
"===============================================================================
"==========  CUSTOMIZATION (vimrc)  ============================================
"===============================================================================
"
"
""-------------------------------------------------------------------------------
" Use Vim settings, rather then Vi settings.
" This must be first, because it changes other options as a side effect.
"-------------------------------------------------------------------------------
set nocompatible

set nu

filetype off

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()


""filetype  plugin on

