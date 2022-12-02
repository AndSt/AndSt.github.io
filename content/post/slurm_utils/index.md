---
title: Slurm Utils
subtitle: 

# Summary for listings and search engines
summary: A package to automatically run machine models locally, on Juypter Notebooks and on a SLURM machine.

# Link this post with a project
projects: []

# Date published
date: "2021-08-10T00:00:00Z"

# Date updated
lastmod: "2021-08-10T00:00:00Zd"

# Is this an unpublished draft?
draft: true

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

Currently I work as a NLP PhD candidate at the University of Vienna. Clearly, one needs server-based GPU systems to design and run competitive experiments. We work with a small [SLURM](https://slurm.schedmd.com/documentation.html) installation. 

For development and data exploration, I like to use Jupyter and PyCharm and the terminal, which is not directly usable with SLURM. Thus, I decided to build a wrapper which allows me to run code on Jupyter, locally via terminal and remotely on the SLURM cluster. The code can be found [here](https://github.com/AndSt/slurm_utils) and a really easy example project can be found [here](https://github.com/AndSt/slurm_utils_test_repo).

## Design Goals

## Setup

## Next steps

## Lessons learned

- Having automated experiment output structure massively sped up my system
- I'm more organized
- Deployment from CPU to GPU got faster
- My repositories are compatible
- I will definitly go on designing my own tooling as a "wrapper", so other people can use the code without using slurm_utils itself