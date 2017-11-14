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
			var n = i + 1;
			// var odd = n%2;
			Rows.push(
				<div className="formSection" key={'aps' + i}>
					<h4>AP {n}</h4>
					<fieldset className="info">
						<label className="">AP Name:</label> <span>{aps[i].name}</span>
					</fieldset>
					<fieldset className="info">
						<label className="">Mac Address:</label> <span>{aps[i].mac}</span>
					</fieldset>
					<fieldset className="info">
						<label className="">IP Address:</label> <span>{aps[i].ip}</span>
					</fieldset>
					<fieldset className="info">
						<label className="">Software Version:</label> <span>{aps[i].software}</span>
					</fieldset>
					<fieldset className="info">
						<label className="">Status:</label>{' '}
						<span className={'status-' + aps[i].status}>
							<b>{aps[i].status}</b>
						</span>
					</fieldset>
				</div>
			);
		}

		return (
			<Box box={{ title: this.props.page.title }}>
				<LuxulForm stateScope={this}>{Rows}</LuxulForm>
			</Box>
		);
	}
}

export default PageComponent;
