# 快速安装

这是 [向军大叔](https://gitee.com/houdunwang/nvim) 使用的 neovim 配置，本章可以帮助你快速配置好用的 nvovim 环境

![image-20201208103743598](./assets/image-20201208103743598.png)

## 安装软件

### 环境依赖

下面是依赖的软件环境，请确定系统中已经安装成功

-   [npm](https://nodejs.org/zh-cn/)
-   [yarn](https://classic.yarnpkg.com/en/docs/install/#mac-stable)
-   [python](https://www.python.org/downloads/)
-   [neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
-   [vim-plug](https://github.com/junegunn/vim-plug)
-   [ranger](https://ranger.github.io/)

首先安装环境需要的软件

```
# mac
brew install node python3 yarn ranger

# manjaro
sudo pacman -Sy node python3 yarn ranger

# ubuntu
sudo apt install node python3 yarn ranger

# centos
sudo yum install node python3 yarn ranger
```

然后安装 neovim 需要软件包

```
python -m pip install pynvim

pip3 install --user --upgrade neovim

pip3 install ranger-fm
```

[vim-plug](https://github.com/junegunn/vim-plug)是一款非常轻量又高效的 vim 插件管理工具。它支持全异步、多线程并行安装插件，支持 git 分支、标签等，可以对插件进行回滚更新、还支持**按需加载**插件(On-demand loading)，可以指定对特定文件类型加载对应 vim 插件，大大加快了 vim 启动时间。

### vim-plug

可通过官网查看安装细节 https://github.com/junegunn/vim-plug，因为是国外服务器所以你要多试几次。为了帮助大家正常下载，下面的的链接地址已经放在后盾人CDN服务器上了。

```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://houdunren-video.oss-cn-hangzhou.aliyuncs.com/soft/plug.vim
```

### 执行安装

下面列出的常用系统的安装方法，其他系统参考[官方文档](https://github.com/neovim/neovim/wiki/Installing-Neovim)进行安装

```
# MAC
brew install neovim

# manjaro
sudo pacman -Sy neovim

# ubuntu
sudo apt install neovim

# CENTOS 8
yum install neovim
```

注销并重新登录后执行`nvim`就可以打开软件了

## 安装配置

配置还是比较简单的，下载包后执行脚本，再次打开 neovm 时将自动安装插件

### 下载项目

clone 项目

```
git clone https://gitee.com/houdunwang/nvim.git ~/.config/nvim
```

### 安装插件

打开 nvim 执行以下命令安装 coc 扩展

```
CocInstall coc-css coc-explorer coc-html coc-snippets coc-ember coc-json coc-emmet coc-phpls coc-tsserver coc-eslint coc-highlight

CocInstall coc-prettier coc-vetur coc-git coc-svg coc-phpls coc-eslint coc-tailwindcss coc-fzf-preview coc-tabnine coc-fzf-preview

CocCommand eslint.showOutputChannel
```

## 安装后执行

安装 intelephense

```
npm i intelephense -g
```

进入 `~/.vim/plugged/bracey.vim` 执行以下命令，用于生成 liver-server 环境

```
cd ~/.vim/plugged/bracey.vim
npm install --prefix server
```

## 按键定义

Leader 键定义为了空格，下面是自定义的按键说明

### 移动定位

| 热键    | 说明             | 模式 |
| ------- | ---------------- | ---- |
| mm      | 添加注释         |      |
| shift+k | 上移 5 行        |      |
| shift+j | 下移 5 行        |      |
| gd      | 转到类、函数定义 |      |
| gf      | 跳转到文件       |      |
| ctrl+j  | 行首             | 编辑 |
| ctrl_k  | 行尾             | 编辑 |

### 文件操作

| 热键     | 说明                 |
| -------- | -------------------- |
| rc       | 打开当前目录         |
| rp       | 打开项目目录         |
| fp       | 项目文件检测         |
| fb       | 显示 Buffers 文件    |
| fg       | 显示文件 GIT 状态    |
| C-j      | 保存                 |
| C-k      | 最近打开的文件       |
| leader+f | fzf 项目文件模糊搜索 |
| leader+b | fzf Buffer 文件搜索  |

### 浮动窗口

| 热键   | 说明                  |
| ------ | --------------------- |
| tl     | 打开浮动窗口          |
| tr     | 打开 Ranger 浮动窗口  |
| td     | 连接 homestead 数据库 |
| ctrl+h | 隐藏浮动窗口          |
| ctrl+n | 切换上个浮动窗口      |

### 其他操作

| 热键    | 说明                                          |
| ------- | --------------------------------------------- |
| :Bracey | 浏览器同步插件，类似 vscode 中的 liver-server |

## 插件列表

下面是使用的部分插件，你也可以查看官方文档来自行配置插件

1. [https://github.com/neoclide/coc.nvim](https://github.com/neoclide/coc.nvim)
2. [https://github.com/mhinz/vim-startify](https://github.com/mhinz/vim-startify)
3. [https://github.com/Yggdroot/LeaderF](https://github.com/Yggdroot/LeaderF)
4. [https://github.com/ap/vim-css-color](https://github.com/ap/vim-css-color)
5. [https://github.com/vim-airline/vim-airline](https://github.com/vim-airline/vim-airline)
6. https://github.com/vim-airline/vim-airline-themes
7. [https://github.com/gcmt/wildfire.vim](https://github.com/gcmt/wildfire.vim)
8. [https://github.com/tpope/vim-surround](https://github.com/tpope/vim-surround)
9. [https://github.com/justinmk/vim-sneak](https://github.com/justinmk/vim-sneak)
