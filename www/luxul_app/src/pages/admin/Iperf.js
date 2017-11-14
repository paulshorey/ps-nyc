/* core */
import React from 'react';
/* components */
import Box from 'components/box/Box';

/* forms */
import { LuxulForm, LuxulSelect } from 'components/form/LuxulForm';

/*
	form
*/
class PageComponent extends React.Component {
	constructor() {
		super();
		this.state = {
			luxulFormValues: {
				ledStatus: '1',
			},
		};
	}

	render() {
		return (
			<Box box={{ title: this.props.page.title }}>
				<LuxulForm stateScope={this}>
					<div className="formSection">
						<fieldset className="info">
							<label className="">Status:</label> <span>Not Running</span>
						</fieldset>
						<fieldset className="info">
							<label className="">Run for:</label>
							<span>
								<LuxulSelect stateScope={this} name="ledStatus">
									<option value="1">1 hour</option>
									<option value="2">2 hours</option>
									<option value="3">3 hours</option>
								</LuxulSelect>
							</span>
						</fieldset>
						<fieldset className="info">
							<label className="" />
							<span>
								<button className="primary">
									<b>Start Iperf Server</b>
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
