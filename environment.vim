" Vim environment plugin for handling different configurations  of environmental
" variables. The configurations are specified in separate files. Path for the
" configuration files can be specified in the plugin.
"
" Last change:  2012-09-27
" Maintainer:   Robert Norlander <robert.norlander@gmail.com>
" License:      This file is placed in the public domain.

" Make sure that the plug-in is only loaded once
if exists("g:loaded_environment")
"	finish
endif

let g:loaded_environment = 1

" Configuration
let g:path = "~/envconf/"

" User commands
if !exists("ListEnv")
	command! -nargs=0 ListEnv :call s:list_environments(g:path)
endif

if !exists("SetEnv")
	command! -nargs=1 SetEnv :call s:set_environment(<q-args>)
endif

" Functions

" Loads the specified environment and sets the variables in the configuration
function! s:set_environment(environment)
	echo "Changing environment: " . a:environment
	let s:full_path = g:path . a:environment . '.vim'
	execute 'source ' . s:full_path
endfunction

" Returns a list of the available configurations for the given path
function! s:list_environments(path)
	echo "hej"
endfunction


