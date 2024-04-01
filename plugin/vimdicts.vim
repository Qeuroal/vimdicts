"================================================
" Copyright (c) 2024-Now Qeuroal
"
"================================================

" {{{> 判断是否已经加载过
if exists("s:did_load_vimdicts")
    finish
endif
let s:did_load_vimdicts = 1
"<}}}

" 设置激活的词典匹配关系
let g:vd_dict_match = get(g:, 'dict_match', {})

let s:dict_path = expand(fnamemodify(expand('<sfile>'), ':p:h:h') . '/dicts')

" 添加自动补全字典
au FileType cpp exec 'setlocal dict+=' . fnameescape(s:dict_path) . '/cpp_keywords.dict'
au FileType java exec 'setlocal dict+=' . fnameescape(s:dict_path) . '/java_keywords.dict'
au FileType python exec 'setlocal dict+=' . fnameescape(s:dict_path) . '/python_keywords.dict'
au FileType vim exec 'setlocal dict+=' . fnameescape(s:dict_path) . '/vim_keywords.dict'
au FileType php exec 'setlocal dict+=' . fnameescape(s:dict_path) . '/php_keywords.dict'


