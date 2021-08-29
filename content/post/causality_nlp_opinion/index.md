---
title: My dive into Causal Inference and thoughts on the connection to NLP
subtitle: 

# Summary for listings and search engines
summary: Within this post I want to motivate and recap my dive into Causal Inference. I want to give a small high level introduction, mention interesting things I learnt and offer some thoughts on the connection to NLP.
# Link this post with a project
projects: []

# Date published
date: "2021-08-04T00:00:00Z"

# Date updated
lastmod: "2021-08-04T00:00:00Z"

# Is this an unpublished draft?
draft: false

# Show this page in the Featured widget?
featured: false

# Featured image
# Place an image named `featured.jpg/png` in this page's folder and customize its options here.
image:
  caption: 'Image credit: [**Unsplash**](https://unsplash.com/photos/CpkOjOcXdUY)'
  focal_point: ""
  placement: 2
  preview_only: false

authors:
- admin
- 吳恩達

tags:
- Causal Inference
- NLP

categories:
- Post
- Opinion
---

After starting my PhD I aimed to broaden my interests in machine learning. 

## What is Causal Inference?

Within this paragraph I will give a high level view which lacks completeness and any formal correctness . The goal is to give you an intuitive idea how I see the field. Given my machine learning background, my limited exposure to the field, chances are that my introduction is not the best for everyone.
If you leave this intro with a feeling of some questions Causal Inference aims to answer, I'd be really happy :partying_face:.
Now let's get down to business.

Causal thinking is something very natural to humans. A child easily understands the causal relationship between falling down and the pain it creates. Falling is the cause and pain is the effect.
One goal of Causal Inference is to mathematically formalize this thinking. 

There are many examples which show that the traditional statistical language, which is based on the notion of independence, is incapable to describe these relationships. A famous saying hereto is association is not causation which is described by Simpson's Paradox. A traditional example is the UC Berkeley gender bias case. In total, the numbers showed that UCB was biased to admit more men. But a closer inspection showed that woman often applied to more competitive degrees where more people were rejected. Thus in total the trend was not that clear. The example shows that a statistical fact doesn't describe the cause and effect of the underlying process. Here, in the language of Causal Inference - more later -, a so called confounding variable (the degree program) conflicted with standard statistics.

Now I want to give a tiny intro into the mathematical modelling. Causal Inference assumes operates on so called Strucural Causal Models (SCM), often also called Structural Equation Model (SEM), which generates a causal graph. 

A SCM $C := (S, N)$ governing the random vector $X = (X1, . . . , Xd)$ is a set of structural equations: <br>
$S_i: X_i \leftarrow fi(Pa(X_i), N_i)$, <br>
where $Pa(Xi) ⊆ \{X_1, . . . , X_d\} \ \{X_i\}$ are called the parents of Xi, and the $N_i$ are
independent noise random variables. We say that “$X_i$ causes $X_j$” if $X_i ∈ Pa(X_j)$. <br>
We call a graph $G$ a causal graph of $X$ if it is obtained by drawing i) one node for each $X_i$,
and ii) one edge from $X_i$ to $X_j$ if $X_i ∈ Pa(X_j)$. We assume acyclic causal graphs. <br>
Definition is taken from [1]. Various abstractions, including cyclic graphs are also possible, e.g. [2].

One task is to observe SCM's or causal graphs from observational data.
Most of the time we assume they are given by human domain knowledge. To answer causal questions humans resort to "What if" questions, e.g. "Would it have been smarter if I had used the bike instead of the car". This is formalized by interventions. Again we take the definition from [1]:

Consider a SEM C = (S, N). An intervention $e$ on $C$ consists of replacing one or several of its structural equations to obtain an intervened SEM $C^e=(S^e, N^e)$, with structural equations: <br>
$S_i^e : X_i \leftarrow f_i^e (Pa^e(X_i^e), N_i^e)$,.<br>
The variable $X_e$ is intervened if $S_i \neq S_i^e$ or $N_i \neq N_i^e$.

A hard intervention would set a value $X_i$ to a specific value, e.g. man or woman. A soft intervention would change the formula. By doing so we can answer "What if" questions.

In the end, I want to talk about Pearl's ladder of Causal inference. I hope this gives some high level insight into the types of questions Causal Inference aims to answer.


## How did I learn it?

While I heard about the field and the famous saying "Causation is not equal to Correlation", I just started diving into the topic this January. With a good friend we went through the course by Brady Neal ([Link to course](https://www.bradyneal.com/causal-inference-course)). I really enjoyed learning the theory here. It establishes the philosophical thoughts and basic assumptions on the basis of easy examples. It's important to note that the course doesn't focus on the relation to machine learning but gives a general introduction to the topic. In my view this is necessary to get a comprehensive introduction.

TODO: compare to primer and schölkopf book.

## What connections did I observe to NLP?

On the first sight, causal thinking is completely natural to human thinking. We make statistical and causal considerations in most of our arguments.
#TODO good example
But when you want to apply the theory to certain problems, often complexity rises to quickly. Most problems in causal inference assume a known causal graph. In language, every conversation can be represented by a different graph. This is an example of the complexity arising.

There's different ways how Causal Inference interacts with machine learning in general. A good overview is given in  TODO: Schölkopf paper

githu causaltext link
An idea is to use CI for model explainability. A very nice example is CausaLM 

## What problems do I see?

