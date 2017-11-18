/* core */
import React from 'react';
/* components */
import Box from 'components/box/Box';

/* forms */
import { LuxulForm } from 'components/form/LuxulForm';

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
							<label className="">Restore Factory Defaults:</label>
							<span>
								<button className="warn inline">
									<b>Reset All Settings</b>
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
