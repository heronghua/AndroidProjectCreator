augroup compileAndRun
    noremap <leader>r :!cmake --build _build --target all &&cd _build && ./AndroidProjectCreator &&cat t/df <CR>
augroup END

