import React from 'react';
import { Route, Switch, Redirect } from 'react-router-dom';
import Layout from 'components/layout/Layout';

/*
	list pages for <Nav /> and <Switch />
*/
const deviceInfo = {
	model: 'XWC-1000',
	firmware: 'abc-123',
};
const routes = [
	{
		title: 'Status',
		url: '/XWC1000/status',
		component: function() {
			return require('pages/status/Controller').default;
		},
		children: [
			{
				title: 'Controller',
				url: '/XWC1000/status/controller',
				component: function() {
					return require('pages/status/Controller').default;
				},
			},
			{
				title: 'AP',
				url: '/XWC1000/status/ap',
				component: function() {
					return require('pages/status/AP').default;
				},
			},
		],
	},
	{
		title: 'Profile Management',
		url: '/XWC1000/profiles',
		component: function() {
			return require('pages/status/Controller').default;
		},
		children: [
			{
				title: 'AP Management',
				url: '/XWC1000/profiles/ap_management',
				component: function() {
					return require('pages/status/AP').default;
				},
			},
			{
				title: 'AP Assignment',
				url: '/XWC1000/profiles/ap_assignment',
				component: function() {
					return require('pages/status/Controller').default;
				},
			},
			{
				title: 'SSID Management',
				url: '/XWC1000/profiles/ssid_management',
				component: function() {
					return require('pages/status/AP').default;
				},
			},
			{
				title: 'Wireless Settings',
				url: '/XWC1000/profiles/wireless_settings',
				component: function() {
					return require('pages/status/Controller').default;
				},
			},
		],
	},
	{
		title: 'VLAN',
		url: '/XWC1000/vlan',
		component: function() {
			return require('pages/vlan/VLAN').default;
		},
	},
	{
		title: 'Controller Settings',
		url: '/XWC1000/controller',
		component: function() {
			return require('pages/status/Controller').default;
		},
	},
];
routes.pageNotFound = {
	title: 'Page Not Found',
	component: () => {
		return require('pages/000/404').default;
	},
};

class XWC1000 extends React.Component {
	/*
		build list of <Route />s
	*/
	renderRoutes(routes) {
		const Routes = [];
		routes.forEach((route, index) => {
			/*
				first add children
			*/
			if (route.children) {
				route.children.forEach((route, subindex) => {
					Routes.push(
						<Route
							exact
							key={index.toString() + subindex.toString()}
							path={route.url}
							render={() => {
								var RouteComponent = route.component();
								return <RouteComponent {...this.props} page={route} />;
							}}
						/>
					);
				});
			}
			/*
				then add self
			*/
			if (route.component) {
				Routes.push(
					<Route
						exact
						key={index}
						path={route.url}
						render={() => {
							var RouteComponent = route.component();
							return <RouteComponent {...this.props} page={route} />;
						}}
					/>
				);
			}
		});
		/*
			return list of components
		*/
		return Routes;
	}

	render() {
		return (
			<Layout history={this.props.history} routes={routes} deviceInfo={deviceInfo}>
				{/* Link urls */}
				<Switch>
					{/* No url */}
					<Redirect exact from="/XWC1000" to="/XWC1000/status/controller" />
					{/* Auto-built device-specific urls */}
					{this.renderRoutes(routes)}
					{/* Default url: 404 */}
					<Route
						component={function() {
							var RouteComponent = routes.pageNotFound.component();
							return <RouteComponent {...this.props} page={routes.pageNotFound} />;
						}}
					/>
				</Switch>
			</Layout>
		);
	}
}
export default XWC1000;
