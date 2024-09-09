---
title: "From Calculation to Adjudication: Examining LLM judges on Mathematical Reasoning Tasks"

# Authors
# If you created a profile for a user (e.g. the default `admin` user), write the username (folder name) here 
# and it will be replaced with their full name and linked to their profile.
authors:
- admin
- Dawei Zhu
- Matthias Aßenmacher
- Xiaoyu Shen
- Benjamin Roth

# Author notes (optional)
#author_notes:
#- "Equal contribution"
#- "Equal contribution"

date: "2024-09-09T00:00:00Z"
doi: ""

# Schedule page publish date (NOT publication's date).
publishDate: "2017-01-01T00:00:00Z"

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ["1"]

# Publication name and optional abbreviated publication name.
publication: In *ArXiv Preprint*
publication_short: In *ArXiv*

abstract: "To reduce the need for human annotations, large language models (LLMs) have been proposed as judges of the quality of other candidate models. LLM judges are typically evaluated by measuring the correlation with human judgments on generation tasks such as summarization or machine translation. In contrast, we study LLM judges on mathematical reasoning tasks. These tasks require multi-step reasoning, and the correctness of their solutions is verifiable, enabling a more objective evaluation. We perform a detailed performance analysis and find that the used judges are mostly unable to improve task performance but are able to pick the better model. Our analysis uncovers a strong correlation between judgment performance and the candidate model task performance. We observe that judges tend to choose the model of higher quality even if its answer is incorrect. Further, we show that it is possible to use statistics, such as the task performances of the individual models, to predict judgment performance. In an ablation, we either swap or mask the candidate answers and observe that judges often keep the original judgment, providing evidence that judges incorporate writing style in their judgments. In summary, we find that regularities in the judgments are quantifiable using statistical measures and provide various angles on exploiting them."

# Summary. An optional shortened abstract.
summary: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis posuere tellus ac convallis placerat. Proin tincidunt magna sed ex sollicitudin condimentum.

tags: []

# Display this page in the Featured widget?
featured: false

# Custom links (uncomment lines below)
links:
- name: ArXiv
  url: https://www.arxiv.org/abs/2409.04168

url_pdf: ''
url_code: 'git@github.com:AndSt/llm_judges.git'
url_dataset: ''
url_poster: ''
url_project: ''
url_slides: ''
url_source: ''
url_video: ''

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
image:
  caption: '[ArXiv](https://arxiv.org/abs/2406.11486)'
  focal_point: ""
  preview_only: false

# Associated Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `internal-project` references `content/project/internal-project/index.md`.
#   Otherwise, set `projects: []`.
projects:
- []

# Slides (optional).
#   Associate this publication with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides: "example"` references `content/slides/example/index.md`.
#   Otherwise, set `slides: ""`.
slides: ""
---
