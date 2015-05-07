---
layout: default
title: 自定制代码片段
---

snippet 这个英文单词的意思就是，小片段。 sublime 可以让用户创建自己的 snippet 。

### 寻找重复操作

创建什么呢？这个不是凭空想出来的，而是要定位自己日常工作中的重复性劳动。比如我在写视频笔记的时候，用的时 github 的 jekyll 这种格式，每个页面头上都要有这样几行内容

    ---
    layout: default
    title: 标题
    ---

而且输入完之后还要输入一个空行，然后再来输入正文。根据这个需求，就可以 menu->tools->new snippet 来创建下面的内容

{% highlight xml %}
<snippet>
  <content><![CDATA[
---
layout: default
title: ${1:标题}
---

${2}
]]></content>
  <tabTrigger>header</tabTrigger>
  <scope>text.html.markdown</scope>
</snippet>
{% endhighlight %}

命名为 jekyll-header.sublime-snippet ，保存到 Packages/User 之下。这样到一个 markdown 文件中，命令面板中输入 `snippet` 就可以看到这个 snippet 的信息了。

敲 snippet 的同时也看到了 php 相关的 snippet 。但是其实我是不写 php 的，那怎么样避免这些信息出现呢？

### php snippet 如何卸载

其实这个问题就是，默认就装好的包，如何来禁用。到 Settings User 中

{% highlight json %}
"ignored_packages":[
  "Vintage", // missing this will trigger vintage mode
  "PHP", // to avoid php snippets in html files
], 
{% endhighlight %}


### 作用范围 scope

最后来说说上面 snippet 中填写的 scope 是怎么得到的。

在 keybinding Default 中又这样的设置

{% highlight json %}
{ "keys": ["super+alt+p"], "command": "show_scope_name" },
{ "keys": ["ctrl+shift+p"], "command": "show_scope_name" },
{% endhighlight %}

所以可以通过上面的任意一组快捷键来读取当前文件的 scope ，爆出来的内容有可能是空格隔开的多个字符串，取第一个字符串就行了。基本上各种代码文件的 scope 都是 `source` 打头，例如
`source.js` `source.ruby` `source.python` 。其他的都是以 `text` 打头，例如 `text.html.basic` `text.html.markdown` `text.plain` 等。
那么如何给一个 snippet 定义多于一个文件类型的 scope 呢？可以这样

{% highlight xml %}
<scope>text.html.markdown, text.plain</scope>
{% endhighlight %}



