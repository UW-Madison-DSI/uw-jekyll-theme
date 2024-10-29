---
title: Community Projects | Open Source Program Office
layout: default
permalink: /community/projects
---

<h1 class="page-title uw-mini-bar">Community Projects</h1>
<p class="page-description">This is a selection of user-submitted open source projects happening on campus. In addition to these submissions, the OSPO is developing an index and map of the UW-Madison open source community.</p>

<h2 class="text-center uw-mini-bar-center">Open Source Projects</h2>

<div class="d-flex">
	<div class="row align-items-baseline">
		{% for project in site.projects %}
		<div class="col-sm-12 col-md-4">
			<img class="screenshot" src="../images/projects/{{ project.image }}" />
			<h2 class="uw-mini-bar">{{ project.name }}</h2>
			<p>{{ project.content }}</p>

			{% if project.code %}
			<a href="{{ project.code }}" target="_blank" class="uw-button">
				Source Code
			</a>
			{% endif %}
			{% if project.website %}
			<a href="{{ project.website }}" target="_blank" class="uw-button">
				Website
			</a>
			{% endif %}
		</div>
		{% endfor %}
	</div>
</div>

<div class="container text-center">
	<div class="mt-4 uw-content-box">
		<h2 class="uw-mini-bar-center text-center">Submit a Project</h2>
		<p>Do you have an open source project? Submit it to our index!</p>
		<a href="projects/submission.html" target="_blank" class="uw-button justify-content-center">
			Project Submission Form
		</a>
	</div>
</div>