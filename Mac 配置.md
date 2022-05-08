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

1. 三指拖移

   辅助功能」-「指针控制」-「鼠标与触控板」控制

1. 键盘光标响应

   按键重复重复前延迟

3. 触控板

   <img src="https://cdn.jsdelivr.net/gh/flyingchase/Private-Img@master/uPic/image-20211215111738321.png" alt="image-20211215111738321" style="zoom:50%;" />

<img src="https://cdn.jsdelivr.net/gh/flyingchase/Private-Img@master/uPic/5mWWsN.png" alt="5mWWsN" style="zoom:50%;" />



3. Karabiner 键位控制

   设置`Caps Lock`单按为`Esc`，两次配合为`Ctrl`键位

4. 取消 4 位数密码限制

```shell
# 取消4位数密码限制 
➜ pwpolicy -clearaccountpolicies

# 更改密码
➜ passwd
```

3. 允许安装任意来源 app

   ```bash
   # APP安装开启任何来源
   ➜ sudo spctl --master-disable
   ```

4. Xcode Command Line Tools 安装

   ```bash
   # 安装 xcode 命令行工具
   ➜ xcode-select --install
   ```

5. 减少程序坞响应时间

   ```shell
   # 设置启动坞动画时间设置为 0.5 秒
   ➜ defaults write com.apple.dock autohide-time-modifier -float 0.5 && killall Dock
   
   # 设置启动坞响应时间最短
   ➜ defaults write com.apple.dock autohide-delay -int 0 && killall Dock
   
   # 恢复启动坞默认动画时间
   ➜ defaults delete com.apple.dock autohide-time-modifier && killall Dock
   
   # 恢复默认启动坞响应时间
   ➜ defaults delete com.apple.Dock autohide-delay && killall Dock
   ```

6. 修改启动台行列数

   ```bash
   # 设置列数为 9
   ➜ defaults write com.apple.dock springboard-columns -int 9
   
   # 设置行数为 6
   ➜ defaults write com.apple.dock springboard-rows -int 6
   
   # 重启 Dock 生效
   ➜ killall Dock
   
   # 恢复默认的列数和行数
   ➜ defaults write com.apple.dock springboard-rows Default
   ➜ defaults write com.apple.dock springboard-columns Default
   ```

7. 关闭 SIP

   重启 Mac，按住 Option 键进入启动盘选择模式，按 `⌘` + `R` 进入 Recovery 模式。

   「菜单栏」 ->「 实用工具（Utilities）」-> 「终端（Terminal）」：

   ```bash
   # 关闭SIP
   ➜ csrutil disable
   
   # 查看SIP状态
   ➜ csrutil status
   System Integrity Protection status: disabled.(表明关闭成功)
   ```

8. 

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

**安装**

```shell
➜ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# 更新 Homebrew
➜ brew update

#  搜索相关的包
➜ brew search [关键词] 

# 查看包的信息
➜ rew info [软件名]
 
# 查看已安装的包
➜ brew list

# 更新某个软件
➜ brew upgrade [软件名]

# 清理所有软件的旧版
➜ brew cleanup

# 卸载某个软件
➜ brew uninstall [软件名]
```

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

### zi 管理 zsh

https://z-shell.pages.dev/docs/getting_started/installation/

采用`everforest`作为美化主题，p10k 作为终端主题，`zi`管理 zsh

`zi`安装：

```zsh
sh -c "$(curl -fsSL https://zsh.pages.dev/i)" -- -i skip -b main
```

常见插件：

```zsh
 brew install autojump
 # 拷贝到 plugins 目录下
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

关闭 URL 反斜杠转义

```ini
DISABLE_MAGIC_FUNCTIONS=true
```

禁止 zsh 自动更新

```shell
zstyle ':omz:update' mode disabled
```



### Pyenv 管理 Python 环境

```bash
# 安装 pyenv
brew install pyenv
# 写入 zsh
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# 常用命令
# 查看已经安装的Python版本
pyenv versions
# 查看当前的 Python 版本
pyenv version
# 查看可安装的版本
pyenv install -l

# global 全局设置 一般不建议改变全局设置
pyenv global <python版本>
# shell 会话设置 只影响当前的shell会话
pyenv shell <python版本>
# 取消 shell 会话的设置
pyenv shell --unset
# local 本地设置 只影响所在文件夹
pyenv local <python版本>
```

### nvm 管理Node.js版本

```zsh
# 安装 nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# 查看版本信息
zsh
nvm --version
0.39.1

# 查看当前 node 的版本
nvm version 

# 安装最新稳定版 node
nvm install stable

# 列出所有远程服务器的版本
nvm ls-remote

# 安装指定版本
nvm install v12.22.9
nvm install <version>

# 列出所有已安装的版本
nvm ls

# 卸载指定的版本
nvm uninstall <version>

# 切换使用指定的版本node
nvm use <version>

# 显示当前的版本
nvm current
```





### MySQL

#### 安装 MySQL

```bash
# 搜索可以安装的版本
brew search mysql

# 安装对应的版本
brew install mysql@5.7
```

#### 配置环境变量

```bash
# 查看 MySQL 可执行文件的位置
cd /usr/local/Cellar/mysql@5.7/*/bin && pwd
/usr/local/Cellar/mysql@5.7/5.7.37/bin
```

然后下面内容写入 `~/.zshrc` 配置文件中：

```bash
export PATH="${PATH}:/usr/local/Cellar/mysql@5.7/5.7.37/bin"
```

写入完成后可以使用 `zsh` 刷新一下配置或者手动 `source ~/.zshrc` 一下。

#### 常用操作

```shell
# 查看 M有SQL 服务状态
brew services info mysql@5.7
mysql.server status

# 启动 MySQL 服务
brew services start mysql@5.7
mysql.server start

# 重启 MySQL 服务
brew services restart mysql@5.7
mysql.server restart

# 停止 MySQL 服务
brew services stop mysql@5.7
mysql.server stop
```

#### 设置 MySQL 密码

```bash
# 默认是 root 用户是空密码 可以直接登录
mysql -uroot

# 修改 root 密码的 SQL语句
mysql > use mysql;
mysql > set password for 'root'@'localhost' = password('你设置的密码');

# 刷新权限 并退出
mysql > flush privileges;
mysql > quit; 
```



### Redis

```bash
# 安装 redis
brew install redis

# 启动 redis 服务端
redis-server

# 启动 redis 客户端
redis-cli

# 编辑默认配置文件
sudo vim /usr/local/etc/redis.conf
```

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



















## nvim 配置







## 终端配置

### kitty





























