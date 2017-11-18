/*eslint no-unused-vars: 2*/
import React from 'react';
import LuxulButton from './LuxulButton';
import * as Styled from './LuxulFormStyled';

/*
	export: form
*/
// type StateLuxulForm = any;
// type PropsLuxulForm = {
// 	routes: [], // list of routes/urls/components from src/devices
// 	currentPath: {}, // window.location.pathname ... but more Reactive
// 	nav: {}, // window.store.unchangedv ... passed from NavConnected component below
// };
class LuxulForm extends React.Component {
	/*
		extend parent component by modifying its properties:
		set up ${this.state} of parent element
		prefix everything added to ${this} or ${this.state} with "luxulForm"
	*/
	constructor(props) {
		super(props);

		/*
			stateScope
			this.props.stateScope refers to ${this} of the parent/component which is importing LuxulForm
			remember, we can't refer to it as ${this} here because here, ${this} means LuxulForm. So, we use ${stateScope}
			to use this LuxulForm and LuxulInput components, must pass stateScope={this} to them
		*/
		var { stateScope } = this.props;

		/*
			state properties
		*/
		if (!stateScope.state) {
			stateScope.state = {};
		}

		// state (documented - maybe added by the user before including LuxulForm)
		stateScope.state.luxulFormValues =
			stateScope.state.luxulFormValues !== undefined ? stateScope.state.luxulFormValues : {};
		stateScope.state.luxulFormButtons =
			stateScope.state.luxulFormButtons !== undefined ? stateScope.state.luxulFormButtons : {};

		// state (secret - system use only)
		stateScope.state.luxulFormSubmitAttempted = false;
		stateScope.state.luxulFormSubmitting = false;
		stateScope.state.luxulFormChanged = false;
		stateScope.state.luxulFormConnectionFailed = false;
		stateScope.state.luxulFormInvalid = [];
		stateScope.state.luxulFormValuesOriginal = JSON.parse(
			JSON.stringify(stateScope.state.luxulFormValues)
		);

		/*
			non-state properties 
		*/

		// elements which have validation attribute will be added to this list
		stateScope.luxulFormElementsToValidate = {};

		// validate
		stateScope.luxulFormValidate = clearValidations => {
			var form = this.form;
			var event = {};
			var promise = new Promise((resolve, reject) => {
				// run through each validated field and check it
				for (let name in stateScope.luxulFormElementsToValidate) {
					event = {};
					if (stateScope.luxulFormElementsToValidate[name]) {
						let comp = stateScope.luxulFormElementsToValidate[name];
						event = { target: form[name] };
						if (event.target) {
							var invalid = comp.handleValidate({
								event,
								value: stateScope.state.luxulFormValues[name],
								clearValidations,
							});
							if (invalid) {
								reject(invalid);
							}
						}
					}
				}
				// all ok
				resolve(event, stateScope.state.luxulFormValues);
			});
			return promise;
		};

		// reset
		stateScope.luxulFormReset = () => {
			var { stateScope } = this.props;
			// scroll to top
			if (window.innerWidth <= 750) {
				// mobile - scroll body
				window.$('body').animate(
					{
						scrollTop: 0,
					},
					1000
				);
			} else {
				// desktop - scroll form
				window.$(this.form).animate(
					{
						scrollTop: 0,
					},
					1000
				);
			}
			// run through each validated field and check it (pass true to reset it!)
			stateScope.luxulFormValidate(true);
			// finally, reset state values
			stateScope.setState({
				luxulFormValues: JSON.parse(JSON.stringify(stateScope.state.luxulFormValuesOriginal)),
				luxulFormTouched: false,
				luxulFormChanged: false,
				luxulFormInvalid: [],
			});
		};
		stateScope.luxulFormReset();
	}

