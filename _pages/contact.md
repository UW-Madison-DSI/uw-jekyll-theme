---
title: Contact | Open Source Program Office
layout: default
permalink: /contact
---

<h1 class="page-title uw-mini-bar">Contact</h1>
<p class="page-description">Please feel free to reach out and contact us.</p>

<div class="form">
	<div class="name form-group">
		<label class="required control-label"><i class="fa fa-font"></i>Name</label>
		<div class="controls">
			<input type="text" size="30" class="required form-control" />
		</div>
	</div>
	
	<div class="username form-group" style="display:none">
		<label class="control-label"><i class="fa fa-keyboard"></i>Username</label>
		<div class="controls">
			<input type="text" size="30" class="form-control" />
		</div>
	</div>
	
	<div class="email form-group">
		<label class="control-label"><i class="fa fa-envelope"></i>Email</label>
		<div class="controls">
			<input type="email" size="30" class="form-control" />
		</div>
	</div>
	
	<div class="subject form-group">
		<label class="control-label"><i class="fa fa-info-circle"></i>Subject</label>
		<div class="controls">
			<input type="text" size="30" class="form-control" />
		</div>
	</div>
	
	<div class="message wide form-group">
		<label class="required control-label"><i class="fa fa-quote-left"></i>Message</label>
		<div class="controls">
			<textarea style="resize: none;" class="required form-control" data-enable-grammarly="false" rows="10"></textarea>
		</div>
	</div>

	<div class="attachment form-group">
		<label class="control-label"><i class="fa fa-file"></i>Attachment</label>
		<div class="controls" style="display:flex">
			<input type="file" id="file" class="form-control" />
			<button class="remove btn btn-sm" style="margin-left:10px; display:none"><label>Clear</label></button>
		</div>
	</div>

	<hr />
	
	<div class="buttons">
		<button class="send btn btn-primary btn-lg">
			<i class="fa fa-envelope"></i>Send
		</button>
	</div>
</div>

<script type="text/javascript" src="library/jquery/jquery-3.6.0.js"></script>
<script>
	let server1 = 'http://localhost/contact-server/public/api';
	let server = 'https://maps.datascience.wisc.edu/apis/contact-server/public/api';

	//
	// getting methods
	//

	function getFormData() {
		return {
			name: $('.name input').val(),
			email: $('.email input').val(),
			subject: $('.subject input').val(),
			message: $('.message textarea').val(),
			attachment: $('.attachment #file')[0].files[0]
		};
	}

	//
	// setting functions
	//

	function setFilename(filename) {
		const fileInput = this.$el.find('#file')[0];

		// Help Safari out
		//
		if (fileInput.webkitEntries.length) {
			fileInput.dataset.file = filename;
		}
	}

	//
	// form submission functions
	//

	function send(data, options) {

		// create form data
		//
		let formData = new FormData();
		let keys = Object.keys(data);
		for (let i = 0; i < keys.length; i++) {
			let key = keys[i];
			let value = data[key];
			formData.append(key, value);
		}

		$.ajax({
			type: 'POST',
			url: server + '/contacts',
			data: formData,
			contentType: false,
			processData: false,
			success: options.success,
			error: options.error
		});
	}

	$(window).ready(() => {

		//
		// button event handlers
		//

		$('button.select').on('click', (event) => {
			$('#file').trigger('click');
		});

		$('button.remove').on('click', (event) => {
			$('#file')[0].value = null;
			$('#file').hide();
			$('.remove').hide();
		});

		$('.send').on('click', (event) => {
			send(this.getFormData(), {

				// callbacks
				//
				success: () => {
					alert("Your message has been sent.  Thank you for your feedback!");
				},
				error: () => {
					alert("Sorry - your message could not be sent!");
				}
			});
			event.stopPropagation();
		});

		//
		// file event handlers
		//

		$('#file').on('change', (event) => {
			$('#file').show();
			$('.remove').show();

			// set input filename (required for Safari)
			//
			if (event) {
				if (event.target.files[0]) {
					let filename = event.target.files[0].name;
					setFilename(filename);
				} else {
					setFilename('No file chosen');
				}
			}
		});
	});
</script>