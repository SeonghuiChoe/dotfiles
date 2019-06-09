" junegunn/fzf.vim

nnoremap <c-p> :FZF<cr>

" Search for selection
function! VisualSelection()
  try
    let a_save = @a
    normal! gv"ay
    return @a
  finally
    let @a = a_save
  endtry
endfunction

function! SearchProjectForSelect()
  exec ":Ag! " . VisualSelection()
endfunction

map <leader>s :call SearchProjectForSelect()<cr>