	/*
		LuxulForm private methods
	*/
	userScrolledY = form => {
		/* 
			on scroll, called from lifecycle methods
		*/
		if (form) {
			// container form is target
			if (form.target) {
				// so we can pass to this the form or the parent object of the form
				form = form.target;
			}
			// to show tip only when at the top...
			// adjust (form.offsetHeight + N) as the tolerance - don't show custom scrollbar and arrow when almost at the end of form - session can figure that out themselves
			if (form.scrollTop + form.offsetHeight + 30 > form.scrollHeight) {
				form.classList.remove('scrollDown');
			} else {
				form.classList.add('scrollDown');
			}
		}
	};

	/*
		LuxulForm lifecycle methods
	*/
	componentDidMount() {
		/* 
			on scroll 
		*/
		if (this.form) {
			setTimeout(() => {
				this.userScrolledY(this.form);
			}, 500);
			this.form.addEventListener('scroll', this.userScrolledY);
		}
	}
	componentWillMount() {
		this.props.stateScope._isMounted = true;
	}
	componentWillUnmount() {
		this.props.stateScope._isMounted = false;
		/* 
			on scroll 
		*/
		if (this.form) {
			this.form.removeEventListener('scroll', this.userScrolledY);
		}
	}

	componentDidUpdate() {
		const { stateScope } = this.props;
		stateScope.state.luxulFormInvalid.forEach((inputName, index, all) => {
			if (!this.form[inputName]) {
				stateScope.state.luxulFormInvalid.splice(index, 1);
			}
		});
	}

