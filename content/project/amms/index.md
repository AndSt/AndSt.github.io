---
title: Another Multi Model Server (AMMS)
summary: A package to host machine learning models indepedent of ML frameworks built on top of FastAPI.
tags:
- Deep Learning
- API
- Project
date: "2021-07-16T00:00:00Z"

draft: true
# Optional external URL for project (replaces project detail page).
external_link: ""

image:
  caption: Photo by rawpixel on Unsplash
  focal_point: Smart

links:
url_code: ""
url_pdf: ""
url_slides: ""
url_video: ""


# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides: example
---

// TODO: say what I learned

This project came to existance during a very special time. While the first wave of the Covid Pandemic hit,  the management of my company decided that we have to take a few days off during the first half of the year to have achieve a similar level of productivity throughout the year. Probably a wise choice, but still not the best time to take vacation :D As this was rather spontaneous and there wasn't really anything to do, I sat home alone and felt that I need to work on something cool. So the project was basically created within this vacation period, thus it's far from finshed. Still, I really enjoyed working on it.

## Motivation and Vision

At the time I was working as a Data Scientist. Apart from modelling, productionizing is a big part of the job. Logically I was also interested in serving the models I created. For Tensorflow, I really admired [Tensorflow Serving](https://www.tensorflow.org/tfx/serving/docker). But in practice often simple Scikit-Learn models do the trick. I realized there is no perfect unified choice so I wanted to create something similar to Tensorflow Serving (obviously not speed-wise ..).

So the idea was to build simple serving project which is independent of the used Python ML framework, automatically provides an API in a unified fashion, is easily Docker compatible and needs minimal effort after model creation.
From a technical standpoint, I wanted to use FastAPI to generate the API, Docker to abstract inframstructure and a simple JSON file for configuration.

Additional features I deemed important where an automatic versioning scheme and the possibility to do live model reloading. It should be possible to host a volume into the Docker container where the program automatically fetches the newest model. 

If I remember correctly, [Seldon Core](https://github.com/SeldonIO/seldon-core) followed a similar goal. Now it grew and provides much bigger functionality, especially its Kubernetes integration seems cool. Giving it a quick Google search, also [BentoML](https://github.com/bentoml/BentoML) looks cool.

## Design decisions

The design pattern is often called Model Servers. [This](https://medium.com/@vikati/the-rise-of-the-model-servers-9395522b6c58) article gives a good overview. Basically a practitioner provides models and model server serves them, dealing with versioning, API provisioning, monitoring, etc.

AMMS allows you to provide multiple models, even multiple versions of the same model. Now, I use the configuration file to explain the information AMMS needs to host a model. 

````
[
  {
    "model_name": "simple_text",
    "aspired_version": "1.x",
    "load_type": "SHARE",
    "load_url": "data/models",
    "servable_name": "text_input"
  }
]
````

This file provides all the information the loading system needs to run the code.
Model name speficies the name in the input. The aspired version specifies the model to use. In this instance it searches in the local shared folder "data/models" for the newest model with the version "1.x". So if there'd be a model with major version 2, it wouldn't be loaded. The name of the servable 

## What's working?

So the project didn't finish. What did I achieve?

- working
- reload
- docker compose
- testing scheme

Some statistics:
- Test coverage:
- Lines of Code:
- No. files:

## Unsolved Challenges

- Reload API. It seems like routes are final

## Takeaways

As this project was a small interlude, it was clear this will never a productionized 
Thus, the question is: What did I learn and take away?

## Readings
 - [FastAPI](https://fastapi.tiangolo.com/)
 - [Docker](https://docs.docker.com/get-started/overview/)
 - [Productionizing Awesome list](https://github.com/EthicalML/awesome-production-machine-learning)
 - [AWS Multi-Model-Server](https://github.com/awslabs/multi-model-server)
