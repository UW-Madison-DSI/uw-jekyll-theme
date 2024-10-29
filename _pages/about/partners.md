---
title: Partners | Open Source Program Office
layout: default
permalink: /about/partners
---

<h1 class="page-title uw-mini-bar">Partners</h1>
<p class="page-description">We are working with the following partner organizations:</p>

<div class="d-flex flex-col">
	<ul style="list-style-type: none; margin: 10px;">
		<div class="row">
			{% for partner in site.partners %}
			<div class="col-sm-12 col-md-4">
				<li>
					<img src="../images/partners/{{ partner.logo }}" alt="{{ partner.name }}" />
					<h2 class="uw-mini-bar">
						<a style="text-decoration: none;" href="{{ partner.href }}" target="_blank">{{ partner.name }}</a></h2>
					<p>{{ partner.content }}</p>
				</li>
			</div>
			{% endfor %}
		</div>
	</ul>
</div>