	render() {
		const { stateScope, onChange, onSubmit, children, className, ...input } = this.props;

		const onFormChange = function(event) {
			if (onChange) {
				onChange(event);
			}
		};

		const onFormSubmit = function(event) {
			// ui
			event.preventDefault();
			stateScope.setState({
				luxulFormSubmitting: true,
				luxulFormSubmitAttempted: true,
				luxulFormSuccess: false,
				luxulFormError: false,
			});
			setTimeout(
				function() {
					if (this._isMounted) {
						this.setState({
							luxulFormSubmitAttempted: false,
						});
					}
				}.bind(stateScope),
				5000
			);

			// validate each input - if fail, do not continue
			const promise = stateScope.luxulFormValidate();

			// return sucess or failed to callback
			if (onSubmit) {
				onSubmit(promise);
			}
		};

		const PrimaryButton = (function() {
			/* = false means button is turned off */
			if (stateScope.state.luxulFormButtons !== false) {
				if (
					/* not changed */
					stateScope.state.luxulFormButtons.unchanged !== false &&
					stateScope.state.luxulFormTouched &&
					!stateScope.state.luxulFormSubmitAttempted &&
					!stateScope.state.luxulFormChanged
				) {
					return (
						<LuxulButton className={'transparent success'} type="button">
							<b>
								{stateScope.state.luxulFormButtons.unchanged === undefined ||
								stateScope.state.luxulFormButtons.unchanged === true
									? 'Nothing Changed'
									: stateScope.state.luxulFormButtons.unchanged}
							</b>
						</LuxulButton>
					);
				} else if (
					/* loading */
					stateScope.state.luxulFormButtons.loading !== false &&
					stateScope.state.luxulFormLoading
				) {
					return (
						<LuxulButton className={'transparent error'} type="button">
							<b>Loading...</b>
						</LuxulButton>
					);
				} else if (
					/* invalid */
					stateScope.state.luxulFormButtons.invalid !== false &&
					stateScope.state.luxulFormChanged &&
					stateScope.state.luxulFormTouched &&
					stateScope.state.luxulFormInvalid.length > 0
				) {
					return (
						<LuxulButton className={'transparent error'} type="button">
							<b>
								{stateScope.state.luxulFormButtons.invalid === undefined ||
								stateScope.state.luxulFormButtons.invalid === true ? (
									<span>Form not valid. Please check fields highlighted red.</span>
								) : (
									stateScope.state.luxulFormButtons.invalid
								)}
							</b>
						</LuxulButton>
					);
				} else if (
					/* error */
					stateScope.state.luxulFormButtons.error !== false &&
					stateScope.state.luxulFormError &&
					stateScope.state.luxulFormSubmitAttempted
				) {
					return (
						<LuxulButton className={'transparent error'} type="button">
							<b>
								{stateScope.state.luxulFormButtons.error === undefined ||
								stateScope.state.luxulFormButtons.error === true
									? stateScope.state.luxulFormError ? stateScope.state.luxulFormError : 'Error!'
									: stateScope.state.luxulFormButtons.error}
							</b>
						</LuxulButton>
					);
				} else if (
					/* success */
					stateScope.state.luxulFormButtons.submit !== false
				) {
					return (
						<LuxulButton
							className={
								'' +
								(stateScope.state.luxulFormInvalid === undefined ||
								(!stateScope.state.luxulFormInvalid.length &&
									!stateScope.state.luxulFormSubmitting &&
									(stateScope.state.luxulFormChanged || !stateScope.state.luxulFormTouched))
									? ' primary'
									: '')
							}
							disabled={
								stateScope.state.luxulFormInvalid.length || stateScope.state.luxulFormSubmitting
							}
							type="submit"
						>
							<b>
								{stateScope.state.luxulFormButtons.submit === undefined ||
								stateScope.state.luxulFormButtons.submit === true
									? 'Save Changes'
									: stateScope.state.luxulFormButtons.submit}
							</b>
						</LuxulButton>
					);
				}
			}
		})();

		// console.log('LuxulForm state', JSON.stringify(stateScope.state, null, ' '));
		return (
			<Styled.FormScrollbars className="LuxulForm_customScrollbars">
				<Styled.Form
					{...input}
					innerRef={form => (this.form = form)}
					className={
						'LuxulForm' +
						(className ? ' ' + className : '') +
						(stateScope.state.luxulFormConnectionFailed ? ' connectionFailed' : '') +
						(stateScope.state.luxulFormLoading ? ' loading' : '') +
						(stateScope.state.luxulFormSubmitAttempted ? ' submitAttempted' : '') +
						(stateScope.state.luxulFormInvalid.length ? ' invalid' : '') +
						(stateScope.state.luxulFormSubmitting ? ' submitting' : '') +
						(stateScope.state.luxulFormTouched ? ' touched' : '') +
						(stateScope.state.luxulFormChanged ? ' changed' : '')
					}
					autoComplete="off"
					onSubmit={onFormSubmit}
					onChange={onFormChange}
					onBlur={onFormChange}
					style={{ overflowY: 'scroll' }}
				>
					{children}

					<div className="formSubmitSpacer">
						{/* this is to add space "behind" the floating buttons */}
					</div>

					<div className="formSubmit">
						{/* primary button */}
						{PrimaryButton}

						{/* reset button */}
						{stateScope.state.luxulFormButtons.reset !== false &&
							stateScope.state.luxulFormChanged &&
							JSON.stringify(stateScope.state.luxulFormValues) !==
								JSON.stringify(stateScope.state.luxulFormValuesOriginal) && (
								<LuxulButton className={''} type="button" onClick={stateScope.luxulFormReset}>
									<b>
										{stateScope.state.luxulFormButtons.reset === undefined ||
										stateScope.state.luxulFormButtons.reset === true
											? 'Reset'
											: stateScope.state.luxulFormButtons.reset}
									</b>
								</LuxulButton>
							)}
					</div>

					<LuxulButton
						className="clear scrollCue"
						type="button"
						innerRef={e => {
							stateScope.e = e;
						}}
						onClick={() => {
							window
								.$(stateScope.e.form)
								.animate({ scrollTop: stateScope.e.form.scrollHeight + 'px' }, 1000);
						}}
					>
						<b>
							<span className="fontIcon icon-carat_down" />
						</b>
					</LuxulButton>
				</Styled.Form>
			</Styled.FormScrollbars>
		);
	}
}

export default LuxulForm;
