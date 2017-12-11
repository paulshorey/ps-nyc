/* core */
import React from 'react';
/* components */
import Box from 'components/box/Box';
import Hint from 'components/hint/Hint';
import HintBox from 'components/hint/HintBox';
import {
	LuxulForm,
	LuxulInput,
	LuxulSelect,
	LuxulButton,
	validations,
} from 'components/form/LuxulForm';

/*
	form
*/
class PageComponent extends React.Component {
	constructor() {
		super();
		this.state = {
			luxulFormButtons: false
		};
	}

	render() {
		var showBox_edit = AP => {
			class PopupForm extends React.Component {
				constructor() {
					super();
					this.state = {
						luxulFormValues: {
							name: AP.name,
							mac: AP.mac,
							ip: AP.ip,
							software: AP.software,
							channel: AP.channel,
							status: AP.status,
						},
					};
				}
				render() {
					return (
						<Box box={{ title: 'Edit SSID:' }}>
							<LuxulForm onSubmit={() => {}} stateScope={this}>
								<div className="formSection">
									<fieldset className="info">
										<label className="">
											Name:{' '}
											<Hint
												title="Hint..."
												description={
													<span>
														<p>???</p>
													</span>
												}
											/>
										</label>
										<span>
											<LuxulInput
												stateScope={this}
												name="name"
												type="text"
												validations={[validations.required]}
											/>
										</span>
									</fieldset>
									<fieldset className="info">
										<label className="">
											Mac Address:{' '}
											<Hint
												title="Hint..."
												description={
													<span>
														<p>???</p>
													</span>
												}
											/>
										</label>
										<span>
											<LuxulInput
												stateScope={this}
												name="mac"
												type="text"
												validations={[validations.required]}
											/>
										</span>
									</fieldset>
									<fieldset className="info">
										<label className="">
											IP Address:{' '}
											<Hint
												title="Hint..."
												description={
													<span>
														<p>???</p>
													</span>
												}
											/>
										</label>
										<span>
											<LuxulInput
												stateScope={this}
												name="ip"
												type="text"
												validations={[validations.required]}
											/>
										</span>
									</fieldset>
									<fieldset className="info">
										<label className="">
											Software:{' '}
											<Hint
												title="Hint..."
												description={
													<span>
														<p>???</p>
													</span>
												}
											/>
										</label>
										<span>
											<LuxulInput
												stateScope={this}
												name="software"
												type="text"
												validations={[validations.required]}
											/>
										</span>
									</fieldset>
									<fieldset className="info">
										<label className="">
											Channel:{' '}
											<Hint
												title="Hint..."
												description={
													<span>
														<p>???</p>
													</span>
												}
											/>
										</label>
										<span>
											<LuxulInput
												stateScope={this}
												name="channel"
												type="text"
												validations={[validations.required]}
											/>
										</span>
									</fieldset>
									<fieldset className="info">
										<label className="">
											Status:{' '}
											<Hint
												title="Hint..."
												description={
													<span>
														<p>???</p>
													</span>
												}
											/>
										</label>
										<span>
											<LuxulSelect stateScope={this} name="status">
												<option value="online">Online</option>
												<option value="pending">Pending</option>
												<option value="offline">Offline</option>
											</LuxulSelect>
										</span>
									</fieldset>
								</div>
							</LuxulForm>
							<HintBox />
						</Box>
					);
				}
			}
			window.store.popup = { Box: <PopupForm /> };
		};

		var showBox_delete = AP => {
			class PopupForm extends React.Component {
				constructor() {
					super();
					this.state = {
						luxulFormValues: {
							confirm: false,
						},
						luxulFormButtons: {
							submit: false,
						},
					};
				}
				render() {
					return (
						<Box box={{ title: 'Edit SSID:' }}>
							<LuxulForm onSubmit={() => {}} stateScope={this}>
								<div className="formSection">
									<fieldset className="info">
										<label>Delete "{AP.name}"?</label>
									</fieldset>
								</div>

								<div className="formSubmit">
									<LuxulButton className="delete" type="submit">
										<b>Delete</b>
									</LuxulButton>
								</div>
							</LuxulForm>
							<HintBox />
						</Box>
					);
				}
			}
			window.store.popup = { Box: <PopupForm /> };
		};

		/* 
			raw data
			this format is only assumed - dummy data
			will have to redo this logic to filter the actual format
		*/
		var aps = [
			{
				name: 'XAP-1510 87:10',
				mac: 'A4:13:4E:37:87:10',
				ip: '192.168.0.10',
				software: 'XAP-1510-Z160920-1558',
				channel: '6, 153',
				status: 'offline',
			},
			{
				name: 'XYZ-1510 23:04',
				mac: 'C8:26:9R:35:23:04',
				ip: '192.168.0.10',
				software: 'XAP-1510-Z160920-1558',
				channel: '6, 153',
				status: 'pending',
			},
			{
				name: 'ABC-1510 23:11',
				mac: 'B3:75:2G:23:23:11',
				ip: '192.168.0.10',
				software: 'XAP-1510-Z160920-1558',
				channel: '6, 153',
				status: 'online',
			},
			{
				name: 'XYZ-1510 23:04',
				mac: 'C8:26:9R:35:23:04',
				ip: '192.168.0.10',
				software: 'XAP-1510-Z160920-1558',
				channel: '6, 153',
				status: 'pending',
			},
			{
				name: 'XAP-1510 87:10',
				mac: 'A4:13:4E:37:87:10',
				ip: '192.168.0.10',
				software: 'XAP-1510-Z160920-1558',
				channel: '6, 153',
				status: 'offline',
			},
		];
		var Rows = [];
		for (var i = 0; i < aps.length; i++) {
			const AP = aps[i];
			// var n = i+1;
			// var odd = n%2;
			Rows.push(
				<div className="formSection withHr" key={'aps' + i}>
					<h4>AP {i + 1}</h4>
					<fieldset className="info">
						<label className="">AP Name:</label> <span>{AP.name}</span>
					</fieldset>
					<fieldset className="info">
						<label className="">Mac Address:</label> <span>{AP.mac}</span>
					</fieldset>
					<fieldset className="info">
						<label className="">Channel:</label> <span>{AP.channel}</span>
					</fieldset>
					<fieldset className="info">
						<label className="">Status:</label>{' '}
						<span className={'status-' + AP.status}>
							<b>{AP.status}</b>
						</span>
					</fieldset>
					<fieldset className="info">
						<label className="" />{' '}
						<span>
							<LuxulButton
								type="button"
								className="small primary"
								onClick={() => {
									showBox_edit(AP);
								}}
							>
								<b>Modify</b>
							</LuxulButton>
							<LuxulButton
								type="button"
								className="small "
								onClick={() => {
									showBox_delete(AP);
								}}
							>
								<b>Delete</b>
							</LuxulButton>
						</span>
					</fieldset>
				</div>
			);
		}

		return (
			<Box box={{ title: this.props.page.title }}>
				<LuxulForm stateScope={this}>
					<div className="formSection">
						<fieldset className="info">
							<label className="">Profile Name:</label> <span>luxul</span>
						</fieldset>
					</div>

					{Rows}
				</LuxulForm>
			</Box>
		);
	}
}

export default PageComponent;
