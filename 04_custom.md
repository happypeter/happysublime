---
layout: default
title: 自定制
---

聊一下如何对 sublime 进行自定制。主要是自定制系统结构的介绍，更多的细节后面讲具体功能的时候会再聊。反正差不多哪个功能都离不开这个系统。

### One Place for All
sublime 有一个很简单的特点，就是所有用户自定制的内容都会放在一个文件夹中。不同的操作系统肯定是不同的，google 一下就知道了，不过 Mac 系统下是

	~/Library/Application Support/Sublime Text 3/Packages/User

写到这里的数据是不会被自动升级而被覆盖的。可以到 menu->Sublime Text->Preferences->Browse Packages 中找到这个文件夹。

熟悉 vim 编辑器的朋友可以把这个位置当成 ~/.vim/ 文件夹。而且跟 vim 一样，sublime 的配置文件也都是，继承 Unix 哲学的简单透明原则，纯文本格式的。乍一看可能因为没有图形界面，显得简陋点，但是实际上是更加好用，因为透明嘛。

配置内容到底有哪些？可以参考我的 [sublime-config](https://github.com/happypeter/sublime-config) 仓库。

除了这些，如果安装扩展包，包也一样有自己的 Default 设置，肯定不会放在这里。包的用户自定制内容也一样要保存到这里。这样如果重装就非常方便恢复这些设置了。

### Settings
其他的也有很多，但是最重要的自定制文件有两类：Key Bindings 前面已经说了，这一集来说说 Settings 。用命令面板找到 `settings` 看到也一样是有两项：Default 和 User。同样也是 Default 中的内容是不许改的，要改就在 User 中改，改完了的内容会保存到 Packages/User 文件夹下面。

存放到 User 文件夹下的内容会覆盖 Settings Default 中的内容。举个例子：

Settings Default 文件中

{% highlight json %}
"line_padding_top": 0,
"line_padding_bottom": 0,
{% endhighlight %}

现在我在 Settings User 中写上

{% highlight json %}
"line_padding_bottom": 7,
"line_padding_top": 7,
{% endhighlight %}

直接 Cmd-S 保存，不用重启，直接生效。这些内容会保存在 User/Preferences.sublime-settings 中。

### 设置内容的组织和优先级

可以做到，但是并不建议，settings 内容如果很多，可以分成很多个文件，各自命名方式和覆盖优先级。[参考](http://sublime-text-unofficial-documentation.readthedocs.org/en/latest/customization/settings.html#format)

我这里只是要提一点。就是自定制的设置直接放到 User/Preferences.sublime-settings 这个文件中，那么就是对所有打开的项目都生效了。比如如下的设置：

{% highlight json %}
"file_exclude_patterns":
[
	".DS_Store",
	"*.sublime-workspace",
	"*.scssc"
],
"folder_exclude_patterns":
[
	".git",
	"log",
	"tmp/cache",
	".vagrant"
],
"tab_size": 2,
{% endhighlight %}

但是，这些设置有时候对于不同的项目是会有区别的，sublime 是有相应的解决方法的，就是可以通过设置 [Projects](http://www.sublimetext.com/docs/3/projects.html) 来实现。基本思路就是给每个项目添加 xxx.sublime-project 文件，里面的配置会把 User/ 中的设置给覆盖了。不过这样还是稍微有些麻烦，除非特别必要，自己手动临时改改 User/ 中的这个 settings 文件就好。
