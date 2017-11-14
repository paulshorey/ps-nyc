/*eslint no-unused-vars: 2*/
import React from 'react';

import { _get_property, _set_property } from '../lib/functions';

/*
	export: input
*/
class LuxulInput extends React.Component {
	componentWillReceiveProps() {
		var { stateScope, validations, name } = this.props;

		// add this to parent form
		if (validations) {
			stateScope.luxulFormElementsToValidate = Object.assign({
				...stateScope.luxulFormElementsToValidate,
				[name]: this,
			});
		}
	}

	constructor(props) {
		super(props);
		var { stateScope, validations, onChange } = this.props;

		// this
		this.state = {
			invalid: false,
			touched: false,
			changed: false,
		};

		/*
			initially, validate - but update form validity only, dont mess with this input until touched by session
		*/
		this.onLoad = (event, value) => {
			// checkbox uses checked instead of value, so it must be passed in and caught here
			// with this if statement, we can pass a pre-filtered value from any type of field as well
			if (value === undefined || typeof value === 'object') {
				value = event.target.value;
			}

			// initial validate
			if (validations) {
				var luxulFormInvalid = stateScope.state.luxulFormInvalid || [];
				var invalid = this.validate(value, validations);
				var inIndex = luxulFormInvalid.indexOf(event.target.name);
				// update local
				if (invalid || invalid === '') {
					this.setState({ invalid: true });
					// if name is not already in array (was valid), add
					if (inIndex === -1) {
						luxulFormInvalid.push(event.target.name);
					}
				} else {
					this.setState({ invalid: false });
					// if name is already in array (was invalid), remove
					if (inIndex !== -1) {
						luxulFormInvalid.splice(inIndex, 1);
					}
				}
				// update form
				stateScope.setState({
					luxulFormInvalid: luxulFormInvalid,
					luxulFormTouched: true,
				});
			}
		};

		/*
			actions
		*/
		this.handleChange = (event, value) => {
			// select and toggle get special treatment
			// they're not ok with just reading value from event.target.value
			// this if is for regular inputs, select and toggle get value passed as second parameter
			if (value === undefined || typeof value === 'object') {
				value = event.target.value;
			}

			// update form
			_set_property(stateScope.state.luxulFormValues, event.target.name, value);
			if (
				_get_property(stateScope.state.luxulFormValuesOriginal, event.target.name) === undefined
			) {
				_set_property(stateScope.state.luxulFormValuesOriginal, event.target.name, '');
			}
			stateScope.setState({
				luxulFormTouched: true,
				luxulFormChanged:
					JSON.stringify(stateScope.state.luxulFormValues) !==
					JSON.stringify(stateScope.state.luxulFormValuesOriginal),
			});

			// update input
			this.setState({
				touched: true,
				changed:
					_get_property(stateScope.state.luxulFormValuesOriginal, event.target.name) !== value,
			});

			// pass through actions
			if (onChange) {
				onChange(event);
			}

			// toggle and select get special treatment
			if (event.target.type === 'checkbox' || event.target.type.indexOf('select') !== -1) {
				event.target.blur();
			}
		};

		/*
			validations
		*/
		this.handleValidate = params => {
			// if this is an actual DOM event handler, then params are the event, as in an onClick
			let event = params;
			// if called manually for validation, the event is passed in as a prop
			if (params.event) {
				var { value, clearValidations, reject } = params;
				event = params.event; // can't re-declare - because there already is an inherent event variable floating around in this scope??? idk
			}

			// select and toggle get special treatment
			// they're not ok with just reading value from event.target.value
			// this if is for regular inputs, select and toggle get value passed as second parameter
			if (value === undefined || typeof value === 'object') {
				value = event.target.value;
			}

			// clear 'submitAttempted' flag
			if (stateScope.state.luxulFormSubmitAttempted) {
				stateScope.setState({ luxulFormSubmitAttempted: false });
			}

			// validate
			if (validations) {
				var formInvalid = stateScope.state.luxulFormInvalid || [];
				var invalid = clearValidations ? false : this.validate(value, validations);
				var inIndex = formInvalid.indexOf(event.target.name);
				// update local
				if (invalid || invalid === '') {
					this.setState({ invalid: invalid });
					// if name is not already in array (was valid), add
					if (inIndex === -1) {
						formInvalid.push(event.target.name);
					}
					// focus on this field
					if (window.innerWidth <= 750) {
						// mobile - scroll body
						window.$('body').animate(
							{
								scrollTop:
									window.$(event.target).offset().top - window.$(event.target.form).height() / 2,
							},
							1000
						);
					} else {
						// desktop - scroll body to top to be consistent
						window.$('body').animate(
							{
								scrollTop: 0,
							},
							1000
						);
						// desktop - scroll box
						window.$(event.target.form).animate(
							{
								scrollTop: event.target.offsetTop - window.$(event.target.form).height() / 2,
							},
							1000
						);
					}
					if (reject) {
						reject('Form is not valid.');
					}
				} else {
					this.setState({ invalid: false });
					// if name is already in array (was invalid), remove
					if (inIndex !== -1) {
						formInvalid.splice(inIndex, 1);
					}
				}

				// update form
				stateScope.setState({
					luxulFormInvalid: formInvalid,
					luxulFormTouched: true,
				});
				// force update
				// when form becomes valid or invalid
				// if (!stateScope.state.luxulFormInvalid.length !== !luxulFormInvalidBefore.length) {
				// yes, force updating it every time is not an efficient or best way to do it...
				// but, it is very simple to understand, maintain, and our app can handle it because it is so light anyway
				// still, we should be thinking of a way to do this without updating the entire form component every time
				stateScope.forceUpdate();
				// }
			}

			// toggle and select get special treatment
			if (event.target.type === 'checkbox' || event.target.type.indexOf('select') !== -1) {
				this.setState({ invalid: invalid });
			}

			// return false == OK
			// return true || the invalidation
			if (invalid || invalid === '') {
				return invalid || true;
			} else {
				return false;
			}
		};
		this.validate = function(value, validations) {
			// allow parameter to be string instead single value array
			if (typeof validations === 'string') {
				validations = [validations];
			}

			// run each validation
			if (validations.length) {
				var errorMessage = false;
				validations.forEach(function(validationFunction, index) {
					if (!errorMessage) {
						errorMessage = validationFunction(value);
						// console.warn(errorMessage);
						if (errorMessage) {
							// tell the form
							return;
						}
					}
				});
				// return first fail, or false if ok
				return errorMessage || false;
				// this.setState({invalid: errorMessage || false });
			}
		};
	}

	render() {
		var { stateScope, onChange, validations, value, options, ...input } = this.props;

		// ignore this >>>
		// need to declare above: onChange, validations, value, options
		// so they will not sometimes be part of the desctructured variable: ...input, also above
		if (stateScope || onChange || validations || value || options) {
			/* can't silence Webpack React no-unused-vars warning, but these values must always be declared */
		}
		// <<< ignore this

		const Messages =
			this.state.invalid || this.state.invalid === '' ? (
				<div className="control_message invalid">{this.state.invalid}</div>
			) : (
				''
			);

		const formValue = _get_property(stateScope.state.luxulFormValues, input.name);

		return (
			<div
				className={
					'control LuxulInput' +
					(this.state.invalid ? ' invalid' : '') +
					(this.state.touched ? ' touched' : '') +
					(this.state.changed ? ' changed' : '')
				}
			>
				<input
					{...input}
					value={formValue}
					onChange={this.handleChange}
					onBlur={this.handleValidate}
				/>
				{Messages}
			</div>
		);
	}
}

export default LuxulInput;
