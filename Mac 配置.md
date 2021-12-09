# Mac 环境配置

## 前言

考虑到手头上 XPS-7590 黑苹果的使用寿命问题，将现有macOS 的开发环境配置进行记录，方便后续重装系统或者更换白苹果。

系统一览：

<img src="https://cdn.jsdelivr.net/gh/flyingchase/Private-Img@master/uPic/IrOAnt.png" alt="IrOAnt" style="zoom:50%;" />



## 系统设置

### 概述



### 常用设置





## 常用软件说明

### 概述



### 知识管理系统

#### Typora

#### Obsidian

#### Anki

#### Notion

#### ticktick

#### Reeder

### 娱乐

lxmusic 作为音乐播放器，INA 作为影音播放器，Downie4 作为视频下载器



### 工具

NDMdowmload 接管系统下载，



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



































































