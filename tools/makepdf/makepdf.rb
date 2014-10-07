#encoding: utf-8
require 'kramdown'
require 'erb'

here = File.expand_path(File.dirname(__FILE__))
root = File.join("#{here}", '../..')

def replace(string, &block)
  string.instance_eval do
    alias :s :gsub!
    instance_eval(&block)
  end
  string
end

def post_tex(string)
  graphic_options = '[width=10cm,height=10cm,keepaspectratio]'

  replace(string) do
    # setup code blocks
    s /(\\begin\{verbatim\}.*?\\end\{verbatim\})/m, '{\footnotesize\1}'
    s /(\\begin\{verbatim\}.*?\\end\{verbatim\})/m, '\begin{shaded}\1\end{shaded}'
    s /(\\begin\{lstlisting\})\[(.*?)frame=tlbr\]/, '\1[\2frame=none]'
    s /(\\begin\{lstlisting\}.*?\\end\{lstlisting\})/m, '\begin{shaded}\1\end{shaded}'

    # setup graphic
    s /\n(\\begin\{figure\})\n/, "\n\\1[H]\n"
    s /\n(\\includegraphics)/, "\n\\1#{graphic_options}"
    s /(\\caption\{\})/, ''

    # setup quote
    s /(\\begin\{quote\}.*?\\end\{quote\})/m, '\begin{shaded}\1\end{shaded}'
  end
end

@tex = ""
@graphicspath = "#{root}/book/" 

layout = /^---\nlayout:.*\ntitle:(\p{Any}+?)\n---\n/

Dir.glob("#{root}/book/*.md").sort.each do |f|
  str = IO.read(f).lstrip
  title = layout.match(str).to_s.gsub!(layout, '\1').strip
  text = str.gsub!(layout, '')

  doc = Kramdown::Document.new(
    text,
    :input => 'GFM',
    :hard_wrap => false
  ).to_latex

  @tex += "\\chapter{#{title}}\n\n" + doc
end

tex = ERB.new(File.read("#{here}/template.tex.erb")).result()

post_tex(tex)

File.open("#{here}/lgcb.tex", "w+") do |f|
  f.write(tex)
end

2.times do
  system("xelatex #{here}/lgcb.tex")
end

# remove useless files
system("bash #{here}/clean")
