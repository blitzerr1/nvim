" Workspace Setup
" ----------------
function! Workspace()
  set tabstop=2       " number of visual spaces per TAB
  set softtabstop=2   " number of spaces in tab when editing
  set shiftwidth=2    " number of spaces to use for autoindent
  set textwidth=79    " wraparound at 79 chars
  cd /Users/$USER/Documents/PADB/
endfunction
command! -register Padb call Workspace()

function! RustSpace()
    " Rough num columns to decide between laptop and big monitor screens
    cd $RUST_HOME
    set tabstop=4
    set shiftwidth=4
    set softtabstop=4   " number of spaces in tab when editing
    set expandtab
    e src/librustc_mir/borrow_check/error_reporting.rs
endfunction
command! -register Rust call RustSpace()
