"================================================
" Copyright (c) 2024-Now Qeuroal
"
"================================================

" 设置激活的词典匹配关系
let g:vd_dict_match = get(g:, 'dict_match', {})

" 添加自动补全字典
au FileType cpp setlocal dict+=~/.vim/dictionary/cpp_keywords.dict
au FileType java setlocal dict+=~/.vim/dictionary/java_keywords.dict
au FileType python setlocal dict+=~/.vim/dictionary/python_keywords.dict
au FileType vim setlocal dict+=~/.vim/dictionary/vim_keywords.dict
au FileType php setlocal dict+=~/.vim/dictionary/php_keywords.dict


