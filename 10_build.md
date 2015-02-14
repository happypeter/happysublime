---
layout: default
title: 批处理任务 build
---

  

    {
      "cmd": ["/Applications/Google Chrome.app/Contents/MacOS/Google Chrome", "$file"],
      "selector": "text.html"
    }

<!-- 给我的 jekyll 文件来一个 build，可以直接 push 到 github 并且，刷新页面的 -->

build 从这个名字就可以看出来，很多时候可以定义来执行编译任务。

### 可以在 build 这里直接执行一个 sh script

git.sublime-build 中这样写

{
    "cmd": ["/Users/peter/bin/git.sh"],
    "shell": "bash",
    "working_dir": "$file_path"
}

就可以执行 git.sh 了，这个里面可以写

    git commit -a -m"i" && git push
<!-- https://code.tutsplus.com/courses/perfect-workflow-in-sublime-text-2/lessons/custom-builds -->