---
layout: default
title: 自定制代码片段
---

snippet 这个英文单词的意思就是，小片段。

在一个文件类型为 js 的文件中，用命令面板找到 `snippet...` 可以看到适合当前文件类型的 snippet 。
但是如果文件类型换了 ruby，那显示出的 snippet 也就不一样了。

### 寻找重复操作

比如我在写视频笔记的时候，用的时 github 的 jekyll 这种格式，每个页面头上都要有这样几行内容

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
  <tabTrigger>layout</tabTrigger>
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

sni 

如果每个 snippet 都很小，但是数量挺多，那还是比较适合写成  xxx.sublime-completions 文件。
<!-- xxx.sublime-completions 的文件干净利落，格式清楚。看来只有当代码片段很大的时候用 xxx.sublime-snippet 文件才有意义，因为在 sublime-completions 文件中内容只能在一行写。 -->


### 作用范围 scope

    { "keys": ["super+alt+p"], "command": "show_scope_name" },
    { "keys": ["ctrl+shift+p"], "command": "show_scope_name" },

