---
layout: post
title: Setting Up a New Mac
date:   2018-05-12 12:45:00 -0800
---

My Macbook Air was acting up and I decided I had enough and proceeded to do a fresh install. This will be a step-by-step walkthrough on how I set up a new Mac. I plan to write up a nicer version to store on Github. Don't forget most of these will be a matter of **personal preference**.

1. Install updates. Best to do this first as there may be critical security patches waiting to be installed. And the fact that the notification number on the AppStore icon will bother me for eternity.
2. Hide the dock. Because I need the screen real estate!
3. Change scroll direction. `System Preferences -> Trackpad -> uncheck Scroll direction: Natural`. Because it's *not* natural at all, especially if you've been using Macs (or even PCs) for a decade.
4. Organize the dock. Let's get rid of the following apps that I don't use:
	- Siri
	- Contacts
	- iTunes (it'll open on it's own if I really need it!)
	- Maps (does anyone actually use this?)
	- iBooks  
I'll come back to this later once I have all my apps installed.    
5. Right click on the Dock and click on `Dock Preferences`. I turn the size down just a bit and turn on magnification to be slightly larger. It helps distinguish which app my mouse cursor is over.
6. Install Xcode from the Mac AppStore and then download the Xcode Command Line Tools. I develop web and iOS applications so this is essential. I like to let it download in the background while I set up  everything else.
7.  Turn off notifications by scheduling 24/7 Do Not Disturb mode. I don't need more distractions. `System Preferences -> Do Not Disturb`, I set mine from 3:00AM to 2:59AM.
8.  Also turn off notifications in apps that I don't use or want notifications from - Photos, Safri, Games. Set Calendar to only show notifications on the lock screen and turn off Badge app icon for FaceTime.
9.  I don't use the sidebar so I'm going to remove the default apps.
10. I use `cmd+shift+f` for searching Spotlight, so I will set that now.  
`System Preferences -> Keyboard -> Shortcuts -> Spotlight`.
11. I just found out System Preferences are supposed to sync via iCloud so let's get that set up.  
I hate the simplified *Finder*. Let's start fixing that.
12. `Finder -> View -> Show Path Bar` and `Finder -> View -> Show Status Bar`  
13. Next, get rid of the useless *All My Files*.
14. Now let's find the hard drive. Luckily I have another Mac on my network so I can open `Show in Enclosing Folder` to get to the folder. Otherwise, I'd probably have to use Finder's "Go To" menu option.  
My sidebar now looks like this:  
	- Macintosh HD
	- AirDrop
	- Desktop
	- Applications
	- Documents
	- Downloads
	- iCloud Drive  
15. Next add the `Library` folder from `Macintosh HD` to the sidebar, under Applications.
16. Open up `Macintosh HD -> Users` and add my user's home directory to the sidebar, between *Desktop* and *Applications*. Quick note. I don't think iCloud properly synced my System Preferences, at least not yet. I'll have to set up the keyboard shortcuts and what not later.
17. Meanwhile, let's download Google Chrome.
18. Actually let's set up Hot Corners first. 
*Note*: 227.8GB free right now. Xcode 9.2 is roughly 5.1GB and I had to download from the Apple Developer's website since the newest version on the MacAppStore (9.3.1) isn't supported on Sierra. Still too scared to update to High Sierra though.
19. I normally use HyperDock for windows management but since I already bought it, I'm going to try and use *Magnet* exclusively. I don't like how it's a menu bar item though. One feature it seems to be missing is scrolling at the top to toggle between the current and last window sizes, and filling the screen (essentially becoming fullscreen without using that dreaded green icon in the corner).
20. I'm emptying the trash a lot since I'm trying to keep things nice and organized clicking yes to that warning is getting annoying. Let's disable it in the Finder's advanced settings.
21. Let's start downloading all the apps I use. I will download the essentials first and reconsider others later.
	- Backblaze - for cloud backup
	- Bartender - because I like a nice and clean menu bar
	- DaisyDisk - because it's 2018 and I still only have 256 GB, granted it's a SSD but still
	- Dropbox - see ^
	- Focus - because it's hard to focus sometimes with so many distractions
	- itsy calendar - replacing the default date & time in the menu bar with something more useful
	- Jumpcut - last update was almost a decade ago (2009) but it still works
	- licecap - for recording gifs, great for demoing projects
	- Pixelmator - basic image editing
	- RescueTime - because the Internet is an endless pit and I want to be aware of where my time is going
	- Sketch - vector-based program similar to Adobe Illustrator, great wireframing
	- Slack - because everyone is obsessed with it
	- Soulver - it's a calculator + notepad and it's awesome!
	- Sublime Text - my preferred text editor
	- Synergy - 2 macs, 1 mouse + keyboard.
	- VLC - for all my media playback. so versatile!  
