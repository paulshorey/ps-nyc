/* core */
import React from 'react';
/* components */
import Box from 'components/box/Box';

/* form */
import { LuxulForm } from 'components/form/LuxulForm';

/*
	form
*/
class PageComponent extends React.Component {
	constructor() {
		super();
		this.state = {
			luxulFormValues: {
				ledStatus: '0',
			},
		};
	}

	render() {
		return (
			<Box box={{ title: this.props.page.title }}>
				<LuxulForm stateScope={this}>
					<div className="formSection">
						<fieldset className="info">
							<label className="">Server status:</label> <span>Connected</span>
						</fieldset>
					</div>

					<div className="formSection">
						<p style={{ textAlign: 'center' }}>
							<label className="">
								<button className="primary">
									<b>Check and Update</b>
								</button>
							</label>
						</p>
					</div>
				</LuxulForm>
			</Box>
		);
	}
}

export default PageComponent;
