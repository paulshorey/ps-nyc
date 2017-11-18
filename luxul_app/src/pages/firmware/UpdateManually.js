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
							<label className="">Select File:</label>{' '}
							<span>
								<button className="primary">
									<b>Choose File</b>
								</button>
							</span>
						</fieldset>
						<fieldset className="info" style={{ opacity: '0.5' }}>
							<label className="">Start Update:</label>{' '}
							<span>
								<button className="primary">
									<b>Update</b>
								</button>
							</span>
						</fieldset>
					</div>
				</LuxulForm>
			</Box>
		);
	}
}

export default PageComponent;
