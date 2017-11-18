/* core */
import React from 'react';
/* components */
import Box from 'components/box/Box';

/* forms */
import { LuxulForm, LuxulInput, validations } from 'components/form/LuxulForm';

/*
	form
*/
class PageComponent extends React.Component {
	constructor() {
		super();
		this.state = {
			luxulFormValues: {
				password1: '',
				password2: '',
			},
		};
	}

	render() {
		return (
			<Box box={{ title: this.props.page.title }}>
				<LuxulForm stateScope={this}>
					<div className="formSection">
						<fieldset className="info">
							<label className="">Password:</label>
							<span>
								<LuxulInput
									stateScope={this}
									name="password1"
									type="password"
									validations={[validations.required]}
								/>
							</span>
						</fieldset>
						<fieldset className="info">
							<label className="">Confirm Password:</label>
							<span>
								<LuxulInput
									stateScope={this}
									name="password1"
									type="password"
									validations={[validations.required]}
								/>
							</span>
						</fieldset>
					</div>

					<p>&nbsp;</p>
				</LuxulForm>
			</Box>
		);
	}
}

export default PageComponent;
