---
layout: default
title: 快速查找文件或字符串
---

快速找到你想要的东西，不管是字符串，还是一个文件，写代码的时候，如果你想到之后，一瞬间你的编辑器就能把它呈现在你面前，那将会非常爽。Sublime 的一大特点就是快，即使是在很大的一颗文件树下找东西也是一眨眼就完。

### 我的那个文件在哪？

Cmd-p ，这个打开的功能叫做 goto anything ，见 menu->Goto 。打开后，然后敲你想要的文件名就行了，支持模糊匹配的。同时支持下面几种操作形式，让定位更准确

    filename:lineno
    filename@css-selector
    filename@function

甚至还可以直接在新打开的文件中定位字符串。

    filename#searchtext

更多内容参考 [这里](http://sublime-text-unofficial-documentation.readthedocs.org/en/latest/file_management/file_management.html) 。

如果文件想要对照着来开发，可以执行分屏操作。另外，打开一个新的项目一般会开启另外一个窗口，两个窗口之间切换用 Cmd 跟上反引号。

### 当前文件中查找字符串
首先是在本文件中查找。敲 Cmd-f 就可以打开搜索框了。Enter 查找下一处，Shift-Enter 查找上一处。
查找替换就用 Option-Cmd-f ，这个要是快捷键忘了不怕，menu->find 下面列出了。每次搜索到结果之后，敲 esc 就可以停在那里进行编辑了。

另外一种方式，就是用 Cmd-d 。把光标停留在要找的单词上面，然后 Cmd-d 连续敲多次，就可以找出所有当前文件中的这个单词，而且是直接在多点编辑模式下，可以直接进行替换。

如果要在一个文件夹内全局查找。鼠标右击文件夹，`Find in Folder` 就可以了。打开下一个匹配项用 F4，上一处 Shift-F4，不过用鼠标直接点也挺方便。

### 回到老地方
每次搜索或者打开新的文件，都是一次 jump 。jump 到一个新的位置我就可以执行编辑操作，但是编辑完了很多时候还想调回到 jump 前我的那个老位置，这个时候就有个 jump_back 命令可以用了，默认的快捷键是 `ctrl+minus` ，也就是 ctrl 加上减号。如果点得太快，back 过头了，需要反向操作 jump_forword ，就是再加上一个 shift 。



