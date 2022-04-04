# Mac 环境配置

## 前言

考虑到手头上 XPS-7590 黑苹果的使用寿命问题，将现有macOS 的开发环境配置进行记录，方便后续重装系统或者更换白苹果。

系统一览：

<img src="https://cdn.jsdelivr.net/gh/flyingchase/Private-Img@master/uPic/IrOAnt.png" alt="IrOAnt" style="zoom:50%;" />

教训:

- 做好多处备份, 机械和固态多个备份, 在升级和较多本地内容变动时加强备份频率;
- 少折腾多干活, 黑苹果不要追求太完美, 现有的版本能稳定运行即可, 多刷题多学习, 不要花时间过于折腾;

## 系统

### 系统设置

#### 常用设置

1. 内建触控板忽视

   辅助功能-指针控制

2. 触控板

   <img src="https://cdn.jsdelivr.net/gh/flyingchase/Private-Img@master/uPic/image-20211215111738321.png" alt="image-20211215111738321" style="zoom:50%;" />

<img src="https://cdn.jsdelivr.net/gh/flyingchase/Private-Img@master/uPic/5mWWsN.png" alt="5mWWsN" style="zoom:50%;" />



3. Karabiner 键位控制

   设置`Caps Lock`单按为`Esc`，两次配合为`Ctrl`键位

   

## 常用软件说明

### 概述



### 知识管理系统

#### Typora——md 编辑器

#### Obsidian——笔记管理

#### Anki——知识复习

#### Notion——LeetCode艾宾浩斯遗忘曲线

#### ticktick——任务管理

#### Reeder——RSS 阅读

### 娱乐

lxmusic 作为音乐播放器，INA 作为影音播放器，Downie4 作为视频下载器

### 工具

NDMdowmload 接管系统下载，

微信小助手

## 开发环境配置

### 概述

使用`brew`作为包管理器，`zsh`和`oh-my-zsh`、`zinit`作为终端环境，`kitty`和`alacritty`作为终端 GUI；

主力开发语言为`Golang`，使用`Goland`和`neovim`作为IDE 和编辑器，其中`Goland`使用 vim 插件配置`.ideavimrc`使用vim 快捷键

### brew

使用 `brew bundle dump`备份tap，所安装的命令行工具，–cask 安装的app，App Store 安装的 app

``` shell
brew bundle dump --describe --force --file="~/Documents/github/dotfiles/Brewfile"
/*
强制在指定路径下生成 Brewfile 文件（有则覆盖）
其中 Brewfile 内容类似
	tap ...
	brew ...
	cask ...
	mas ...
*/
```

使用`brew bundle`恢复备份文件

``` shell
/*
# 1. 安装 brew
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# 2. 安装 mas（appstore 软件备份、恢复）
	brew install mas
*/
# 3. 批量恢复
brew bundle --file="~/Documents/github/dotfiles/Brewfile"
```

使用`Automator`定时备份和自动上传 github

### dotfiels

使用`dotbot`管理 dotfiles文件

### 终端设置

采用`everforest`作为美化主题，p10k 作为终端主题，`zinit`管理 zsh

### Goland

使用教育邮箱免费试用和`Eval`试用

### PD 虚拟机

使用 [PDRuner](https://github.com/lihaoyun6/PD-Runner)进行试用，参考[sainnhe](https://www.sainnhe.dev/post/crack-parallels/)教程试用



### 终端 shell 常见命令

- `C-a` 光标回到行首, `C-e` 光标回到行尾
- `C-f` 光标向前移动一个字符，`C-b` 光标向后移动一个字符
- `Alt-f` 光标向前移动一个单词, `Alt-b` 光标向后移动一个单词
- `C-k` 清掉光标后面的部分, `C-d` 删掉光标后的一个字符 或 退出
- `C-l` 相当于 `clear` 命令，清屏

### tmux

- `C-a "` 横向打开一个面板
- `C-a %` 纵向打开一个面板
- `C-a o` 在面板之间切换
- `C-a q` 展示当前窗口的所有面板的标号
- `C-a z` 放大或缩小一个窗口
- `C-a c` 创建一个窗口
- `C-a h/j/k/l`在面板之间移动
- `C-a d` 临时离开当前 tmux 会话 (detach 之意)
- `tmux a` 重新进入 tmux 会话 (attach 之意)

## 报错及解决汇总




### brew 安装 tar 报错

``` shell
export HOMEBREW_BOTTLE_DOMAIN=''
```



### 禁止`.DS_store`自动生成

`.DS_store`存储文件夹的显示信息（文件图标、背景色类似 window 的 desktop.ini）

`defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE`

恢复其自动生成

`defaults delete com.apple.desktopservices DSDontWriteNetworkStores`





### npm 安装package 显示 TSL1.2必须

`npm set registry=https://registry.npmjs.org/`即可















































