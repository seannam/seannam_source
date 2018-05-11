---
layout: post
title: Creating Command Line Aliases
date:   2018-05-10 21:24:00 -0800
---

I learned about this last fall. I was working on a web application with a team for a software engineering class and was tired of opening up terminal and changing to the same directories so often. 

This is when I discovered *command line aliases*, more specifically, *bash shell aliases*. These are one word shortcuts to regular terminal commands.

To create new a new alias, open your `./bash_profile` or `./bashrc` file and use the following syntax: 
```
alias name=value 
alias name='command' 
```

examples:
```#!/bin/bash
	alias gith='cd ~/GitWorkspace/'
	alias jflap='java -jar ~/Documents/JFLAP.jar'
```

Then use `source ~/.bash_profile` to execute the changes.

This [page](https://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html) has more syntax examples, like how to add a command with arguments, as well as 30 handy aliases.