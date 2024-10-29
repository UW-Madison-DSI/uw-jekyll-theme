---
title: Faces of Open Source | Open Source Program Office
layout: default
permalink: /community/profiles
---

<h1 class="page-title uw-mini-bar">Faces of Open Source</h1>
<p class="page-description">Below are some faces of open source at the Universty of Wisconsin-Madison. </p>

{% for profile in site.profiles %}
<div class="person-profile">
	{% if profile.headshot %}
	<div class="icon">
		<div class="headshot" style="background-image:url(../images/profiles/{{ profile.headshot }})" />
		<h3>{{ profile.name }} </h3>
	</div>
	{% endif %}
	<h2>{{ profile.headline }} </h2>
	<p>{{ profile.content | markdownify }}</p>
	{% endfor %}
</div>