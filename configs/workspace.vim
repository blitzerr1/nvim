" Workspace Setup
" ----------------
function! Workspace()
    " Rough num columns to decide between laptop and big monitor screens
    let numcol = 2
    if winwidth(0) >= 220
        let numcol = 3
    endif


    " if numcol == 3
    "     file ACC
    "     e term://zsh
    "     vnew
    " endif

endfunction
command! -register Padb call Workspace()

function! RustSpace()
    " Rough num columns to decide between laptop and big monitor screens
    cd /Users/joydeep/rust-dev/rust
    set tabstop=2
    set shiftwidth=2
    set expandtab
endfunction
command! -register Rust call RustSpace()
