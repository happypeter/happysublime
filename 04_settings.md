---
layout: default
title: 配置都放在一个目录下
---

sublime 有一个很简单的特点，就是所有用户自定制的内容都会放在一个目录中。不同的操作系统肯定是不同的，google 一下就知道了，不过 Mac 系统下是

    ~/Library/Application Support/Sublime Text 3/Packages/User

写到这里的数据是不会被自动升级而被覆盖的。可以到 menu->Sublime Text->Preferences->Browse Packages 中找到这个目录。

### 到底有哪些内容

可以参考我的 [sublime-config](https://github.com/happypeter/sublime-config) 仓库。

除了这些，如果安装扩展包，包也一样有自己的 Default 设置，肯定不会放在这里。包的用户自定制内容也一样会保存到这里。

### Settings

Key Bindings 前面已经说了，这一集来说说 Settings 。用命令面板找到 `settings` 看到也一样是有两项：Default 和 User。同样也是 Default 中的内容是不许改的，要改就在 User 中改，改完了的内容会保存到 Packages/User 目录下面。

存放到 User 目录下的内容会覆盖 Default 中的内容。
	  - settings 如果很多，可以分成很多个文件，各自命名方式和覆盖优先级参考：http://sublime-text-unofficial-documentation.readthedocs.org/en/latest/customization/settings.html#format
	  - 讲到 tab_size 和 ignore pattern 的时候提一下，settings 也可以针对特定文件类型和特定项目来具体设置，只不过比较麻烦，我不做