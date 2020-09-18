" let b:ale_fixers = ['mix_format']
" let b:ale_linters = ['credo']

nmap <leader>r :call RunTerminalCommand('mix run script.exs') <CR>
nmap <leader>dg :call RunTerminalCommand('mix deps.get') <CR>

" let @i = => @i will now run this command
" yiw => yank the current word,
" A => go to insert mode after end of the line
"  = insert(: => will be inserted
" jj => go to normal mode
" p => paste
" a => insert after current char
" ) => will be inserted
" jj => go to normal mode
" # example:
" user => user = insert(:user)
let @i = 'yiwA = insert(:jjpa)jj'
let @l = '0f(f,alabel: ""jji'
let @o = 'o|> IO.inspect()jj'
let @d = '^f:lyw^i%{id: jjpa_id} = jj'

