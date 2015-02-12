---
layout: default
title: 用 Package Control 来安装扩展包
---

直接安装 sublime 之后，在

    /Applications/Sublime\ Text.app/Contents/MacOS/Packages

默认就安装了很多功能扩展包，但是实际中依然，肯定，需要自己安装其他的包，这个可以通过 Package Control 这个工具来完成。

顺便提一下，默认安装的 snippet 当然是会提供很多功能出来，可能有的功能是你不用的，甚至是略微碍事的，可以通过

{% highlight json %}
"ignored_packages":["PHP"],
{% endhighlight %}

来禁用。

### 安装 Package Control
到 <https://packagecontrol.io/installation> 可以看到 sublime3 中的安装方式，Control+反引号打开控制台，运行代码就可以安装上了。

<!-- package control 干的活基本上就是把包下载到 Installed Packages 目录下，但是安装一下 railscasts theme 试试看，是不是还自动添加了 settings 语句呢 -->


### 基本使用方法
Shift-Ctl-p 打开命令面板，敲 `install...` 就可以找到 `Install Package` 这个命令 ...

### 推荐几个非常好用的包
[我的配置文件](https://github.com/happypeter/sublime-config/blob/master/Package%20Control.sublime-settings) 中列出了我自己安装过的包。下面演示一下他们各自的作用。


同时也可以看到，每次一个新的包安装上了，那么你自己的 Package Control.sublime-settings 这个文件中就会多出这个名字。


<!-- sublimelinter -->

<!-- 
function haha (argument) {
  alert("haha") # 用 missing semicolon 举例
}
 -->

