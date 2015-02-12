---
layout: default
title: 用 Package Control 来安装扩展包
---

直接安装 sublime 之后，在

    /Applications/Sublime\ Text.app/Contents/MacOS/Packages

默认就安装了很多功能扩展包，但是实际中依然，肯定，需要自己安装其他的包，这个可以通过 Package Control 这个工具来完成。

这一集来介绍 Package Control 的安装和使用，并演示了几个我自己常用的包。

### 安装 Package Control
到 <https://packagecontrol.io/installation> 可以看到 sublime3 中的安装方式，Control+反引号打开控制台，运行代码就可以安装上了。

### 基本使用方法
Shift-Ctl-p 打开命令面板，敲 `install...` 就可以找到 `Install Package` 这个命令 。回车，就会看到 sublime 需要处理一会儿，这是去网上读取包名列表呢。出来列表之后就可以来搜索并按照我想要的包了。

比如先来安装一个颜色主题包，叫做 "RailsCasts Colour Scheme" 。安装之后，效果是：第一，在 Sublime Text 的数据区域 Installed Packages 文件夹中，多了这个包。同时 Packages/User/ 下面的文件 Package Control.sublime-settings 里面列出了这个包，这个是为了回头重装 sublime 的时候，方便恢复所有的包。第三，在 Settings User 里面指定了用这个包当颜色主题。

### 推荐几个非常好用的包
[我的配置文件](https://github.com/happypeter/sublime-config/blob/master/Package%20Control.sublime-settings) 中列出了我自己安装过的包。下面演示一下 "AdvancedNewFile", "Git", "SyncedSideBar" 的作用。


