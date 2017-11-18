/*eslint no-unused-vars: 2*/
import React from 'react';

import LuxulInput from './LuxulInput';

import { _get_property } from '../lib/functions';

/*
	export: toggle
	inherited from LuxulInput
*/
class LuxulToggle extends LuxulInput {
	render() {
		var {
			stateScope,
			onChange,
			onBlur,
			validations,
			value,
			options,
			checked,
			toggled,
			labelOn,
			labelOff,
			...input
		} = this.props;

		// ignore this >>>
		// need to declare above: onChange, validations, value, options, checked, toggled
		// so they will not sometimes be part of the desctructured variable: ...input, also above
		if (onChange || onBlur || validations || value || options || checked || toggled) {
		} /* can't silence Webpack React no-unused-vars warning, but these values must always be declared */
		// <<< ignore this

		var handleChange = event => {
			var value = event.target.checked;
			this.handleChange(event, value);
			if (onChange) {
				// onChange(event, value);
			}
		};
		var handleBlur = event => {
			var value = event.target.checked;
			this.handleValidate({ event, value });
			if (onBlur) {
				// onChange(event, value);
			}
		};

		const formValue = _get_property(stateScope.state.luxulFormValues, input.name);

		return (
			<div
				className={
					'control LuxulInput LuxulToggle' +
					(this.state.invalid ? ' invalid' : '') +
					(this.state.touched ? ' touched' : '') +
					(this.state.changed ? ' changed' : '')
				}
			>
				<label className="toggle">
					{labelOff && <span className="labelOff">{labelOff}</span>}
					<input
						type="checkbox"
						{...input}
						checked={formValue || false}
						value={true}
						onChange={handleChange}
						onBlur={handleBlur}
					/>
					<span className="lever" />
					{labelOn && <span className="labelOn">{labelOn}</span>}
				</label>
				{(this.state.invalid || this.state.invalid === '') && (
					<div className="control_message invalid">{this.state.invalid}</div>
				)}
			</div>
		);
	}
}

export default LuxulToggle;
