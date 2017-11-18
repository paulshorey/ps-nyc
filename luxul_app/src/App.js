import React from 'react';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';
import Layout from 'components/layout/Layout';
import SpecificErrorBoundary from 'components/error/SpecificErrorBoundary';

setTimeout(function() {
	window.store.deviceInfo = {
		model: 'XWC1001',
		firmware: 'abc123',
	};
}, 100);

/*
	list pages for <Switch />
*/
var routes = [
	{
		url: '/XWC1001',
		component: function() {
			return require('devices/XWC1001').default;
		},
	},
	{
		url: '/XWC1000',
		component: function() {
			return require('devices/XWC1000').default;
		},
	},
];
routes.login = {
	url: '/login',
	component: function() {
		return require('pages/session/PageLogin').default;
	},
};

class App extends React.Component {
	render() {
		const { ubus } = this.props;

		/*
			build list of <Route />s
		*/
		var Routes = [];
		routes.forEach(function(route, index) {
			if (route.component) {
				Routes.push(
					<Route
						key={index}
						path={route.url}
						render={props => {
							var RouteComponent = route.component();
							return <RouteComponent history={props.history} ubus={ubus} page={route} />;
						}}
					/>
				);
			}
		});

		/*
			render <Route />s
		*/
		return (
			<SpecificErrorBoundary location="App.js">
				<Router>
					<Switch>
						{/*
						Auto-built urls
						*/}
						{Routes}

						{/*
						Default url: login
						*/}
						<Route
							render={props => {
								var RouteComponent = routes.login.component();
								return (
									<Layout history={props.history}>
										<RouteComponent
											history={props.history}
											ubus={this.props.ubus}
											page={routes.login}
										/>
									</Layout>
								);
							}}
						/>
					</Switch>
				</Router>
			</SpecificErrorBoundary>
		);
	}
}

export default App;
