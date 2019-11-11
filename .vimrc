set nocompatible        " 取消vi兼容模式

" auto download vim plugins when start a new vim {
    "if empty(glob('~/.vim/autoload/plug.vim'))
        "silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                    "\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        "autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    "endif
" }

" some new setting {{
    let mapleader=";"

    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_SR = "\<Esc>]50;CursorShape=2\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
    
    " I don't know what does it use for
    "au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

    noremap Q :q<CR>
    noremap S :w<CR>

    noremap <LEADER>st :Startify<CR>

    " Search
    noremap <LEADER><CR> :nohlsearch<CR>

    noremap <silent> K 5k
    noremap <silent> J 5j

    " H key: go to the start of the line
    noremap <silent> H 0
    " L key: go to the end of the line
    noremap <silent> L $

    noremap W 5w
    noremap B 5b

    " split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
    noremap sk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
    noremap sj :set splitbelow<CR>:split<CR>
    noremap sh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
    noremap sl :set splitright<CR>:vsplit<CR>

    " Resize splits with arrow keys
    noremap <c-up> :res +5<CR>
    noremap <c-down> :res -5<CR>
    noremap <c-left> :vertical resize-5<CR>
    noremap <c-right> :vertical resize+5<CR>

    " Tab management
    " Create a new tab with tu
    noremap te :tabe<CR>
    " Move around tabs with tn and ti
    noremap tn :-tabnext<CR>
    noremap tp :+tabnext<CR>
    " Move the tabs with tmn and tmi
    noremap tmn :-tabmove<CR>
    noremap tmp :+tabmove<CR>
" }}

" Vim setting {{
    " 复制粘贴 {
        set clipboard=unnamed   " 启用系统剪切板
        vnoremap <leader>y "+y
        nnoremap <leader>p "+p
        vnoremap <leader>x "+x
    " }
    
    " 关闭方向键，强制使用hjkl {
        "map <Left> <Nop>
        "map <Right> <Nop>
        "map <Up> <Nop>
        "map <Down> <Nop>
    " }
    
    " 通用设置 {
        filetype on
        filetype plugin on
        set noerrorbells	    " 不让vim发出讨厌的滴滴声
        set noeb 			    " 去掉输入错误的提示
        set report=0 		    " 告诉我们文件的哪一行被改变过
    " }

    " 编码设置 {
        set langmenu=zh_CN.UTF-8
        set helplang=cn
        set termencoding=utf-8
        set encoding=utf8
        set fileencodings=utf8,gbk,cp936,gb2312,gb18030 		" 使用utf-8或gbk打开文件
    " }

    " 显示设置 {
        syntax enable 		" 开启语法高亮功能
        syntax on 			" 允许指定语法高亮配色方案替换默认方案
        filetype indent on
        set number 
        set relativenumber
        set cursorline
        set t_Co=256
        set background=dark
        colorscheme gruvbox
        set nowrap 			" 禁止折行 
        set showcmd 
        set showmode  		" 命令行显示vim当前模式 
        set showmatch 
        set linespace=0 	" 字符间插入的像素行数目 
        set matchtime=1 	" 匹配括号高亮的时间（单位是十分之一秒）		
        set backspace=2 	" 使用回格键正常处理indent,eol,start等 
        set cmdheight=2 
        set laststatus=0    " 显示状态栏 
        set scrolloff=3 	" 光标移动到buffer的顶部和底部时保持3行的距离 
        set tabstop=4 		" 设置编辑时制表符占用空格数
        set softtabstop=4
        set shiftwidth=4
        set smartindent
        set expandtab 		" 将制表符扩展为空格
        set smarttab		" 在行和段开始处使用制表符
        set history=1000
        set fillchars=vert:\ ,stl:\ ,stlnc:\ 	" 在被分割的窗口间显示空白，便于阅读
        set iskeyword+=_,$,@,%,#,-				" 带有如下符号的单词不要被换行分割
        set whichwrap+=<,>,h,l 					" 允许backspace和光标键跨越行边界
        "set listchars=tab:\|\ ,trail:▫
        set listchars=tab:\|\ ,trail:-
    " }

    " 搜索设置 {
        set hlsearch 		" 高亮显示搜索结果
        set incsearch 		" 开启实时搜索功能
        set ignorecase 		" 搜索时大小写不敏感
        set magic 			" 设置魔术
    " }

    " 代码折叠 {
        set foldmethod=indent
        "set foldmethod=syntax
        set nofoldenable 	" 启动vim时关闭折叠代码
        "set foldenable
        "使用zc按键来创建折叠，使用za来打开或者关闭折叠,za经常会误输入，可以用空格键来替代za
        "nnoremap <space> za
    " }

    " 其它设置 {
        set wildmenu      " vim自身命令行模式智能补全
        set nobackup
		set nowritebackup
        set noswapfile
        set noundofile
        set autoread      " 文件在vim之外修改过，自动重新读入
        set autowrite     " 设置自动保存
        set confirm       " 在处理未保存或只读文件的时候，弹出确认
        set splitbelow
        "set splitright
        set ma
    " }

    " 分屏设置 {
        nnoremap <C-J> <C-W><C-J>
        nnoremap <C-K> <C-W><C-K>
        nnoremap <C-L> <C-W><C-L>
        nnoremap <C-H> <C-W><C-H>
    " }

    " Gvim {
        if has("gui_running")
            winpos 150 50
            set go=
            set lines=28
            set columns=120
            set showtabline=0 			" 隐藏Tab栏
            set guifont=Monospace\ 13
            set background=light
            "colorscheme	solarized
            set cursorline
            "set cursorcolumn
        endif
    " }
