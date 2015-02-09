---
layout: default
title: 最常用的快捷键
---

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