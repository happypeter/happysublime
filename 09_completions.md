---
layout: default
title: 补全 
---

前面两集 emmet 和 snippet 其实都是属于“补全”这个功能。 英文是 Completion 。总的参考文档 [在这里](http://docs.sublimetext.info/en/latest/extensibility/completions.html) 。

### Tab 补全

自动补全当前文件中已经敲过的单词。直接敲 tab 就可以了，默认就是支持的。

`Settings Defualt` 下有这些内容

    "tab_completion": true,


意思是打开一个文件，敲一个触发词，然后敲 tab 是能补全成一个我想要的文字片段的。这个没有什么陌生的，前面 snippets 一集，就属于这种情况。只不过不是唯一的一种情况。


根据 [这里](http://docs.sublimetext.info/en/latest/extensibility/completions.html#sources-for-completions-and-their-priorities) 的说明，tab 补齐功能依次会在下面四个地方去找触发词，英文术语叫 Trigger 。


	1. Snippets
	2. 通过 API on_query_completions() 设置的内容，这个咱们暂时不管
	3. 专门的自动补齐文件，也就是 xxx.sublime-completions
    4. 当前文件中已经敲过的词

第一项已经详细聊过了，第二项内容比较深入了，本课程中就不涉及了。来说说第三项的自动补齐文件。自带的就不说了，主要说说怎么来自己添加触发词。参考：[Completion Files](http://docs.sublimetext.info/en/latest/reference/completions.html) 
<!-- 功能上跟 snippet 比较重合，貌似就是在格式让比较简单，可以在一个文件内写多项，但是弱点是不方便写多行的片段。 -->

最后一个查找范围就是当前文件中已经输入过的单词了，这个也是我觉得离不了的，一个单词输入过一遍了，为啥还要再输入一遍呢。 

### 自动补全

参考 [这里](https://www.sublimetext.com/docs/3/auto_complete.html) 。

“自动补全”并不说又有了一种新的补齐方式。而只是说输入了触发词，那么不用敲 tab ，就可以显示可能的触发词了，默认只要敲 Enter 就可以补全了。

这个功能也是在 Settings - Default 中默认就设置好的：

{% highlight json %}
"auto_complete": true,
{% endhighlight %}

但是，自动补全的不是在每种文件类型中都会被触发的，Settings Default 中是这样设置的

{% highlight json %}
// Controls what scopes auto complete will be triggered in
"auto_complete_selector": "source - comment, meta.tag - punctuation.definition.tag.begin",

// Additional situations to trigger auto complete
"auto_complete_triggers": [ {"selector": "text.html", "characters": "<"} ],
{% endhighlight %}

scope 的详细说明在 [这里](http://docs.sublimetext.info/en/latest/extensibility/syntaxdefs.html#scopes) 。


首先第一个问题是这时候，自动补齐生效的时候，回车就不能用来换行了，怎么解决？

Settings Default 下面有
  
{% highlight json %}
"auto_complete_commit_on_tab": false,
{% endhighlight %}

在 Setting User 中

{% highlight json %}
"auto_complete_commit_on_tab": true,
{% endhighlight %}

这样就可以敲 tab 来补全，而 Enter 现在就可以用来输入换行了。


第二个问题，在不支持自动补齐的文件类型的文件中，如何才能看到备选项呢？

Keybinding Default 中有相关设置：

{% highlight json %}
{ "keys": ["ctrl+space"], "command": "auto_complete" },
{% endhighlight %}

意思是只要敲 ctrl+space 快捷键，就可以看到跟自动补齐一样的效果了。但是我这里 ctrl+space 用来切换中文输入法了，所以要在 Keybinding User 中改一下

{% highlight json %}
{ "keys": ["alt+space"], "command": "auto_complete" },
{% endhighlight %}

这样就可以了。

最后，如果觉得还是补齐的不够丰富，可以看看 <http://sublimecodeintel.github.io/SublimeCodeIntel/> 。
