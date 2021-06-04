"termguicolorstermguicolors============基础配置============
"设置Leade为空格
let mapleader=" "

"列宽
"set columns=85

"VIM风格
"colorscheme one
color gruvbox
colorscheme deus
set background=dark
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:airline_theme='one'

"显示行号
set number

" 自动刷新浏览器
let g:bracey_eval_on_save = 1
"let g:python_host_prog = '/usr/bin/python3'
"let g:python3_host_prog = '/usr/local/bin/python3.9'
" sneak 插件
let g:sneak#label = 1

"====================sneaks快速搜索
"map s <Plug>Sneak_s
"map S <Plug>Sneak_S

set termguicolors
if &term =~# '^screen'
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
"======================vim-easymotion==================
"两个字符快速跳转
nmap s <Plug>(easymotion-s2)
" 向下搜索也是两个字符
"nmap t <Plug>(easymotion-t2)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

let g:EasyMotion_startofline = 0 " keep cursor column when JK motion

"共享剪贴板
"set clipboard+=unnamed
set clipboard+=unnamedplus

"当前行下划线
set cursorline

"行号宽度
set numberwidth=5


" vim-floaterm
nnoremap tl :FloatermNew --height=0.95 --width=0.95 --wintype=floating --name=floaterm1 --position=center --autoclose=2 <CR>
nnoremap tr :FloatermNew --height=0.95 --width=0.95 --wintype=floating --name=floaterm1 --position=center --autoclose=2 ranger <CR>
nnoremap td :FloatermNew --height=0.95 --width=0.95 --wintype=floating --name=floaterm1 --position=center --autoclose=2 mycli -h192.168.10.10 -uhomestead -psecret <CR>
" 切换上一个浮动窗口
let g:floaterm_keymap_next = '<C-n>'
" 切浮动窗口
let g:floaterm_keymap_toggle = '<C-h>'

highlight Normal guibg=NONE ctermbg=None

"状态栏显示方式 0:不显示 1:多窗口显示 2:始终显示
set laststatus=2

"开启鼠标
set mouse=a

"tab数量
set ts=2
"set tabstop=2

syntax on

"相对行号
set relativenumber

"滚动时距离底部有6行
set scrolloff=6

"当前行下划线
"set cursorline

"换行
set wrap

"搜索结果高亮
set hlsearch

"边输入边高亮
set incsearch

"防止每次打开文时显示上次搜索高亮结果
exec "nohlsearch"

"取消搜索结果高亮
noremap <LEADER><CR> :nohlsearch<CR>

" 保存
imap <C-s> <Esc>:w<CR>a
map <C-s> :w<CR>

" Bracey插件，b新浏览器
map br :BraceyReload<CR>

" 设置默认进行大小写不敏感查找
set ignorecase

" 如果有一个大写字母，则切换到大小写敏感查找
set smartcase

set ts=2
set expandtab
set autoindent

"疷部显示输入命令，了解当前正在输入的命令
"set showcmd

"命令模式下tab补全
set wildmenu

"拼写检查
map <LEADER>sc :set spell!<CR>

"最近文件切换 　
imap <C-e> <Esc><C-^>
nmap <C-e> <C-^>

"让s键失效
"map s :w<nop>

"保存文件
" map s  :w<CR>
" imap <C-s> <Esc>:w<CR>

"退出
"map qq :q<CR>
"imap qq <Esc>:q<CR>

"进入命令模式
nmap , :

"返回普通模式
imap jj <Esc>

"快速跳转行
nmap J 5j
nmap K 5k

"重新加载配置文件
map <LEADER>rc :source ~/.config/nvim/init.vim<CR>

