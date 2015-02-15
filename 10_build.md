---
layout: default
title: 批处理任务 build system
---


来聊创建自己的 build system。如果你发觉你总在输入重复的文字内容，那就要用前面的代码补全的功能。如果你发现有一系列操作或者是命令是要很频繁的执行的，例如一个软件写完之后要测试编译执行看报错，那就可以把这些操作写成一个 build，一键完成。

参考 [这里](http://sublime-text-unofficial-documentation.readthedocs.org/en/latest/reference/build_systems.html) 。

### chrome 打开 html 文件

名字虽然叫 build 但是执行的任务也不是非得编译软件，任何命令都可以呀，只要能自动化重复性劳动就行呗。

menu->tools->build system-> new build system 这里打开一个文件，粘贴下面内容

{% highlight json %}
{
  "cmd": ["/Applications/Google Chrome.app/Contents/MacOS/Google Chrome", "$file"],
  "selector": "text.html"
}
{% endhighlight %}

注意，根据 [这里](http://sublime-text-unofficial-documentation.readthedocs.org/en/latest/reference/build_systems/configuration.html) 的说明，selector 生效的前提是 menu->tools-> build system->Automatic 设置为 true 。

保存到 User/ 之下，名字叫 browse.sublime-build 。

### build 我的 jekyll 页面

再来个稍微复杂点的。还是说我这里的视频笔记，每次写完一些内容之后，我都要执行

   git commit -a -m"wip" && git push

把新改的内容做成一个版本然后再推送到 github 上面，这样我再到 github 上对应的页面刷新，就看到效果了。这些步骤不少，看看怎么样做成一个 build 来一键完成。

大体思路是这样，把所有的工作都写成一个 bash 脚本，然后在 build 这里直接执行。

jekyll.sublime-build 中这样写

{% highlight json %}
{
    "cmd": ["/Users/peter/bin/jekyll.sh", "$file"],
    "working_dir": "$file_path",
    "selector": "text.html.markdown"
}
{% endhighlight %}

注意 jekyll.sh 中一定要写 shebang 也就是第一行的声明，不然 sublime 中就会报格式错误，另外就是要执行

    chmod +x jekyll.sh

关于命令行使用和 shell 脚本编程，可以参考 [Linux Guide for Developers](http://www.imooc.com/view/181) 这门课程。

现在，就可以执行 jekyll.sh 了，这个里面写

{% highlight sh %}
#!/usr/bin/env bash
git commit -a -m"wip" && git push
# echo  $1
VAR=$1 # full file patch, e.g /Users/peter/rails10-va/happysublime/10_build.md
FILE=`basename $VAR` # get 10_build.md from full path
PAGE=${FILE%.*}".html" # 10_build.md -> 10_build.html

DIR=`dirname $VAR`
PROJECT=`basename $DIR` # get happysublime
# echo $PARENT
URL="happypeter.github.io/"$PROJECT"/"$PAGE
'/Applications/Google Chrome.app/Contents/MacOS/Google Chrome' $URL
{% endhighlight %}

这样每次我修改完视频笔记就可以直接敲 Cmd-b 推送到 github 上，并且在 chrome 中打开看到效果了。不过美中不足的时并不是直接推送到 github 上的内容，
jekyll 网站页面上就会立即生效，所以一般要等几秒再刷新一下才能看到效果。


<!-- https://code.tutsplus.com/courses/perfect-workflow-in-sublime-text-2/lessons/custom-builds -->