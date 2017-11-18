import React from 'react';
import ReactDOM from 'react-dom';
import { BrowserRouter as Router, withRouter } from 'react-router-dom';
import theme from 'window/theme.js';
import Nav from '../Nav';

const routes = [
	{
		title: 'Status',
		url: '/XWC1000/status',
		children: [
			{ title: 'Controller', url: '/XWC1000/status/controller' },
			{ title: 'AP', url: '/XWC1000/status/ap' },
		],
	},
	{
		title: 'Profile Management',
		url: '/XWC1000/profiles',
		children: [
			{ title: 'AP Management', url: '/XWC1000/profiles/ap_management' },
			{ title: 'AP Assignment', url: '/XWC1000/profiles/ap_assignment' },
			{ title: 'SSID Management', url: '/XWC1000/profiles/ssid_management' },
			{ title: 'Wireless Settings', url: '/XWC1000/profiles/wireless_settings' },
		],
	},
	{ title: 'VLAN', url: '/XWC1000/vlan' },
	{ title: 'Controller Settings', url: '/XWC1000/controller' },
];

const history = [
	{
		title: 'Status',
		url: '/XWC1000/status',
		children: [
			{ title: 'Controller', url: '/XWC1000/status/controller' },
			{ title: 'AP', url: '/XWC1000/status/ap' },
		],
	},
	{
		title: 'Profile Management',
		url: '/XWC1000/profiles',
		children: [
			{ title: 'AP Management', url: '/XWC1000/profiles/ap_management' },
			{ title: 'AP Assignment', url: '/XWC1000/profiles/ap_assignment' },
			{ title: 'SSID Management', url: '/XWC1000/profiles/ssid_management' },
			{ title: 'Wireless Settings', url: '/XWC1000/profiles/wireless_settings' },
		],
	},
	{ title: 'VLAN', url: '/XWC1000/vlan' },
	{ title: 'Controller Settings', url: '/XWC1000/controller' },
];

it('renders without crashing', () => {
	const div = document.createElement('div');

	ReactDOM.render(
		<Router>
			<Nav
				history={history}
				routes={routes}
				nav={window.store.opened}
				currentPath="/XWC1000/profiles/ap_management"
			/>
		</Router>,
		div
	);
});

test('theme snapshot is correct', () => {
	expect(theme).toMatchSnapshot();
});
