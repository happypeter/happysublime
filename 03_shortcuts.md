---
layout: default
title: 最常用的快捷键
---

这次来介绍常用的快捷键，一些规律性的记忆技巧，和如何管理自己的快捷键绑定。

### 随用随学

网上搜一下 “sublime 常用快捷键” 可以找到一些总结的很好的文档，这个就是随用随学。我这里 show 一下最常用的一些，先让你找找感觉。

	  - Cmd-n 开一个新页面
	  - Ctrl-tab 切换页面
	  - Cmd-j 合并一行
	  - Cmd-d 选中当前单词，继续敲可以选中多个
	  - Cmd-/ 注释掉/取消注释
	  - Ctrl-]/[ 缩进
	  - Ctrl-L 选择当前行
	  - Ctrl-enter/Shift-Ctrl-enter 当前行之前或之后开辟一行
	  - Ctrl+Z 撤销
	  - 列选择，按住 Option 键，用鼠标左键拖动。

### 操作粒度

同一行之上，直接用左右箭头，每次移动一个字符，Alt 加上箭头，每次就可以移动一个单词，如果配合上 Cmd 就一下到头了。
这个道理在选择的时候也管用，差别就是在加上 Shift 键，例如向左选择一个单词就是 Shift-Alt-Left 。

同样的道理再试试上下箭头？怎么样，还是有规律的吧。

### 绑定自己的快捷键

命令面板中敲 Key Binding，会给出两项，一个是 Default 这个前面说过了，是系统默认的快捷键设置文件，这个文件是不允许改的。
如果想重新绑定快捷键，那就在 User 这一项，打开后是一个空文件。可以从 Default 中拷贝内容过来，然后自己再改。

{% highlight json %}
[
  { "keys": ["shift+tab"], "command": "reindent" , "args": { "single_line": false } },
]
{% endhighlight %}

有一个问题，你怎么知道一个操作的精确的命令名是什么呢？用 Ctrl加 tab 键上面这个“反引号”，这样可以打开控制台，输入

    sublime.log_commands(True)

这样再次执行操作就可以看到操作的精确命令名字了。