/* core */
import React from 'react';
/* components */
import Box from 'components/box/Box';
import Hint from 'components/hint/Hint';
import HintBox from 'components/hint/HintBox';
import { LuxulForm, LuxulInput, LuxulSelect, validations } from 'components/form/LuxulForm';

/*
	form
*/
class PageComponent extends React.Component {
	constructor() {
		super();
		this.state = {
			luxulFormValues: {
				lanIP: '192.168.0.19',
				lanSubnet: '255.255.255.0',
				lanGateway: '192.168.0.1',
				lanPrimaryDNS: '208.67.222.222',
				lanSecondaryDNS: '8.8.8.8',
			},
			luxulFormButtons: {
				submit: 'Apply',
			},
		};
	}

	render() {
		return (
			<Box box={{ title: this.props.page.title }}>
				<LuxulForm stateScope={this}>
					<div className="formSection">
						<fieldset>
							<label className="green">
								IP Address:{' '}
								<Hint
									title="IP Address"
									description={
										<span>
											<p>
												Set the IP Address for the Wireless Controller. This address is used to
												access this web configuration. It must be unique among all devices on the
												network.
											</p>
											<p>The default IP Address for the XWC1000 is: 192.168.0.19</p>
										</span>
									}
								/>
							</label>
							<LuxulInput
								stateScope={this}
								name="lanIP"
								type="text"
								placeholder="0.0.0.0"
								validations={[validations.required, validations.ipv4]}
							/>
						</fieldset>

						<fieldset>
							<label className="green">
								Subnet Mask:{' '}
								<Hint
									title="IP Address"
									description={
										<span>
											<p>The default subnet mask is 255.255.255.0 </p>
											<p>
												If connected to a network with different subnets or when using an IP Address
												range other than 192.168.*.* the Subnet Mask must be changed as appropriate.
											</p>
											<p>
												The Controller subnet has changed. The session client device IP address must
												be changed to the same subnet as the Controller to complete the Controller
												Setup Wizard.
											</p>
										</span>
									}
								/>
							</label>
							<LuxulSelect
								stateScope={this}
								name="lanSubnet"
								validations={[validations.required, validations.ipv4]}
							>
								<option value="255.255.255.0">255.255.255.0</option>
								<option value="255.255.0.0">255.255.0.0</option>
								<option value="255.0.0.0">255.0.0.0</option>
								<option value="255.255.128.0">255.255.128.0</option>
								<option value="255.255.192.0">255.255.192.0</option>
								<option value="255.255.224.0">255.255.224.0</option>
								<option value="255.255.240.0">255.255.240.0</option>
								<option value="255.255.248.0">255.255.248.0</option>
								<option value="255.255.252.0">255.255.252.0</option>
								<option value="255.255.254.0">255.255.254.0</option>
							</LuxulSelect>
						</fieldset>

						<fieldset>
							<label className="green">
								Default Gateway:{' '}
								<Hint
									title="Default Gateway"
									description={
										<span>
											<p>
												The Default Gateway is the IP Address of the router that connects the local
												network to the Internet or to another network.
											</p>
											<p>
												The gateway IP address is needed to allow the Controller access to the
												internet. The Controller will check for firmware updates (for both the
												Controller and all Access Points) and access a network time server (NTS),
												used to date/time stamp log files.
											</p>
										</span>
									}
								/>
							</label>
							<LuxulInput
								stateScope={this}
								name="lanGateway"
								type="text"
								placeholder="0.0.0.0"
								validations={[validations.required, validations.ipv4]}
							/>
						</fieldset>

						<fieldset>
							<label className="green">
								Primary DNS:{' '}
								<Hint
									title="Primary DNS"
									description={
										<span>
											<p>
												The Controller requires a valid Domain Name Service (DNS). Please use the
												default address of 208.67.222.222 or enter a valid DNS of your choice.
											</p>
										</span>
									}
								/>
							</label>
							<LuxulInput
								stateScope={this}
								name="lanPrimaryDNS"
								type="text"
								placeholder="0.0.0.0"
								validations={[validations.required, validations.ipv4]}
							/>
						</fieldset>

						<fieldset>
							<label className="green">
								Secondary DNS:{' '}
								<Hint
									title="Secondary DNS"
									description={
										<span>
											<p>
												Although not required, you may enter a secondary or alternative DNS. If the
												primary DNS is not available, the Controller will use the secondary option.
												Use the default address of 8.8.8.8 or enter a valid DNS of your choice.
											</p>
										</span>
									}
								/>
							</label>
							<LuxulInput
								stateScope={this}
								name="lanSecondaryDNS"
								type="text"
								placeholder="0.0.0.0"
								validations={[validations.ipv4]}
							/>
						</fieldset>
					</div>
				</LuxulForm>
				<HintBox />
			</Box>
		);
	}
}

export default PageComponent;
