---
layout: default
title: 自定制代码片段
---

在一个文件类型为 js 的文件中，用命令面板找到 `snippet...` 可以看到适合当前文件类型的 snippet 。
但是如果文件类型换了 ruby，那显示出的 snippet 也就不一样了。

snippet

    { "keys": ["super+alt+p"], "command": "show_scope_name" },
    { "keys": ["ctrl+shift+p"], "command": "show_scope_name" },

<!--  happycasts.net/ep/111 -->

php snippet 如何卸载？

  "ignored_packages":[
    "Vintage", // missing this will trigger vintage mode
    "PHP", // to avoid php snippets in html files
  ], 

如果每个 snippet 都很小，但是数量挺多，那还是比较适合写成  xxx.sublime-completions 文件。
<!-- xxx.sublime-completions 的文件干净利落，格式清楚。看来只有当代码片段很大的时候用 xxx.sublime-snippet 文件才有意义，因为在 sublime-completions 文件中内容只能在一行写。 -->

<!-- snippet 有个好处就是直接可以在命令面板中看到
而 sublime-completions 中定义的 trigger 应该是看不到的，看到了也会太多太乱
 -->


