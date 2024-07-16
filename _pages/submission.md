---
title: Project Submission | Open Source Program Office
layout: default
permalink: /projects/submission
---

<h1 class="uw-mini-bar mb-3">Project Submission Form</h1>
<form 
method="POST" 
action="https://script.google.com/macros/s/AKfycbxX8yQPamKqdw9kUrdfusPxMGerAMOB6ag2eORlu-oP16zEohyX0Te11Vl-ymGOvLcy/exec"
id="submissionForm"
>
	<label for="Name">Project Name:</label>
		<input name="Project Name" type="text" size="40px" placeholder="Name" required> <br />
	<label for="Description">Short Project Description</label>
		<textarea name="Description" type="text" rows="4" cols="80" placeholder="Description" style="resize: none;" required></textarea>
		<br />
	<label for="Website">Website (if available):</label>
		<input name="Website" type="text" size="40px" placeholder="Website">
		<br />
	<label for="Source Code Link">Link to source code (GitHub, etc.):</label>
		<input name="Source Code Link" type="text" size="40px" placeholder="Source Code">
		<br />
	<label for="UW Association">How does this project associate with UW:</label>
		<textarea name="UW Association" type="text" rows="4" cols="80" placeholder="Association" style="resize: none;" required></textarea>
		<br />
	<label for="License Info">License Info (if available):</label>
		<textarea name="License Info" type="text" rows="4" cols="80" placeholder="License" style="resize: none;"></textarea>
		<br />
	<label for="Contact">Contact Email:</label>
		<input name="Contact" type="text" size="40px" placeholder="Contact" required>
		<br />
	<button class="btn btn-primary btn-lg" type="submit">Send</button>
</form>

<script>
	window.addEventListener("load", function() {
		const form = document.getElementById('submissionForm');
			form.addEventListener("submit", function(e) {
			e.preventDefault();
		const data = new FormData(form);
		const action = e.target.action;
			fetch(action, {
				method: 'POST',
				body: data,
			})
			.then(() => {
				// window.location.href = 'success.html'
				alert("Thank you. Your project has been submitted.");
			})
		});
	});
</script>