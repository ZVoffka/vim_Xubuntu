set nocompatible
set number
set ruler
--------------------------
set wrap               
                  #Разрыв строк
set linebreak
--------------------------
set laststatus=2
syntax on
-------------------
set hidden
------------------
set foldmethod=syntax
set filetype=vim
set autoindent
autocmd FileType python runtime! autoload/pythoncomplete.vim
set iskeyword=@,48-57,_,192-255
----------------------------------------- 
#Используйте значения по умолчанию Vim вместо 100% совместимость Vi
set showmatch 
------------------------------------------
#Отступы
set smartindent
set autoindent
-----------------------------------------
set cursorline
set spell //проверка арфографии//
-------------------------------------------------
" 256 colors for terminal vim
set t_Co=256
-------------------------------------------------
"загрузить настройки плагина и отступа FOF обнаруженного типа файла
filetype plugin indent on
-------------------------------------------------
"Directories for sqp files
set backupdir=~/dotvim/vim_backups//
set directory=~/dotvim/vim_backups//
set viewdir=~/dotvim/vim_backups//
-------------------------------------------------
function! InsertTabWrapper(direction)
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
    elseif "backward" == a:direction
    return "\<c-p>"
    else
    return "\<c-n>"
    endif
    endfunction
    inoremap <tab> <c-r>=InsertTabWrapper ("forward")<cr>
    inoremap <s-tab> <c-r>=InsertTabWrapper ("backward")<cr>

set langmap=йцукенгшщзхъфывапролджэячсмитьбю/ЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ/;qwertyuiop[]asdfghjkl;'zxcvbnm,./QWERTYUIOP[]ASDFGHJKL:'ZXCVBNM,./
set langmap=Ж:,йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ъ],фa,ыs,вd,аf,пg,рh,оj,лk,дl,э',яz,чx,сc,мv,иb,тn,ьm,б\,,ю.,ё`
set statusline=%f%m%r%h%w\ %y\ enc:%{&enc}\ ff:%{&ff}\ fenc:%{&fenc}%=(ch:%3b\ hex:%2B)\ col:%2c\ line:%2l/%L\ [%2p%%]
--------------------------------------------------------
set showmatch " проверка скобок
--------------------------------------------------------
filetype plugin on 
filetype indent on
-------------------------------------------------------
