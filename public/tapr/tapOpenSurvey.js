// Paul Shorey ---- ps@artspaces.net ---- 385.770.6789 //

(function () {
	"use strict";

	// ---- initial config: ---- //

	var meta = {};
	meta.uid = "_" + Math.round(Math.random() * 1000000000000000); // "_" because id attribute can not start with number
	meta.openOfferWindowName = "offerWindow" + meta.uid;
	meta.openOfferFunctionName = "offerFunction" + meta.uid;
	meta.openOfferTimeoutName = "offerTimeout" + meta.uid;


	// ---- user actions: ---- //

	// OPEN OFFER
	var userAction_openOffer = function userAction_openOffer(e) {
		e.preventDefault();

		// JSONP prepare for offer by opening new window
		window[meta.openOfferWindowName] = window.open("about:blank", "_blank");

		// JSONP handler
		window[meta.openOfferFunctionName] = function (offerData) {

			// offer data
			if (offerData && offerData.offer_url) {
				// offer available :)
				document.getElementById(meta.uid).innerHTML = "<div>" + "	Survey has been opened.<br />" + "	This survey reward is between " + offerData.message_hash.min + " to  " + offerData.message_hash.max + "  " + offerData.message_hash.currency + "" + "</div>";
				// open offer url :D
				window[meta.openOfferWindowName].location.href = offerData.offer_url;
				window[meta.openOfferWindowName].focus();
			} else {
				// no offer available :(
				document.getElementById(meta.uid).innerHTML = "<div>" + "	Sorry, we have no survey available at this time." + "</div>";
			}

			// response went through OK - disable timeout scenario
			window.clearTimeout(window[meta.openOfferTimeoutName]);
		};
		
		// JSONP execute
		var getUrl = "https://www.tapresearch.com/supply_api/surveys/offer?callback=" + meta.openOfferFunctionName + "&dataType=jsonp&api_token=9a7fb35fb5e0daa7dadfaccd41bb7ad1&user_identifier=tapresearch";
		var imported = document.createElement('script');
		imported.src = getUrl;
		document.head.appendChild(imported);
		window[meta.openOfferTimeoutName] = setTimeout(window[meta.openOfferFunctionName], 3000);
	};

	// FORM VALIDATION
	var formValidate = function formValidate(e) {
		// form element
		e.preventDefault();
		var form = e.target;
		if (typeof form.action === 'undefined') {
			form = e.target.form;
		}
		// VALIDATE
		var valid = true;
		form.querySelectorAll("input[validate]").forEach(function (inputToValidate) {
			// each
			if (inputToValidate.value.length < 1 || inputToValidate.value.length > 32) {
				// FAIL
				form.submit.disabled = true;
				inputToValidate.classList.add('invalid');
				valid = false;
			} else {
				// PASS
				form.submit.disabled = false;
				inputToValidate.classList.remove('invalid');
			}
		});
		return valid;
	};

	// FORM SUBMIT ATTEMPT
	var formSubmit = function formSubmit(e) {
		if (formValidate(e)) {
			userAction_openOffer(e);
		}
	};


	// ---- inject form: ---- //

	// WRITE OUTPUT - initial placeholder div and stylesheet

	// stylesheet
	var styleSheet = document.createElement('style');
	styleSheet.type = 'text/css';
	var css = "" + "#" + meta.uid + " form {display:flex;max-width: 270px;} " + "#" + meta.uid + " input {border:solid 1px #25BEE4;flex-grow:1;} " + "#" + meta.uid + " input.invalid {border:solid 1px red;} " + "#" + meta.uid + " button {background:#25BEE4;border:none;border-radius:0;display:block;min-width:100px;padding:4px 6px 6px 4px;color:#fff;font-weight:bold;cursor:} " + "#" + meta.uid + " *:focus {outline: none;}" + "";
	styleSheet.appendChild(document.createTextNode(css));
	document.head.appendChild(styleSheet);
	var styleContainer = "" + "font-family: sans-serif;" + "font-size: 15px;" + "line-height: 17px;" + "color: #25BEE4;" + "";
	window.document.writeln('<div id="' + meta.uid + '" style="' + styleContainer + '"></div>');

	// form
	var elements = {};

	elements.form = document.createElement('form');
	elements.form.onsubmit = formSubmit;

	elements.input = document.createElement('input');
	elements.input.value = "";
	elements.input.name = "identifier";
	elements.input.setAttribute("validate", "^.{2,32}$");
	elements.input.placeholder = "Your name";
	elements.input.onblur = formValidate;
	elements.input.onkeyup = formValidate;

	elements.button = document.createElement('button');
	elements.button.type = "submit";
	elements.button.name = "submit";
	elements.button.innerHTML = "Take Survey";

	elements.form.appendChild(elements.input);
	elements.form.appendChild(elements.button);

	// WRITE OUTPUT - form
	document.getElementById(meta.uid).appendChild(elements.form);
})();