---
title: My Terminal Setup
subtitle: 

# Summary for listings and search engines
summary: I want to spend a few words to talk about my terminal as this it is one of my most important development tools.

# Link this post with a project
projects: []

# Date published
date: "2021-08-10T00:00:00Z"

# Date updated
lastmod: "2021-08-10T00:00:00Zd"

# Is this an unpublished draft?
draft: false

# Show this page in the Featured widget?
featured: false

# Featured image
# Place an image named `featured.jpg/png` in this page's folder and customize its options here.
image:
  caption: ''
  focal_point: ""
  placement: 3
  preview_only: false

authors:
- admin

tags:
- Programming
- Terminal
- ZSH

categories:
- Programming
- System
---

## Overview

Within this post I want to talk about my terminal tooling. 
Maybe it is of interest to some of you. Also, maybe someone has some suggestions or cool ideas to improve my setup.
To me, the terminal is one of my most important development tools. 
Usually I only use PyCharm, Jupyter Notebooks and the Terminal to do my practical work.
Among others, I use it to configure the system, set up my programming environments, start programs and to handle and view data.

You can find my setup on this Github Repo: [https://github.com/AndSt/zsh-config](https://github.com/AndSt/zsh-config). With this setup I'm able to set up new systems rather quickly. I want to make it compatible with Linux and Mac. Right now I have two scripts, one for each system, installing programs such as VLC, Google Chrome and performing update commands such as apt upgrade. Afterwards I use VCSH combine with myrepos to set up my system. I used [this](https://pikedom.com/managing-dot-files-with-vcsh-and-myrepo/) guide to distribute the setup in the repo mentioned above to new systems. 
While this works rather quickly, I'm still not fully happy with it. Hit me up if you have a better solution to set up new systems.
I like to keep my home directory tidy, so I use the [XDG Base Directory specification](https://wiki.archlinux.org/title/XDG_Base_Directory) to structure my home directory. In the Resources chapter, you will find a link to a video showing how to do some directory cleaning.

## ZSH 

Most importantly, I use ZSH. Using it provided me with a huge productivity boost. These are the plugins which I would recomend: 

- git: Some git info, such as the branch
- zsh-autosuggestions: Suggests previous commands in light gray
- virtualenvwrapper: Automatically enter python environments
- autojump: Learning system to jump to different parts of the system
- dotenv: If a .env file is present in a directory, it is automatically sourced
- zsh-syntax-highlighting: Beautifies terminal output

Out there are really a lot of plugins. Check them out and pick together your favourite ones! Find them under [here](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins).


## Python Setup

Since about 2.5 years Python is main programming language. On this note, I want to mention that I'm really happy about that fact and enjoy working with it. Previously I was working with less "scripty" languages such as Java which didn't satisfy me as much. 
So spread the word, Python is awesome.
Logically, a big part of my setup is built for programming with Python.

I use a dedicated Python environment for each project. This helps me to reproduce to other systems and to speeden up development.
I use virtualenv in combination with [virtualenvwrapper](https://virtualenvwrapper.readthedocs.io/en/latest/) to work on different projects. I favour it over other Python environment systems such as Anaconda as it is low level and easier compatible with pip. Surely there are other good choices, but so far it has met all my needs and there is no need to change.

Additionally I built some scripts to work with environments. For instance I built a command called "cvenv" which creates a new environment and installs some libraries I need in all my projects. Find the shell script [here](https://github.com/AndSt/zsh-config/blob/master/.config/zsh/scripts/create_virtualenv.sh)

Additionally I installed the [virtualenvwrapper](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/virtualenvwrapper) ZSH plugin. If a project repository is named like an existing environment, the plugin automically enters it when you enter the folder.


## Future Plans

Currently, I aim to optimize two things. But I'm still in the "What do I want to do and how?" phase.
<br>
<br>
<b>Setup time:</b> At the moment it still takes me one to two hours to set up my system. It's definitely not perfect. My goal would be a a script which identifies the operating systems on it's own and installs my standard setup.
I know that there's solutions such as Ansible. While I've not read a lot yet it feels like overengineering to use such sophisticated tool. <br />
<b>Phone integration:</b> Currently I use Mac also for private usage. While there's already a plethora of Desktop apps such as WhatsApp, Signal, Spotify etc. I wanna have some cool command line tools. For instance I would be able to move files from / to my phone using the terminal.

## Resources

In the end I wanna recommend some resources which helped me set up my system.

- I really enjoy the videos of Luke Smith. For example, in this [video](https://www.youtube.com/watch?v=yy8RoDSdhIQ&ab_channel=LukeSmith) he shares how he keeps his home directory clean using the XDG Base Directory Specification.
- [Awesome Dotfiles:](https://github.com/unixorn/awesome-dotfiles) Another awesome library. If you're interested to know more about Dotfiles, this should be a good entry point to find interesting resources.