" let g:battery_level = ''
" function! SetBatteryLevel(timer_id)
"   let l:battery_level = system('acpi | grep -oP "(\d+)%" | tr -d "\n"')
"   if (battery_level != '')
"     let g:battery_level = l:battery_level
"     redraw!
"   endif
"   call timer_start(30000, 'SetBatteryLevel')
" endfunction


let g:airline_section_y = '%{strftime("%H:%M")}'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_theme='luna'
let g:airline_detect_spell=0
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#whitespace#checks = ['indent', 'trailing', 'mixed-indent-file']

" call airline#parts#define_function('battery', 'SetBatteryLevel(0)')
" let g:airline_section_y = airline#section#create_right(['ffenc','battery'])
" call SetBatteryLevel(0)
