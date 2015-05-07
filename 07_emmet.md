---
layout: default
title: web 开发者必备插件 emmet
---

安装 sublime 之后，默认安装的包里面就自带很多自动补齐的功能，比如在一个 css 文件里面敲

    c<tab>
    bg<tab>

在 html 文件中可以敲

    link<tab>
    a<tab>

是可以补齐的。自动补齐这个功能后面会有视频做详细的介绍。但是默认的这些自动补齐功能在做 Web 前端开发的时候还不是很够用。所以这一集来讲一个超级实用的包，叫做 emmet，这个我会说是一个必装的包。


### 安装

就用 Package Control 就可以了。这个包的作用主要也是你在 html 或者 css 文件中敲一个触发词 Trigger，后面敲 tab 就能补齐成一个常用的代码段。都有哪些触发词可以参考这里 <http://docs.emmet.io/cheat-sheet/> 。有些内容跟默认的包提供的有些重合，不过完全不影响使用。

### 补齐操作
现在打开一个文件，把文件类型设置成 html

    !<tab>
    link:css<tab>

这个跟原有的触发词比较类似，但是原来没有的，但是用上了就放不下的是这个

    .nav<tab>
    .nav>.item<tab>
    ul>li*5<tab>

再把文件类型调成 css ，也有些很 cool 的新玩意

    p10<tab>
    m0-auto<tab>

### action 动作

Emmet 可不单单就是提供更为丰富的 tab 补齐功能。他还提供很多很 cool 的操作，在 <http://docs.emmet.io/actions/> 可以具体看到。这里我来演示几个最实用的。

还是把文件类型切换成 html 。如果我想用标签来包裹一些内容，我就先把内容选中，然后 Ctrl-w 。这个命令也可以在命令面板上呼叫
`Wrap with Abbreviation` 。一般我要是忘了快捷键了，就求助命令面板。弹出的输入框中输入

    #nav>.item

回车就可以看到效果了，语法上跟前面 tab 补齐的时候没有区别。

如果要删除一层标签，用 Cmd 加逗号。

好，emmet 就说这么多，下集聊 snippet 。

<!-- 装好 emmet 之后是不是多了很多 snippet ? 用 css 文件来看一下 -->

<!--  haoduoshipin.com/ep/111 -->

<!-- 
mi.com 

    <html lang="zh-CN">


alipay 和 360.com `lang` 这一项都是空。 

总之，这个不管了，自己手动删除了 lang="en" 就好了
-->