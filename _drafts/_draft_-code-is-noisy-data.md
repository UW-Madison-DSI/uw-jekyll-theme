---
layout: default
title: "Code Repositories are Noisy Data."
date:  2023-08-02 10:00:00 -0600
categories: draft
---

While there are strong data models for repository structures across the different repository providers (see for example the [GitHub REST API](https://docs.github.com/en/rest?apiVersion=2022-11-28) and [GitLab REST API](https://docs.gitlab.com/ee/api/api_resources.html)), what people put into their repositories, and how those get reported out is a completely different beast. Noise comes from a number of different sources. Even simply identifying a repository can be problematic. The same repository could look very different depending on where, how and who is reporting the repository:

* `SimonGoring/repository-name`
* `https://github.com/SimonGoring/repository-name.git`
* `SimonGoring/repositoryname`
* `https://github.com/SimonGoring/repository--name`
* `repository-name`
* `repository-name` at `https://github.com/SimonGoring`

We encounter all of these alternatives when relying on secondary sources to discover repositories. Assuming `SimonGoring/repository-name` is a valid resource we also want to find and index the repository so we can learn a little bit about it. A [survey user](https://ospo.wisc.edu/blog/2024/ospo-survey/) may respond with just `repository-name` if they've already identified their user name. The name `SimonGoring/repository--name` may appear in a full-text document if we're not careful how punctuation marks are rendered. We may also encounter `https://github.com/SimonGoring/repository-name.git`, the canonical address of the actual `git` service.

So we can think of several sources of "noise" in these repositories, they include noise in discovering names, noise in identifying the languages used, noise in understanding aggregate patterns and noise in interpreting user behaviours.

# Noise in Repository Names (Discovery)

In our tools for scraping we try a number of different ways of figuring out whether a repository name is valid. The first pass was to [use regular expressions](https://github.com/UW-Madison-DSI/OSPO_Data_Management/blob/main/xddsource/gddospo/gdd_tools.py#L9). When searching through plaintext journal articles we use the following regular expression to look for specific open, online code repositories:

```regex
((github)|(gitlab)|(bitbucket)).com\/((\s{0,1})[\w,\-,\_]+\/*){1,2}
```

This regular expression looks for text strings that begin with either `github`, `gitlab` or `bitbucket` followed by a `.com/`. The regex accepts either no spaces *or* one space following the hostname, and the subsequent text must contain valid characters for a repository owner, or repository name: any letter or number (the regex escape character `\w`), with dashes or underscores.  

We originally limited the set of repositories we wanted to look for to these major providers. The results show the extent to which Github has managed to capture the academic coding community:

| Repository Org | Count |
| ------- | ------ |
| Github | 16,773 |
| Gitlab | 160 |
| Bitbucket | 0 |

# Noise in understanding coding languages

