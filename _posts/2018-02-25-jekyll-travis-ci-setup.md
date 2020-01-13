---
layout: post
title: Jekyll Travis CI Setup
date:   2018-02-25 18:04:00 -0800
---

Jekyll is a static site generator so only HTML, CSS, and JavaScript are loaded. Why bother with continuous integration, like Travis, at all? For the experience.

What sounds like a simple task took longer than expected. Here is what I did.  

1) Connected Github account to Travis CI (already done since I've used Travis before).  
2) Created a `.travis.yml`, which is what Travis uses for configuration. It's fairly straightforward.  

{% gist a2e0a2b4b9063139de3e3b43dd01dcaa .travis.yml %}  

3) Added new variables to my `_config.yml`  
```
username: seannam
repo: seannam.github.io
branch: master
destination: _site/
safe: false
```

Full file:
{% gist 2faa268b21fb7593980daa7881959a60 _config.yml %}  
4) Created a script file that will run `htmlproofer`, a Ruby Gem I'm using to test my site. It checks links and images.  
{% gist 2a7536032393af4960da59df44513be9 cibuild %}  
5) Added `gem 'html-proofer'` to my `Gemfile`.   
{% gist 2cda06384d19e3c6c341874f1970fd52 Gemfile %}  
6) Commit and push. Travis runs automatically.  