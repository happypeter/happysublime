---
layout: default
title: 批处理任务 build
---

build 从这个名字就可以看出来，很多时候可以定义来执行编译任务。

参考 [这里](http://sublime-text-unofficial-documentation.readthedocs.org/en/latest/reference/build_systems.html) 。

### chrome 打开 html 文件

{% highlight json %}
{
  "cmd": ["/Applications/Google Chrome.app/Contents/MacOS/Google Chrome", "$file"],
  "selector": "text.html"
}
{% endhighlight %}


<!-- 给我的 jekyll 文件来一个 build，可以直接 push 到 github 并且，刷新页面的 -->


### build 我的 jekyll 页面

可以在 build 这里直接执行一个 sh script

git.sublime-build 中这样写

{% highlight json %}
{
    "cmd": ["/Users/peter/bin/git.sh", "$file"],
    "working_dir": "$file_path"
}
{% endhighlight %}

<!-- 注意 git.sh 中一定要写 shebang -->
就可以执行 git.sh 了，这个里面可以写

{% highlight sh %}
#!/usr/bin/env bash
git commit -a -m"i" && git push
# echo  $1
VAR=$1 # full file patch, e.g /Users/peter/rails10-va/happysublime/10_build.md
FILE=`basename $VAR` # get 10_build.md from full path
PAGE=${FILE%.*}".html" # 10_build.md -> 10_build.html

DIR=`dirname $VAR`
PROJECT=`basename $DIR` # get happysublime
echo $PARENT
URL="happypeter.github.io/"$PROJECT"/"$PAGE
'/Applications/Google Chrome.app/Contents/MacOS/Google Chrome' $URL
{% endhighlight %}


<!-- https://code.tutsplus.com/courses/perfect-workflow-in-sublime-text-2/lessons/custom-builds -->