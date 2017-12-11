/* core */
import React from 'react';
/* components */
import Box from 'components/box/Box';

import { LuxulForm /*, LuxulSelect, LuxulInput, validations*/ } from 'components/form/LuxulForm';

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
			luxulFormButtons: false
		};
	}

	render() {
		return (
			<Box box={{ title: this.props.page.title }}>
				<LuxulForm stateScope={this}>
					<div className="formSection">
						<h4>System Information</h4>

						<fieldset className="info">
							<label className="">Firmware Version</label> <span>5.0.6</span>
						</fieldset>
						<fieldset className="info">
							<label className="">Hardware Model</label> <span>XWC-1000</span>
						</fieldset>
						<fieldset className="info">
							<label className="">Hardware Version</label> <span>v1</span>
						</fieldset>
						<fieldset className="info">
							<label className="">Up Time</label> <span>84d 2h 52m</span>
						</fieldset>
					</div>

					<div className="formSection">
						<h4>Ethernet Settings</h4>

						<fieldset className="info">
							<label className="">IP Address</label> <span>192.168.0.19</span>
						</fieldset>
						<fieldset className="info">
							<label className="">Subnet Mask</label> <span>255.255.255.0</span>
						</fieldset>
						<fieldset className="info">
							<label className="">Primary DNS</label> <span>208.67.222.222</span>
						</fieldset>
						<fieldset className="info">
							<label className="">Secondary DNS</label> <span>8.8.8.8</span>
						</fieldset>
						<fieldset className="info">
							<label className="">Mac Address</label> <span>A4:13:4E:24:59:CB</span>
						</fieldset>
					</div>
				</LuxulForm>
			</Box>
		);
	}
}

export default PageComponent;