" }}

" vim-plug {{
    " Specify a directory for plugins 
    call plug#begin('~/.vim/plugged')
    Plug 'mhinz/vim-startify'
    Plug 'scrooloose/nerdtree'    
    Plug 'scrooloose/nerdcommenter'
    "Plug 'altercation/vim-colors-solarized'
    Plug 'Yggdroot/indentLine'
    Plug 'jiangmiao/auto-pairs'
    Plug 'mattn/emmet-vim'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'godlygeek/tabular'
    Plug 'dhruvasagar/vim-table-mode'
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
    Plug 'iamcco/dict.vim'

    Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

    " Initialize plugin system
    call plug#end()
" }}

" Plugins Setting {{
    " startify_custom_header {
        " replace boxed to cowsay, to display the cow
        let g:startify_custom_header = 'startify#pad(startify#fortune#boxed())'
    " }

    " coc.nvim {
        let g:coc_global_extensions = ['coc-python', 'coc-vimlsp', 'coc-css', 'coc-json', 'coc-snippets', 'coc-lists', 'coc-eslint', 'coc-stylelint', 'coc-tsserver', 'coc-pairs', 'coc-highlight']

        " if hidden is not set, TextEdit might fail.
        set hidden

        " Some servers have issues with backup files, see #649
        set nobackup
        set nowritebackup

        " Better display for messages
        set cmdheight=2

        " You will have bad experience for diagnostic messages when it's default 4000.
        set updatetime=300

        " don't give |ins-completion-menu| messages.
        set shortmess+=c

        " always show signcolumns
        set signcolumn=yes

        " Use tab for trigger completion with characters ahead and navigate.
        " Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
        inoremap <silent><expr> <TAB>
              \ pumvisible() ? "\<C-n>" :
              \ <SID>check_back_space() ? "\<TAB>" :
              \ coc#refresh()
        inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

        function! s:check_back_space() abort
          let col = col('.') - 1
          return !col || getline('.')[col - 1]  =~# '\s'
        endfunction

        let g:coc_snippte_next = '<TAB>'
        let g:coc_snippte_prev = '<S-TAB>'

        " Use <c-space> to trigger completion.
        inoremap <silent><expr> <c-space> coc#refresh()

        " Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
        " Coc only does snippet and additional edit on confirm.
        inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
        " Or use `complete_info` if your vim support it, like:
        " inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

        " Use `[g` and `]g` to navigate diagnostics
        nmap <silent> [g <Plug>(coc-diagnostic-prev)
        nmap <silent> ]g <Plug>(coc-diagnostic-next)

        " Remap keys for gotos
        nmap <silent> gd <Plug>(coc-definition)
        nmap <silent> gy <Plug>(coc-type-definition)
        nmap <silent> gi <Plug>(coc-implementation)
        nmap <silent> gr <Plug>(coc-references)

        " Use K to show documentation in preview window
        "nnoremap <silent> K :call <SID>show_documentation()<CR>

        "function! s:show_documentation()
          "if (index(['vim','help'], &filetype) >= 0)
            "execute 'h '.expand('<cword>')
          "else
            "call CocAction('doHover')
          "endif
        "endfunction

        " Highlight symbol under cursor on CursorHold
        autocmd CursorHold * silent call CocActionAsync('highlight')

        " Remap for rename current word
        nmap <leader>rn <Plug>(coc-rename)

        " Remap for format selected region
        xmap <leader>f  <Plug>(coc-format-selected)
        nmap <leader>f  <Plug>(coc-format-selected)

        augroup mygroup
          autocmd!
          " Setup formatexpr specified filetype(s).
          autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
          " Update signature help on jump placeholder
          autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
        augroup end

        " Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
        xmap <leader>a  <Plug>(coc-codeaction-selected)
        nmap <leader>a  <Plug>(coc-codeaction-selected)

        " Remap for do codeAction of current line
        nmap <leader>ac  <Plug>(coc-codeaction)
        " Fix autofix problem of current line
        nmap <leader>qf  <Plug>(coc-fix-current)

        " Create mappings for function text object, requires document symbols feature of languageserver.
        xmap if <Plug>(coc-funcobj-i)
        xmap af <Plug>(coc-funcobj-a)
        omap if <Plug>(coc-funcobj-i)
        omap af <Plug>(coc-funcobj-a)

        " Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
        nmap <silent> <C-d> <Plug>(coc-range-select)
        xmap <silent> <C-d> <Plug>(coc-range-select)

        " Use `:Format` to format current buffer
        command! -nargs=0 Format :call CocAction('format')

        " Use `:Fold` to fold current buffer
        command! -nargs=? Fold :call     CocAction('fold', <f-args>)

        " use `:OR` for organize import of current buffer
        command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

        " Add status line support, for integration with other plugin, checkout `:h coc-status`
        set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

        " Using CocList
        " Show all diagnostics
        nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
        " Manage extensions
        nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
        " Show commands
        nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
        " Find symbol of current document
        nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
        " Search workspace symbols
        nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
        " Do default action for next item.
        nnoremap <silent> <space>j  :<C-u>CocNext<CR>
        " Do default action for previous item.
        nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
        " Resume latest coc list
        nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
    "" }

    " dict {
        let g:api_key = '1932136763' 
        let g:keyfrom = 'aioiyuuko'
        " <leader>d/w to translate to the commandline/newWindow in normal or
        " virtual mode
        " <leader><leader>r to replace current word to translate in normal or
        " vivirtual mode
        " or use ':Dict foo' / ':DictW foo'
    " }

	" markdown-preview {
        source ~/.vim/md-snippets.vim
        "autocmd BufRead,BufNewFile *.md setlocal spell

		"let g:mkdp_auto_start = 0
		"let g:mkdp_auto_close = 1

		" set to 1, the vim will refresh markdown when save the buffer or
		" leave from insert mode, default 0 is auto refresh markdown as you edit or
		" move the cursor
		" default: 0
        let g:mkdp_refresh_slow = 0

		" specify browser to open preview page
		" default: ''
        let g:mkdp_browser = 'chromium'
        let g:mkdp_preview_options = {
            \ 'mkit': {},
            \ 'katex': {},
            \ 'uml': {},
            \ 'maid': {},
            \ 'disable_sync_scroll': 0,
            \ 'sync_scroll_type': 'middle',
            \ 'hide_yaml_meta': 1,
            \ 'sequence_diagrams': {}
            \ }

		" use a custom markdown style must be absolute path
		"let g:mkdp_markdown_css = ''

		" use a custom highlight style must absolute path
		"let g:mkdp_highlight_css = ''

		" use a custom port to start server or random for empty
		"let g:mkdp_port = ''

		" preview page title
		" ${name} will be replace with the file name
        let g:mkdp_page_title = '「${name}」'
	"}

    " emmet {
        " n-normal / inv-all fucntion ,which is equal to / a-all function in
        " all mode
        let g:user_emmet_mode='a'

        let g:user_emmet_install_global = 0
        autocmd FileType html,css EmmetInstall
        
        " default: (<c-y> + ,) 
        "let g:user_emmet_leader_key='<c-z>'
        let g:user_emmet_expandabbr_key='<Tab>'
         
        " }

    " nerdtree {
        let g:NERDTreeWinPos='left'
        let g:NERDTreeSize=30
        let g:NERDTreeShowLineNumbers=1
        let g:NERDTreeHidden=0
        map nt :NERDTreeToggle<CR>

        " 打开vim时自动打开nerdtree, 但是不再显示欢迎界面---插件：starify
        " autocmd vimenter * NERDTree
    " }
    
    " ultisnips {
        let g:UltiSnipsExpandTrigger="<tab>"
        " 使用 tab 切换下一个触发点，shit+tab 上一个触发点
        let g:UltiSnipsJumpForwardTrigger="<tab>"
        let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
        " 使用 UltiSnipsEdit 命令时垂直分割屏幕
        let g:UltiSnipsEditSplit="vertical"
    "}
