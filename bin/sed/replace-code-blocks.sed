# find . -type f -exec sed -i -f ~/dotfiles/scripts/sed/replace-code-blocks.sed {} \;
s/{% endhighlight %}/{{< \/ highlight >}}/
s/{% highlight/{{< highlight/
s/%}/>}}/

