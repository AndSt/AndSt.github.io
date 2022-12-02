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
draft: true

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

<TODO: Why this here?>
I started my PhD in order to contribute to the goal to achieve true artificial intelligence. There are many hypothesis and directions people pursue to make steps towards this goal.
Just to name a few, people aim for Continual Learning, Domain Adaption, Transfer Learning, System 2 theories, etc.

One goal of mine was to widen my scope. 
One field I think is particularly interesting is Causal Inference. In my view, humans often make use of probabilistic AND causal reasoning. Having a formal language combining these two seems very natural to me. 

## What is Causal Inference?

This paragraph gives a high level overview over Causal Inference. It lacks completeness and any formal correctness. The goal is to give you an intuitive idea of how I see the field. Given my machine learning background, my limited exposure to the field, chances are that this introduction is not the best for everyone.
If you leave this intro with a feeling of some questions Causal Inference aims to answer, I'd be really happy :partying_face:.
Anyways, let's get down to business.

<!--- The following needs more work --->
Let's start with a real example. If you fall off your bike, it will cause some pain. The amount of pain depends on speed and the ground you fall onto. Human's intuitively understand the causal relation between falling from a bike and pain. In causal inference we would call falling the Cause and pain the effect.
One goal of Causal Inference is to mathematically formalize this thinking. 

In order to describe, traditional mathematics only has the language of probability theory. But there are many examples which show that traditional probability theory, which is based on the notion of independence, is incapable of describing these relationships. A famous saying hereto is "association is not causation" which is described by Simpson's Paradox. A standard example displaying the phenomenon is the UC Berkeley gender bias case. There UCB analysed the admission numbers which showed that UCB was biased to admit more men. On a closer inspection it came out that woman often applied to more competitive degrees where more people were rejected. Thus in total the trend was not that clear. The example shows that a statistical fact doesn't describe the cause and effect of the underlying process. Here, in the language of Causal Inference - more later -, a so called confounding variable (the degree program) conflicted with standard statistics.
<!-- TODO write link -->

Now I want to give a tiny intro into the mathematical modelling. Causal Inference assumes operates on so called Strucural Causal Models (SCM), often also called Structural Equation Model (SEM), which generates a causal graph. The following definition is similar to [1]:
{{% callout note %}}
A SCM $\mathcal{C} := (S, P_N)$ governing the random vector $X = (X_1, ..., X_d)$ is a set of structural equations: <br>
$$S_i: X_i \leftarrow fi(Pa(X_i), N_i),i=1, \dots,d$$, where $X_i$ are exogenous variables, $Pa(Xi) ⊆ \{X_1, ..., X_d\} \ \{X_i\}$ are called the parents of $X_i$, and the $N_i$ are
independent random noise variables. <br>
We say that “$X_i$ causes $X_j$” if $X_i ∈ Pa(X_j)$. <br>
We call a graph $G$ a causal graph of $X$ if it is obtained by drawing i) one node for each $X_i$,
and ii) one edge from $X_i$ to $X_j$ if $X_i ∈ Pa(X_j)$. We assume acyclic causal graphs. <br>
Definition is taken from [1]. Various abstractions, including cyclic graphs are also possible, e.g. [2].
{{% /callout %}}

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

As discussed in the beginning, causal thinking is completely natural to human thinking. We make statistical and causal considerations in most of our arguments. 
But when you want to apply the theory to certain problems, often complexity rises to quickly. Most tools in causal inference assume a known causal graph. In language, every conversation can be represented by a different graph. This is an example of the complexity arising.

There's different ways how Causal Inference interacts with machine learning in general. A good overview is given in  TODO: Schölkopf paper

An idea is to use CI for model explainability. A very nice example is CausaLM 

## Why is NLP and Causality difficult?

The basic theoretical notion of Causal Inference is the usage of SCM's. So if we now brainstorm how we could use SCM's on text without a particular goal in mind, there might be several strategies:

1) Use the SCM to describe the text itself
2) Use the SCM to describe the task
3) Use the SCM to describe inner workings of the model
 For now, I want to describe why each of these have their difficulties. 

An often spken basis for Causality and NLP is the hypothesis of independent mechanisms, 
{{< cite "ziegler2019latent" >}}
meaning that a situation can be described by independent factors. For example, a written letter (e.g. MNIST dataset) can have parameters like thickness, width, color, etc., which can be controlled independently. In NLP, these factors would probably correspond to exactness, complexity, friendliness or others which are very subjective and tough to describe numerically.

While this was rather negative view, people came up many great ideas on how to use causal theory for NLP. See [4] for a comprehensive overview of the field. ALso, it's clear that the intersection of the two fields is still rather unexplored.

- We have to change that


## Links:

[1] [Schölkopf et al. Causal Representation learning](https://arxiv.org/pdf/2102.11107.pdf): Good overview of CI and ML, and open questions <br>
[2] [Brady Neal Causal Inference course](https://www.bradyneal.com/causal-inference-course) <br>
[3] [The Book of Why](https://en.wikipedia.org/wiki/The_Book_of_Why): Book opening Causal Inference to the general public, authored by Judea Pearl, who is often described as the inventor of Causal Inference (and one of my favorite scientist) <br>
[4] [Overview causality and NLP Github repo](https://github.com/causaltext/causal-text-papers); including their [overview paper](https://arxiv.org/pdf/2109.00725.pdf)


{{< bibliography cited >}}