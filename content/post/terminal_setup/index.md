---
title: My Terminal Setup
subtitle: 

# Summary for listings and search engines
summary: I want to spend a few words to talk about my terminal as this is my most essential development tool besides PyCharm.

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
---

## Overview

Within this post I want to talk about my terminal tooling. 
For me, the terminal is of my most important tools, probably the most important tool.
I use it to set up my programming environments, configure everything, start programs and handle and view data.

You can find my setup on this Github Repo: [https://github.com/AndSt/zsh-config](https://github.com/AndSt/zsh-config). I also use this directory to work on remote machine. In that way I can quickly setup new systems. As I want to make it compatible with Linux and Mac I'm still not fully happy. Recommendations are welcome! Right now I have two scripts, one for each system, installing programs such as VLC, Google Chrome and performing update commands such as apt upgrade. Afterwards I use VCSH combine with myrepos to set up my system. I used [this](https://pikedom.com/managing-dot-files-with-vcsh-and-myrepo/) guide to distribute the setup in the repo mentioned above to new systems.

Most importantly I use ZSH. Using it provided me with a huge productivity boost.
I like to keep my home directory tidy, so I use the [XDG Base Directory specification](https://wiki.archlinux.org/title/XDG_Base_Directory) to structure my home directory.

## Python Setup

Since about 2.5 years Python is main programming language. On this note, I should note that I'm really happy and enjoy it to work with this language. 
Logically a big part of my setup is built for programming with Python

I use virtualenv in combination with [virtualenvwrapper](https://virtualenvwrapper.readthedocs.io/en/latest/) to work on different projects. I favour it over other Python environment systems such as Anaconda as it is low level and easier compatible with pip. Surely there are other good choices, but so far it has met all my needs and there is no need to change.

Additionally I built some scripts to work with environments. For instance I built a command called "cvenv" which creates a new environment and installs some libraries I need in all my projects.

I installed the [virtualenvwrapper](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/virtualenvwrapper) ZSH plugin. If a project repository is named like an existing environment, the plugin automically enters it.


## Plugins

After googling and adding and removing some, I ended up using these plugins:

- git: Some git visualizations
- zsh-autosuggestions: Suggests previous commands in light gray
- virtualenvwrapper: Automatically enter python environments
- autojump: Learning system to jump to different parts of the system
- dotenv: If a .env file is present in a directory, it is automatically sourced
- zsh-syntax-highlighting: Beautifies terminal output

Out there's really a lot of plugins. Check them out and pick together your favourite ones! Find them under [here](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins).

## Future Plans

There's multiple ideas I have.<br>
<b>Setup time:</b> At the moment it still takes me one to two hours to set up my system. It's definitely not perfect. My goal would be a a script which identifies the operating systems on it's own and installs my standard setup.
I know that there's solutions such as Ansible. While I've not read a lot yet it feels like overengineering to use such sophisticated tool. <br />
<b>Phone integration:</b> Currently I use Mac for private usage. While there's already a plethora of Desktop apps such as WhatsApp, Signal, Spotify etc. I wanna have some cool command line tools. For instance I would be able to move files from / to my phone using the terminal.

## Resources

In the end I wanna recommend some resources which helped me set up my system.

- I really enjoy the videos of Luke Smith. For example, in this [video](https://www.youtube.com/watch?v=yy8RoDSdhIQ&ab_channel=LukeSmith) he shares how he keeps his home directory clean using the XDG Base Directory Specification.
- [Awesome Dotfiles:](https://github.com/unixorn/awesome-dotfiles) Another awesome library. If you're interested to know more about Dotfiles, this should be a good entry point to find interesting resources.