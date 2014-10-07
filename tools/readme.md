1. 安装 kramdown

    gem install kramdown

2. 安装 latex，具体可以参考 http://happycasts.net/episodes/19

    sudo apt-get install texlive
    sudo apt-get install texlive-latex-extra

3. 中文字体

    fc-list :lang=zh|grep CN
    sudo apt-get install ttf-arphic-uming

4. 一些准备条件


* 文件命名规则：

```
00_course_intro.md
01_book_thanks.md
02_hello_cli.md
...
```

* 文件内容格式使用 jekyll 支持的 GFM：

* 文章每一节的标题从一级标题开始


以上工作完成之后，就可以运行 `tools/makepdf` 目录下的 `makepdf.rb` 文件生成 pdf 了，

```
ruby makepdf.rb
```
这里的 `lgcb.tex.erb` 文件是一个 latex 格式的模板文件，修改该文件可以控制 PDF 文件的样式