22. Set up Dropbox and Backblaze. I am paying for Dropbox Professional exclusively for the Smart Sync feature (I was previous paying for 1TB of storage). Dropbox will take a few days and a lot of CPU but at least now I can go on to the next step.
23. Set up Hot Corners:  
	- Top left: Application Windows
	- Top right: Desktop
	- Bottom left: Dashboard
	- Bottom right: Mission Control
24. Set up keyboard shortcuts  
	- Google Chrome - Task Manger: `⌘ + esc`
	- Preview - Adjust Size...: `⌥⌘I`
	- Notepad - Font...: `⌘T`  
25. Install two more apps
	- OneNote - since Evernote got greedy and started charging PER device, not to mention it's a resource hog.
	- Evernote - despite the above, I still have at least 5 years worth of notes in here. 
26. Set up Chrome. Because I use Gmail and all the other Google services it now comes with, I just have to sign in and wait for everything to sync. Yes, that means the mess that is my Chrome set up (bookmarks & extensions) is coming to my fresh Mac install. Sad but true (and also necessary).
27. Set up Terminal. I use the default app because it *works*. I just like to change the background color to something more Matrix/Hollywood like - aka the *homebrew* theme.
### Now for the fun part - setting up the dev environment! 
But first, I'm going to make a DMG backup of this setup so I don't have to do it again in the near future. Of course, in a couple years it'll all be irrelevant as macOS will probably have changed significantly by then, along with my workflow and the apps I use. But worst case scenario, it's a good starting point.

28. Create a custom Sublime Text command to use in Terminal
`ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/`  
Official instructions [here](http://www.sublimetext.com/docs/3/osx_command_line.html)

29. Customize Sublime Text. I have my settings back up to Github using git version control, so it's simple as setting up the repo locally.
30. Install *Homebrew* - a package installer for macOS. Must have for developers. *Macports* is a pouplar alternative.
31. Set up Python*:  
	- Add `export PATH=/usr/local/bin:/usr/local/sbin:$PATH` to your bash profile.  
	- Then install Python 3 using Homebrew, `brew install python`  
	- http://docs.python-guide.org/en/latest/starting/install3/osx/  
32. Update Ruby. Until I need multiple Ruby versions, I will just use Homebrew to install the latest one. Then, following the instructions here, I can update my bash profile to point to the new directory: https://stackoverflow.com/questions/38194032/how-to-update-ruby-version-2-0-0-to-the-latest-version-in-mac-osx-yosemite
33. Install node.js using Homebrew or the provided installer on the website. Note that Homebrew installed the *Latest Version* by default while the installer provides both *LTS* and *Latest Version* options.
34. Install the JDK from the website. As of this writing, it's version 1.8.x for Java 8.
35. I think that's it! At the end I ran the following to double check the version numbers:
```
python --version
ruby --version
java -version
```

I got the following values:
```
Python 3.6.3
ruby 2.5.1p57 (2018-03-29 revision 63029) [x86_64-darwin16]
java version "1.8.0_151"
Java(TM) SE Runtime Environment (build 1.8.0_151-b12)
Java HotSpot(TM) 64-Bit Server VM (build 25.151-b12, mixed mode)
```

###  Mission accomplished!

I went back and set up a few more things like keyboard input, [Bartender](https://www.macbartender.com/), installing and setting up a few other apps, and other small things that came up. Now just waiting for Dropbox and OneDrive to sync!

*Originally I followed the steps below but since I used `virtualenv` before, I will stick to it for now. Note there is a pyenv wrapper for `virtualenv` but I found it unnecessary as I don't actually use `pyenv`.  
- install `pyenv` using Homebrew: `brew install pyenv`  
- use `pyenv install --list` to see which versions are available for install
- install the latest version of Python 3
- set Python 3 to be the default global version ([helpful blogpost](http://sourabhbajaj.com/mac-setup/Python/README.html))
- install pyenv-virtualenv using Homebrew: `brew install pyenv-virtualenv `  
- [Helpful blog post part 1](https://medium.com/@jordanthomasg/python-development-on-macos-with-pyenv-2509c694a808)
- [Helpful blog post part 2](https://medium.com/@jordanthomasg/python-development-on-macos-with-pyenv-virtualenv-ec583b92934c)
