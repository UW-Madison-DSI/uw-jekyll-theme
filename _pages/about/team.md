---
title: Team | Open Source Program Office
layout: default
permalink: /about/team
---
	
<h1 class="page-title uw-mini-bar">Our Team</h1>
<p class="page-description">Meet our team.</p>

<div class="d-flex flex-col">
	<div class="row m-md-auto">
		<h2>OSPO Executive Committee</h2>
		{% for member in site.team %}
		{% if member.group == "OSPO Executive Committee" %}
		<div class="col-sm-12 col-md-4">
			<div class="card mb-4 w-75">
				<img class="card-img-top" src="../images\team\{{ member.headshot }}" alt="{{ member.name }}">
				<div class="card-body">
				<h5 class="card-title">{{ member.name }}</h5>
				<p class="card-text">{{ member.title }}</p>
				</div>
			</div>
		</div>
		{% endif %}
		{% endfor %}

		<h2>OSPO Advisory Board</h2>
		{% for member in site.team %}
		{% if member.group == "OSPO Advisory Board" %}
		<div class="col-sm-12 col-md-4">
			<div class="card mb-4 w-75">
				<img class="card-img-top" src="../images\team\{{ member.headshot }}" alt="{{ member.name }}">
				<div class="card-body">
				<h5 class="card-title">{{ member.name }}</h5>
				<p class="card-text">{{ member.title }}</p>
				</div>
			</div>
		</div>
		{% endif %}
		{% endfor %}

		<h2>OSPO Interns</h2>
		{% for member in site.team %}
		{% if member.group == "OSPO Interns" %}
		<div class="col-sm-12 col-md-4">
			<div class="card mb-4 w-75">
				<img class="card-img-top" src="../images\team\{{ member.headshot }}" alt="{{ member.name }}">
				<div class="card-body">
				<h5 class="card-title">{{ member.name }}</h5>
				<p class="card-text">{{ member.title }}</p>
				</div>
			</div>
		</div>
		{% endif %}
		{% endfor %}
	</div>
</div>