# nvim
这是向军大叔使用的neovim配置

![image-20201208103743598](./assets/image-20201208103743598.png)

## 依赖软件

下面是依赖的软件环境，请确定系统中已经安装成功

*  [npm](https://nodejs.org/zh-cn/) 
*  [yarn](https://classic.yarnpkg.com/en/docs/install/#mac-stable)
* [python](https://www.python.org/downloads/)
* [neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
* [vim-plug](https://github.com/junegunn/vim-plug)
* [ranger](https://ranger.github.io/)
* 安装ctags `brew install ctags`

manjaro 系统剪贴板共享，需要安装以下命令

```
sudo pacman -S xsel
```

## 安装配置

配置还是比较简单的，下载包后执行脚本，再次打开neovm时将自动安装插件

clone项目

```
git clone https://github.com/houdunwang/nvim.git ~/.config/nvim
```

执行脚本

如果脚本执行不成功，请手动将 `coc-settings` 更改为 `coc-settings.json`

```
sh ~/.config/nvim/init.sh
```

## COC插件

打开nvim执行以下命令安装coc扩展

```
CocInstall coc-css coc-explorer coc-html coc-snippets coc-ember coc-json coc-emmet coc-phpls coc-tsserver coc-eslint coc-highlight 

CocInstall coc-prettier coc-vetur coc-git coc-svg coc-phpls coc-eslint coc-tailwindcss coc-fzf-preview coc-tabnine coc-fzf-preview
```

## 安装后执行

安装 intelephense

```
npm i intelephense -g
```

进入 `~/.vim/plugged/bracey.vim 执行以下命令，用于生成 liver-server 环境

```
npm install --prefix server
```

## 按键定义

Leader 键定义为了空格，下面是自定义的按键说明

### 移动定位

| 热键    | 说明             |
| ------- | ---------------- |
| ctrl+m  | 切换代码注释     |
| shift+k | 上移5 行         |
| shift+j | 下移5行          |
| gd      | 转到类、函数定义 |
| gf      | 跳转到文件       |

### 文件操作

| 热键     | 说明                 |
| -------- | -------------------- |
| Ss       | 保存                 |
| rc       | 打开当前目录         |
| rp       | 打开项目目录         |
| leader+f | fzf项目文件模糊搜索  |
| leader+b | fzf  Buffer 文件搜索 |
| fp       | 项目文件检测         |
| fb       | 显示Buffers文件      |
| fg       | 显示文件GIT状态      |

### 代码提示

| 热键     | 说明                     |
| -------- | ------------------------ |
| ctrl+i   | 代码补会提示（编辑模式） |
| LEADER+- | 上一个错误位置           |
| LEADER++ | 下一个错误发生的位置     |

### 其他操作

| 热键    | 说明                                       |
| ------- | ------------------------------------------ |
| :Bracey | 浏览器同步插件，类似vscode中的liver-server |

## 插件列表

下面是配置项中使用到的插件

1. [https://github.com/neoclide/coc.nvim](https://github.com/neoclide/coc.nvim)

2. [https://github.com/mhinz/vim-startify](https://github.com/mhinz/vim-startify)

3. [https://github.com/Yggdroot/LeaderF](https://github.com/Yggdroot/LeaderF)

4. [https://github.com/ap/vim-css-color](https://github.com/ap/vim-css-color)

5. [https://github.com/vim-airline/vim-airline](https://github.com/vim-airline/vim-airline)

6. [https://github.com/vim-airline/vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)

7. [https://github.com/gcmt/wildfire.vim](https://github.com/gcmt/wildfire.vim)

8. [https://github.com/tpope/vim-surround](https://github.com/tpope/vim-surround)

   