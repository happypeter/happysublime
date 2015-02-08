---
layout: default
title: 安装
---

### 安装并添加 license

首页上暂时还是 sublimeText2 要下载 3 到 <https://www.sublimetext.com/3>

到 menu->help->add license 添加购买的 license 。

如果 license key 丢失，可以到 http://www.sublimetext.com/retrieve 重新获取。

我一般会用系统上的 Alfred 来打开，或者作为一个习惯性的命令行用户，更多的时跳转到项目中

    cd happycasts
    subl .

### 命令行中打开

首先确保你的 ~/bin 目录是在命令查找范围之内，否则可以到你的 .bashrc 或者是 .zshrc 中去添加

    export PATH=~/bin:$PATH

然后
    cd ~/bin
    ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl subl

这样就可以了。

### 老鸟重装

下面这些内容专门针对老手的，如果你是第一次用 sublime 就不用跟着做了，因为后面还会详细的介绍下面提到的这些内容。

直接到 Data 区域，也就是 menu->preferences->browse packages 所打开的区域。到 Packages 目录下，删除 User 目录，目前也都是空的。从 github 上 clone 我自己的 [sublime-config](https://github.com/happypeter/sublime-config) 仓库。

    mv sublime-config User

然后安装 package control ，这时候会弹出信息说安装了一个依赖需要重启，点 OK 先不重启，就会自动开始装包了。

打开 Menu->Preferences->Browse Packages ，到 installed packages 目录下可以看到需要的包都已经装好了。
重启 sublime ，每个插件都试了一下，发现 syncedsidebar 不工作了，删除重装了一下，好了。



