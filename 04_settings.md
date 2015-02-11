·---
layout: default
title: 配置都放在一个文件夹
---

sublime 有一个很简单的特点，就是所有用户自定制的内容都会放在一个文件夹中。不同的操作系统肯定是不同的，google 一下就知道了，不过 Mac 系统下是

    ~/Library/Application Support/Sublime Text 3/Packages/User

写到这里的数据是不会被自动升级而被覆盖的。可以到 menu->Sublime Text->Preferences->Browse Packages 中找到这个文件夹。

### 配置内容到底有哪些

可以参考我的 [sublime-config](https://github.com/happypeter/sublime-config) 仓库。

除了这些，如果安装扩展包，包也一样有自己的 Default 设置，肯定不会放在这里。包的用户自定制内容也一样会保存到这里。

### Settings

Key Bindings 前面已经说了，这一集来说说 Settings 。用命令面板找到 `settings` 看到也一样是有两项：Default 和 User。同样也是 Default 中的内容是不许改的，要改就在 User 中改，改完了的内容会保存到 Packages/User 文件夹下面。

存放到 User 文件夹下的内容会覆盖 Default 中的内容。所有的东西都是纯文本的，这个是 Unix 的哲学了，保持纯文本，保持简单透明。


### 设置内容的组织和优先级

可以做到，但是并不建议的时，settings 内容如果很多，可以分成很多个文件，各自命名方式和覆盖优先级。[参考](http://sublime-text-unofficial-documentation.readthedocs.org/en/latest/customization/settings.html#format)

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

这些设置很可以对于不同的项目是会有区别的，sublime 是有相应的解决方法的，就是可以通过设置 [Projects](http://www.sublimetext.com/docs/3/projects.html) 来实现。
