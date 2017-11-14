/* core */
import React from 'react';
/* components */
import Box from 'components/box/Box';
/* forms */
import { LuxulForm, LuxulInput, LuxulToggle } from 'components/form/LuxulForm';

/*
	form
*/
class PageComponent extends React.Component {
	constructor() {
		super();
		this.state = {
			luxulFormValues: {
				vlanTaggingOptions: false,
				vlan24Ghz: 1,
				vlan50Ghz: 1,
			},
			luxulFormButtons: {
				submit: 'Apply',
			},
		};
	}

	render() {
		var MoreFormSections = (
			<div>
				<div className="formSection withHr">
					<h4>2.4GHz VLAN</h4>
					<fieldset className="info">
						<label className="">SSID</label> <span>VLAN ID (1-4080)</span>
					</fieldset>
					<fieldset className="info">
						<label className="">luxul-2G</label>{' '}
						<span>
							<LuxulInput stateScope={this} name="vlan24Ghz" type="text" />
						</span>
					</fieldset>
				</div>
				<div className="formSection withHr">
					<h4>5GHz VLAN</h4>
					<fieldset className="info">
						<label className="">SSID</label>
						<span>VLAN ID (1-4080)</span>
					</fieldset>
					<fieldset className="info">
						<label className="">luxul-5G</label>
						<span>
							<LuxulInput stateScope={this} name="vlan50Ghz" type="text" />
						</span>
					</fieldset>
				</div>
			</div>
		);

		return (
			<Box box={{ title: this.props.page.title }}>
				<LuxulForm onSubmit={() => {}} stateScope={this}>
					<div className="formSection">
						<h4>VLAN Tagging for Virtual SSIDs</h4>
						<fieldset style={{ paddingLeft: '0' }}>
							<LuxulToggle
								stateScope={this}
								name="vlanTaggingOptions"
								labelOn="Enabled"
								labelOff="Disabled (default) "
							/>
						</fieldset>
					</div>

					{this.state.luxulFormValues.vlanTaggingOptions && MoreFormSections}

					<p>&nbsp;</p>
				</LuxulForm>
			</Box>
		);
	}
}

export default PageComponent;
