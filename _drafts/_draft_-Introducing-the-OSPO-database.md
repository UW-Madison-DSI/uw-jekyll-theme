---
layout: default
title: "Introduction to OSPO Database Development"
date:  2023-08-02 10:00:00 -0600
categories: draft
---

Open Source software is ubiquitous and contributions to and adoptions of OSS have immense value at a national and global scales [@blind2024estimate;korkmaz2024github]. Open source software is at the core of most major operating systems, and drives most of the websites and internet services we use every day; however, Open Source software is often invisible. We may unzip a file, but it’s often not readily apparent that we are directly engaging with open source software. Within academic institutions this issue of visibility may be more pressing. Professors, graduate students, undergraduates, staff, extension employees and other affiliates may all produce open source software, or may have the intention of building open source software, but unless it is widely publicized, we’d never know it, and often these individuals get little in the way of rewards for producing it.

<figure>
    <img src = "{{ site.baseurl }}/images/posts/_draft_-publication_software_scales.svg" alt="An image of a set of scales, balancing a journal article and a floppy disk, representing software" />
    <figcaption>
        Academic institutions need reliable mechanisms to evaluate the contributions of Open Source Software to scholarship and to innovation within promotion and tenure descisions. It's also important to understand elements of code quality, best practices and the ways in which open source software produce "impact", wheter through use in citations, as templates or components in other software, or as revenue generating products. Figure by: Simon Goring, using elements from <a href="https://thenounproject.com">thenounproject.com</a>
    </figcation>
</figure>

One of the first things we wanted to do as part of the University of Wisconsin OSPO is build a tool to help us understand the landscape of Open Source software at the University, so that we could begin to identify the ways in which our work could help community members to build better software, build new communities, and learn from one another and from external experts to help foster a community of innovation and discovery around Open Source Software at the University.

A significant challenge for us to overcome was how to understand and capture the extent of OS development from our community. We can use basic search tools and APIs from various Open Source repositories like GitHub and GitLabs, but Wikipedia lists [16 Open Source code repositories](https://en.wikipedia.org/wiki/Comparison_of_source-code-hosting_facilities) in its comparison of hosting facilities, and within Academia, individuals may also share code through their personal websites, or as supplementary material within journal articles.

Regardless of where the code was, we wanted to store some critical metadata:
* A unique location for the code
* License information
* Code authors & managers
* Information about code development (publication dates)

Beyond this, many of the larger public code repositories provide additional metadata about code repositories, such as the number of commits, file and language types, collaborator networks and others (see for example the [GitHub REST API](https://docs.github.com/en/rest?apiVersion=2022-11-28) and [GitLab REST API](https://docs.gitlab.com/ee/api/api_resources.html)).

By reaching out to the community through our [OSPO Survey](https://ospo.wisc.edu/blog/2024/ospo-survey/) we were able to begin to understand the ways that individuals in the UW Community engaged and understood Open Source software. It was also clear that individuals engaged with, and reported their engagement in a number of ways, from contributions to projects they have developed to needs they reported. This means that any product we build to help us better understand the community needs to be able to track a range of Open Software resources. We that recognize helping build a stronger culture around Open Source Software will require us to evaluate baselines, best practices, and improvements over time, to see how the community changes and evolves over time.

<figure>
    <img src = "{{ site.baseurl }}/images/posts/_draft_-community-of-articles.svg" alt="An image of a group of people, with a sequence of connected dots in the background, representing connections between software objects and other research and academic outputs." />
    <figcaption>
        The Open Source community extends beyond software objects, to academic articles, research scripts, outreach websites and open source services provided by members of the university community. Our database needs to capture both the Open Source Software, but also these associated products, to help us evaluate the importance of Open Source Software to the university community. Figure by: Simon Goring, using elements from <a href="https://thenounproject.com">thenounproject.com</a>
    </figcation>
</figure>

Over the next few months we will be releasing posts detailing how this decision making was undertaken, from surveying the community directly, scraping data using Open Software Repository APIs, and searching for data using full-text search tools across journal articles and the web. We will talk about how we built our Open Software Database, our design decisions behind an API for accessing data from the database, and how we chose to analyze, present and track the data we obtained for the database. We will also discuss how we move forward from our analysis to help build a stronger community culture around OSS.

Image attributions:
* scales by haritselarif from <a href="https://thenounproject.com/browse/icons/term/scales/" target="_blank" title="scales Icons">Noun Project</a> (CC BY 3.0)
* floppy disc by Mukholifah from <a href="https://thenounproject.com/browse/icons/term/floppy-disc/" target="_blank" title="floppy disc Icons">Noun Project</a> (CC BY 3.0)
* article by Slameticon from <a href="https://thenounproject.com/browse/icons/term/article/" target="_blank" title="article Icons">Noun Project</a> (CC BY 3.0)
* Community by Best Moms from <a href="https://thenounproject.com/browse/icons/term/community/" target="_blank" title="Community Icons">Noun Project</a> (CC BY 3.0)