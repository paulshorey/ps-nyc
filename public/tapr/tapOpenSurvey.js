(function() {

	// config
	var meta = {};
	meta.id = Math.random();


	// FORM ACTION
	var formSubmit = function(e) {
		e.preventDefault();
		console.log('submit...',e);

		// get survey data
		var postUrl = "https://www.tapresearch.com/supply_api/surveys/offer";
		var postData = {
			"api_token": "9a7fb35fb5e0daa7dadfaccd41bb7ad1",
			"user_identifier": "tapresearch"
		};
		console.log('fetching...'+postUrl);
		fetch( postUrl, {
			method: 'POST',
			mode: 'cors',
			body: JSON.stringify(postData), 
			headers: new Headers({
				'Content-Type': 'application/json'
			})
		  })
		  .then(function(response){
			  console.log('Success:', response)
		  })
		  .catch(error => console.error('Error:', error));
		//   .then(res => res.json())
		//   .catch(error => console.error('Error:', error))
		//   .then(function(response){
		// 	  console.log('Success:', response)
		//   });
	};


	// WRITE OUTPUT - initial placeholder
	window.document.writeln('<div id="'+ meta.id +'"></div>');

	// make form contents
	var elements = {};

	elements.form = document.createElement('form');
	elements.form.action = "";
	elements.form.onsubmit = formSubmit;

	elements.input = document.createElement('input');
	elements.input.placeholder = "Your name";

	elements.button = document.createElement('button');
	elements.button.innerHTML = "Start";

	elements.form.appendChild(elements.input);
	elements.form.appendChild(elements.button);
	
	// WRITE OUTPUT - finished form
	document.getElementById(meta.id).appendChild(elements.form);

})();
