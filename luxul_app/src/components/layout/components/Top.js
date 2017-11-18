import React from 'react';
import Box from 'components/box/Box';

import * as Styled from './TopStyled';
import SpecificErrorBoundary from 'components/error/SpecificErrorBoundary';

// type Props = {
// 	deviceInfo: {
// 		model: string,
// 		firmware: string,
// 	}, // from src/devices ... model name, firmware number, etc
// };
class Top extends React.Component {
	render() {
		const { deviceInfo } = this.props;
		if (deviceInfo) {
			var DeviceInfo = (
				<Box box={{ title: 'New Luxul Product', theme: 'global' }}>
					<div className="form">
						<p>Model #: {deviceInfo.model}</p>
						<p>Firmware #: {deviceInfo.firmware}</p>
					</div>
				</Box>
			);

			var Details = (
				<Styled.Details
					onClick={() => {
						window.store.side = { Box: DeviceInfo };
					}}
				>
					<span className="link">
						<span className="title" style={{ textIndent: '-1.5px', paddingTop: '0.1rem' }}>
							{/*<span className="fontIcon icon-carat_down" style={{color:"rgba(255, 255, 255, .3)"}} /> */}
							{deviceInfo.model}
						</span>
						<span className="text" style={{ textIndent: '-1px' }}>
							Firmware: {deviceInfo.firmware}
						</span>
					</span>
					<span className="fontIcon icon-navlink_info" />
				</Styled.Details>
			);
		}

		return (
			<SpecificErrorBoundary location="Top.js">
				<Styled.Top>
					<div>
						<Styled.Hamburger
							id="Hamburger"
							onClick={event => {
								if (window.store.nav.opened) {
									document.getElementById('Hamburger').classList.remove('opened');
								} else {
									document.getElementById('Hamburger').classList.add('opened');
								}
								window.store.nav = { opened: !window.store.nav.opened };
							}}
						>
							<div className="hamburger-icon">
								<div className="hamburger-centered">
									<div className="hamburger-top" />
									<div className="hamburger-middle" />
									<div className="hamburger-bottom" />
								</div>
							</div>
						</Styled.Hamburger>

						<Styled.Logo>
							<img src="/branding/logo/logo_white.svg" alt="LUXUL" />
						</Styled.Logo>

						{Details || null}
					</div>
				</Styled.Top>
			</SpecificErrorBoundary>
		);
	}
}

// connect global data
// when {window.store.top} changes, update {this.state.top}
class TopConnected extends React.Component {
	state = {
		deviceInfo: window.store.deviceInfo,
	};
	componentWillMount() {
		window.store.watch('deviceInfo', (name, oldValue, value) => {
			this.setState({ [name]: value });
			return value;
		});
	}
	componentWillUnmount() {
		window.store.unwatch('deviceInfo');
	}
	render() {
		return <Top deviceInfo={this.state.deviceInfo} />;
	}
}

export default TopConnected;
