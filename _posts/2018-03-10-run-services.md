---
layout: post
title: How to Run Services
date:   2018-03-10 01:32:00 -0800
---

I use a lot of different technologies including django, node, and Jekyll. Here's a list of how to start these services on a Mac.

django
```
python manage.py runserver
```

python
```
python
# wait for the >>> 
Python 2.7.13 |Anaconda custom (64-bit)| (default, Sep 21 2017, 17:38:20) 
[GCC 4.2.1 Compatible Clang 4.0.1 (tags/RELEASE_401/final)] on darwin
Type "help", "copyright", "credits" or "license" for more information.
>>> 
```

python environment manager
- conda
```
source activate project # where 'project' is the virtualenv name
```
- virtualvenv
```
source activate project/bin/activate # where 'project' is the virtualenv name
```

node
```
node index.js \\ index.js is the main file
```

jekyll
```
bundle exec jekyll serve
```

rails
```
rails server
```