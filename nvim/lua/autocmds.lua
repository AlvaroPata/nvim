local cmd = vim.cmd

-- highlight yank for a brief second for visual feedback
cmd 'autocmd! TextYankPost * lua vim.highlight.on_yank { on_visual = false }'

--[[
augroup filetype python
    autocmd!
    " go to imports"
    autocmd Filetype python nnoremap <buffer> <leader>i gg}O
augroup END

augroup filetype_html
    autocmd!
    autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
augroup END

augroup requirents_version
    autocmd!
    autocmd bufread,bufnewfile requirements.txt let @r='f=r>wyWA,<pdiwxw'
augroup END
]]--
