/*eslint no-unused-vars: 2*/
import React from 'react';

import LuxulInput from './LuxulInput';

import { _get_property } from '../lib/functions';

/*
	export: select
	inherited from LuxulInput
*/
class LuxulSelect extends LuxulInput {
	render() {
		var { stateScope, onChange, validations, value, options, children, ...input } = this.props;

		// ignore this >>>
		// need to declare above: onChange, validations, value, options
		// so they will not sometimes be part of the desctructured variable: ...input, also above
		if (onChange || validations || value || options) {
			/* can't silence Webpack React no-unused-vars warning, but these values must always be declared */
		}
		// <<< ignore this

		const formValue = _get_property(stateScope.state.luxulFormValues, input.name);

		return (
			<div
				className={
					'control LuxulInput LuxulSelect' +
					(this.state.invalid ? ' invalid' : '') +
					(this.state.touched ? ' touched' : '') +
					(this.state.changed ? ' changed' : '')
				}
			>
				<select
					{...input}
					value={formValue}
					onChange={this.handleChange}
					onBlur={this.handleValidate}
				>
					{children}
				</select>
				{(this.state.invalid || this.state.invalid === '') && (
					<div className="control_message invalid">{this.state.invalid}</div>
				)}
			</div>
		);
	}
}

export default LuxulSelect;