"向左分屏
nmap sl :set splitright<CR>:vsplit<CR>
"向右分屏
nmap sh :set nosplitright<CR>:vsplit<CR>
"向上分屏
nmap sk :set nosplitbelow<CR>:split<CR>
"向下分屏
nmap sj :set splitbelow<CR>:split<CR>
"切换为水平分屏
map sV <C-w>t<C-w>H
"切换为垂直分屏
map sH <C-w>t<C-w>K
"移动到上面窗口
nmap <LEADER>k <C-w>k
"移动到下面窗口
nmap <LEADER>j <C-w>j
"移动到左边窗口
nmap <LEADER>h <C-w>h
"移动到右边窗口
nmap <LEADER>l <C-w>l
"窗口缩放
map _ :res -5<CR>
map + :res +5<CR>
map - :vertical :res-5<CR>
map = :vertical :res+5<CR>

"创建标签
map tt :tabe<CR>
"向前跳标签
map tj :-tabnext<CR>
"向后跳标签
map tk :+tabnext<CR>
"资源管理器
nmap ge :CocCommand explorer <CR>

"perttier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

"搜索项目文件
nmap fp :CocCommand fzf-preview.ProjectFiles<CR>
"显示Buffers文件
nmap fb :CocCommand fzf-preview.Buffers<CR>
"显示文件GIT状态
nmap fg :CocCommand fzf-preview.GitStatus<CR>

"当前目录文件
map <silent>rc :RangerOpenCurrentDir<CR>
"项目目录文件
map <silent>rp :RangerOpenProjectRootDir<CR>


"============Yggdroot/LeaderF============
"弹窗显示结果
let g:Lf_WindowPosition = 'popup'

"============vim-airline============
"显示tab和buffer
"let g:airline#extensions#tabline#enabled = 1
"airline风格主题
let g:airline_theme='molokai'

"============stephpy/vim-php-cs-fixer============
" let g:php_cs_fixer_level = "symfony"
" let g:php_cs_fixer_config = "default"
" let g:php_cs_fixer_config_file = '.php_cs' " options: --config
" let g:php_cs_fixer_php_path = "php"               " Path to PHP
" let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
" let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
" let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.
" autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()


"============插件列表============
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mhinz/vim-startify'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'ap/vim-css-color'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'gcmt/wildfire.vim'
Plug 'tpope/vim-surround'

"代码错误提示
"Plug 'dense-analysis/ale'
"Plug 'stephpy/vim-php-cs-fixer'
Plug 'preservim/nerdcommenter'
Plug 'wakatime/vim-wakatime'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'

"GIT相关
"Plug 'tpope/vim-fugitive'
"Plug 'airblade/vim-gitgutter'
"Plug 'tpope/vim-fugitive'
"Plug 'junegunn/gv.vim'

"laravel插件
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-projectionist'
"Plug 'roxma/nvim-completion-manager'
Plug 'noahfrederick/vim-composer'
Plug 'noahfrederick/vim-laravel'
Plug 'editorconfig/editorconfig-vim'

"vue相关
Plug 'leafOfTree/vim-vue-plugin'"

"ranger
Plug 'rbgrouleff/bclose.vim'
Plug 'iberianpig/ranger-explorer.vim'

"fzf-preview
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

Plug 'kevinhwang91/rnvimr'
"替换边界符，如引号
Plug 'easymotion/vim-easymotion'

Plug 'preservim/nerdcommenter'

"liver-server
Plug 'turbio/bracey.vim'

Plug 'preservim/tagbar'

" 关闭标签
Plug 'alvan/vim-closetag'

" 同时修改标签名
Plug 'AndrewRadev/tagalong.vim'

"Plug 'justinmk/vim-sneak'

Plug 'voldikss/vim-floaterm'
Plug 'ryanoasis/vim-devicons'

Plug 'dracula/vim', { 'as': 'dracula' } 

call plug#end()

let g:bracey_server_allow_remote_connections=1
let g:bracey_server_port=8080

"======= nerdcommenter
" Create default mappings
 let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

" 切换注释
" map <c-m> <leader>ci

"============================COC 配置==========================
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
" 加快响应时间单位ms
set updatetime=100

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
R inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
" nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)
nmap <C-p> <LEADER>f

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
" nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
