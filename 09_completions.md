---
layout: default
title: 补齐
---

前面两集 emmet 和 snippet 其实都是属于“补齐”这个功能。

### Tab Completion

自动补齐当前文件中已经敲过的单词。直接敲 tab 就可以了，默认就是支持的。

`Settings Defualt` 下有这些内容


    // When enabled, pressing tab will insert the best matching completion.
    // When disabled, tab will only trigger snippets or insert a tab.
    // Shift+tab can be used to insert an explicit tab when tab_completion is
    // enabled.
    "tab_completion": true,



<!-- http://www.granneman.com/webdev/editors/sublime-text/top-features-of-sublime-text/auto-completion-in-sublime-text/ 

Tag 这个包的功能都是和 emmet 重复的	
-->


首先在文件中输入下面的内容：

     meet
     more

然后

     m<tab>


连续敲 tab 可以补齐各个不同的备选项。


	{ "keys": ["alt+ctrl+space"], "command": "replace_completion_with_auto_complete", "context":
		[
			{ "key": "last_command", "operator": "equal", "operand": "insert_best_completion" },
			{ "key": "auto_complete_visible", "operator": "equal", "operand": false },
			{ "key": "setting.tab_completion", "operator": "equal", "operand": true }
		]
	},


[Completion Files](http://docs.sublimetext.info/en/latest/reference/completions.html) 功能上跟 snippet 比较重合，貌似就是在格式让比较简单，可以在一个文件内写多项，但是弱点是不方便写多行的片段。
<!-- \n \t 包括引号都要转义 http://stackoverflow.com/questions/27107992/condense-all-my-snippets-into-one-file-in-sublime-text-3 -->


输入一个缩写，然后敲 tab 这样触发的应该都是 ”TAB 补齐“ 功能，包括 snippet 也包括 emmet 。

tab 补齐内容来源以及各自优先级，参考 [这里](http://docs.sublimetext.info/en/latest/extensibility/completions.html#sources-for-completions-and-their-priorities)		

###  Auto Completion

“自动补齐”的意思就是只要输入了触发词，那么不用敲 tab ，就可以显示可能的触发词了。

默认只要敲 Enter 就可以自动补齐了。但是问题是这时候，回车就不能用来换行了，

Settings Default 下面有
  
    "auto_complete_commit_on_tab": false,

在 Setting User 中

        "auto_complete_commit_on_tab": false,


这样就可以用 Enter 来换行，敲 tab 来补齐了。

打开一个 ruby 文件，敲 `d` 就可以自动补齐出所有的 snippet 的缩写。
<!-- 这个是非常方便的，
在 markdown 文件中，大概因为文件类型不是 source ，所以 auto completions 根本不工作
markdown 中如果敲 `h` 然后 `Alt-Control-Space` 还是可以出来 sublime-completions 中的 trigger 的。
 -->
  - http://docs.sublimetext.info/en/latest/extensibility/completions.html?highlight=complet

自动补齐的不是在每种文件类型中都会被触发的，Settings Default 中是这样设置的

   // Controls what scopes auto complete will be triggered in
    "auto_complete_selector": "source - comment, meta.tag - punctuation.definition.tag.begin",

    // Additional situations to trigger auto complete
    "auto_complete_triggers": [ {"selector": "text.html", "characters": "<"} ],

scope 的详细说明在 [这里](http://docs.sublimetext.info/en/latest/extensibility/syntaxdefs.html#scopes)

参考 <https://www.sublimetext.com/docs/3/auto_complete.html>


 http://sublimecodeintel.github.io/SublimeCodeIntel/
