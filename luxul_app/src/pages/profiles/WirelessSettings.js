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
				profileName: 'luxul',
				ledStatus: 'on',
				channel24Width: '20MHz',
				channel24: '6',
			},
			luxulFormButtons: {
				submit: 'Apply',
			},
		};
	}

	render() {
		return (
			<Box box={{ title: this.props.page.title }}>
				<LuxulForm onSubmit={() => {}} stateScope={this}>
					<div className="formSection">
						<h4>Wireless Settings</h4>
						<fieldset className="info">
							<label className="">
								Profile Name:{' '}
								<Hint
									title="Wireless Profile"
									description={
										<span>
											<p>
												Enter the name you'd like to assign to the Profile (i.e. Default Profile or
												Building Lobby or Warehouse, etc.)
											</p>
											<p>
												The Profile Name is case sensitive and must consist of 2-32 alphanumeric
												characters and/or spaces
											</p>
										</span>
									}
								/>
							</label>
							<span>
								<LuxulInput
									stateScope={this}
									name="profileName"
									type="text"
									validations={[validations.required]}
								/>
							</span>
						</fieldset>
						<fieldset className="info">
							<label className="">
								LED Status:{' '}
								<Hint
									title="LED Status"
									description={
										<span>
											<p>
												LED status allows the session to turn the external LEDs off if desired. The
												LEDs are on by default for ease of setup.
											</p>
										</span>
									}
								/>
							</label>
							<span>
								<LuxulSelect stateScope={this} name="ledStatus">
									<option value="1">ON</option>
									<option value="0">OFF</option>
								</LuxulSelect>
							</span>
						</fieldset>
					</div>

					<div className="formSection">
						<h4>2.4GHz Options</h4>
						<fieldset className="info">
							<label className="">
								Channel Width:{' '}
								<Hint
									title="Channel Width"
									description={
										<span>
											<p>Select the channel width for the device.</p>
											<p>20MHz - Standard channel width for wireless devices.</p>
											<p>
												20/40MHz - Allow devices which support 40MHz channel width to connect
												alongside legacy devices which only support 20MHz channels. 40MHz channels
												provide higher bandwidth at the expense of additional congestion of the
												wireless spectrum for neighboring devices. May cause compatibility issues
												with some client devices.
											</p>
										</span>
									}
								/>
							</label>
							<span>
								<LuxulSelect stateScope={this} name="channel24Width">
									<option value="20Mhz">20Mhz</option>
									<option value="20/40Mhz auto">20/40Mhz auto</option>
								</LuxulSelect>
							</span>
						</fieldset>
						<fieldset className="info">
							<label className="">
								Channel:{' '}
								<Hint
									title="Channel"
									description={
										<span>
											<p>Select the channel for the 2.4GHz band to operate in.</p>
											<p>
												If 20/40MHz channel width is selected (in the Wireless Settings section),
												you must select both a primary channel and a secondary offset (Upper or
												Lower). Legacy 20MHz devices will use only the primary channel. Newer 40MHz
												devices will span both the primary and secondary channels.
											</p>
										</span>
									}
								/>
							</label>
							<span>
								<LuxulSelect stateScope={this} name="channel24">
									<option value="6">6</option>
									<option value="7">7</option>
								</LuxulSelect>
							</span>
						</fieldset>
					</div>

					<div className="formSection">
						<h4>5GHz 11n</h4>
						<fieldset className="info">
							<label className="">
								Channel Width:{' '}
								<Hint
									title="Channel Width"
									description={
										<span>
											<p>Select the channel width for the device.</p>
											<p>20MHz - Standard channel width for wireless devices.</p>
											<p>
												20/40MHz - Allow devices which support 40MHz channel width to connect
												alongside legacy devices which only support 20MHz channels. 40MHz channels
												provide higher bandwidth at the expense of additional congestion of the
												wireless spectrum for neighboring devices. May cause compatibility issues
												with some client devices.
											</p>
										</span>
									}
								/>
							</label>
							<span>
								<LuxulSelect stateScope={this} name="channel24Width">
									<option value="20Mhz">20Mhz</option>
									<option value="20/40Mhz">20/40Mhz</option>
								</LuxulSelect>
							</span>
						</fieldset>
						<fieldset className="info">
							<label className="">
								Channel:{' '}
								<Hint
									title="Channel"
									description={
										<span>
											<p>Select the channel for the 2.4GHz band to operate in.</p>
											<p>
												If 20/40MHz channel width is selected (in the Wireless Settings section),
												you must select both a primary channel and a secondary offset (Upper or
												Lower). Legacy 20MHz devices will use only the primary channel. Newer 40MHz
												devices will span both the primary and secondary channels.
											</p>
										</span>
									}
								/>
							</label>
							<span>
								<LuxulSelect stateScope={this} name="channel24">
									<option value="153">153</option>
									<option value="154">154</option>
									<option value="155">155</option>
									<option value="156">156</option>
								</LuxulSelect>
							</span>
						</fieldset>
					</div>

					<div className="formSection">
						<h4>5GHz 11AC</h4>
						<fieldset className="info">
							<label className="">
								Channel Width:{' '}
								<Hint
									title="Channel Width"
									description={
										<span>
											<p>Select the channel width for the device.</p>
											<p>20MHz - Standard channel width for wireless devices.</p>
											<p>
												20/40MHz - Allow devices which support 40MHz channel width to connect
												alongside legacy devices which only support 20MHz channels. 40MHz channels
												provide higher bandwidth at the expense of additional congestion of the
												wireless spectrum for neighboring devices. May cause compatibility issues
												with some client devices.
											</p>
										</span>
									}
								/>
							</label>
							<span>
								<LuxulSelect stateScope={this} name="channel24Width">
									<option value="20Mhz">20Mhz</option>
									<option value="20/40Mhz">20/40Mhz</option>
									<option value="20/40/80Mhz">20/40/80Mhz</option>
								</LuxulSelect>
							</span>
						</fieldset>
						<fieldset className="info">
							<label className="">
								Channel:{' '}
								<Hint
									title="Channel"
									description={
										<span>
											<p>Select the channel for the 2.4GHz band to operate in.</p>
											<p>
												If 20/40MHz channel width is selected (in the Wireless Settings section),
												you must select both a primary channel and a secondary offset (Upper or
												Lower). Legacy 20MHz devices will use only the primary channel. Newer 40MHz
												devices will span both the primary and secondary channels.
											</p>
										</span>
									}
								/>
							</label>
							<span>
								<LuxulSelect stateScope={this} name="channel24">
									<option value="40">40</option>
									<option value="153">153</option>
								</LuxulSelect>
							</span>
						</fieldset>
					</div>

					<p>&nbsp;</p>
					<p>&nbsp;</p>
				</LuxulForm>
				<HintBox />
			</Box>
		);
	}
}

export default PageComponent;