" }}

" python format {
    au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4  |
    \ set textwidth=79  |
    \ set expandtab     |   "tab替换为空格键
    \ set autoindent    |
    \ set fileformat=unix   "保存文件格式"
" }

" 新建文件插入文件头 {
    autocmd BufNewFile *.sh,*.py,*.java exec ":call SetTitle()"
    func SetTitle()
        if expand("%:e") == 'sh'
            call setline(1,"#!/bin/bash")
            call append(line("."), "")
        elseif expand("%:e") == 'py'
            call setline(1, "#!/usr/bin/python3")
            call append(line("."), "# -*- coding:utf-8 -*-")
            call append(line(".")+1,"")
        elseif expand("%:e") == 'java'
            call setline(1, "")
            call append(line("."), "public class ".expand("%:r")." {")
            call append(line(".")+1, "    public static void main(String[] args) {")
            call append(line(".")+2, "")
            call append(line(".")+3, "    }")
            call append(line(".")+4, "}")
        endif
    endfunc
    autocmd BufNewFile * normal G
" }

" Python,Sh,c,cpp,java,html 编译、运行 {
    map <F5> :call CompileRun()<CR>
    func! CompileRun()
        exec "w"
        if &filetype == 'sh'
            :!time bash %
        elseif &filetype == 'python'
            exec "!time python3 %"
        elseif &filetype == 'markdown'
            exec "MarkdownPreview"
        elseif &filetype == 'c'
            exec "!g++ % -o %<"
            exec "!time ./%<"
        elseif &filetype == 'cpp'
            exec "!g++ % -std=c++11 -o %<"
            exec "!time ./%<"
        elseif &filetype == 'java'
            exec "!javac %"
            exec "!time java %<"
        elseif &filetype == 'html'
            exec "!chromium % &"
        endif
    endfunc
" }

" c, c++的调试 {
    map <F6> :call Rungdb()<CR>
    func! Rungdb()
        exec "w"
        exec "!g++ % -std=c++11 -g -o %<"
        exec "!gdb ./%<"
    endfunc
" }

