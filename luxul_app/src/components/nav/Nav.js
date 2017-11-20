// @flow
import React, { Component } from 'react';
import { Link, NavLink } from 'react-router-dom';
import NavGroup from './NavGroup';
import * as Styled from './NavStyled';

type PropsHOC = {
	routes: [],
	currentPath: {},
	children: {},
};
type StateHOC = {
	nav: {},
};
type Props = {
	routes: [], // list of routes/urls/components from src/devices
	currentPath: {}, // window.location.pathname ... but more React'ive
	nav: {}, // window.store.nav ... passed from NavConnected component below
};

export class Nav extends Component<Props> {
	renderLinks = (links: any) => {
		return links.map((link, index) => {
			return (
				<NavLink
					key={link.url + index}
					className="title link"
					activeClassName="active"
					to={link.url}
				>
					<span className="fontIcon icon-navlink_dot" />
					<span>{link.title}</span>
				</NavLink>
			);
		});
	};

	renderNav() {
		const { routes, currentPath } = this.props;
		return routes.map((link, index) => {
			if (link.children) {
				return (
					<NavGroup key={link.title + index} title={link.title} currentPath={currentPath}>
						{this.renderLinks(link.children)}
					</NavGroup>
				);
			} else {
				return this.renderLinks([link]);
			}
		});
	}

	render() {
		return (
			<Styled.Nav className={'nav_left' + (this.props.nav.opened ? '' : ' closed')}>
				{this.renderNav()}

				<Link className="title link" to="/">
					<span className="fontIcon icon-navlink_dot" />
					<span>Logout</span>
				</Link>
			</Styled.Nav>
		);
	}
}

/*
	when {window.store.nav} changes, update {this.props.nav} in <Nav /> component above
*/
class NavConnected extends React.Component<PropsHOC, StateHOC> {
	state = {
		nav: window.store.nav,
	};
	componentWillMount() {
		window.store.watch('nav', (name, oldValue, value) => {
			this.setState({ [name]: value });
			return value;
		});
	}
	componentWillUnmount() {
		window.store.unwatch('nav');
	}
	render() {
		return <Nav {...this.props} nav={this.state.nav} />;
	}
}

export default NavConnected;
