import React from 'react';

/*
Import validations variable, which is a list of functions. Add one or more functions to your input`s validations property, in the form of an array. You do not have to use these provided validations. You can use your own, or mix and match. Actually, we will do that. Couple lines down, see what one of these validation functions looks like:
*/
import { LuxulForm, LuxulInput, validations } from 'components/form/LuxulForm';

/*
Very simple, receive the value and determine if it is valid
If valid, return false
If NOT valid, return true, or validation error message to be displayed next to the field
*/
var minimum4Characters = function(value) {
	if (value.length >= 4) {
		return false;
	} else {
		return 'Must have at least 4 characters';
	}
};

class ValidatedInput extends React.Component {
	constructor() {
		super();
		this.state = {
			luxulFormValues: {
				some_text_field: 'Default Value',
			},
		};
	}

	render() {
		var handleSubmit = promise => {};

		return (
			<LuxulForm stateScope={this} onSubmit={handleSubmit}>
				<div className="formSection">
					<h4>Some Text Field:</h4>
					<fieldset>
						<label>Some Label:</label>
						{/*
                        Here, we'll add 2 validation functions. One was imported from LuxulForm. Another, we created from scratch. Remember, even if adding one validation function, it has to be entered as an array!
                        */}
						<LuxulInput
							stateScope={this}
							name="some_text_field"
							type="text"
							validations={[validations.required, minimum4Characters]}
						/>
					</fieldset>
				</div>
			</LuxulForm>
		);
	}
}

export default ValidatedInput;
