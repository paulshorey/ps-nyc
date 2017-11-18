// @flow
import React, { Component } from 'react';

type Props = {
	title: string,
	currentPath: any,
	children: any,
};

type State = {
	isOpen: boolean,
};

class NavGroup extends Component<Props, State> {
	state = {
		isOpen: false,
	};

	checkUrls = () => {
		const urls = this.props.children.map((child, index) => {
			return child.props.to;
		});
		const currentPath = this.props.currentPath;
		const activeUrl = urls.includes(`${currentPath}`) ? true : false;
		activeUrl && this.setState({ isOpen: true });
		return activeUrl;
	};

	toggleOpen = () => {
		this.setState({ isOpen: !this.state.isOpen });
	};

	render() {
		const isOpen = this.state.isOpen;
		let isActive = false;
		if (!isOpen) {
			isActive = this.checkUrls();
		}
		return (
			<div className={'group' + (isOpen ? ' opened' : '') + (isActive ? ' active' : '')}>
				<div className={'title' + (isOpen ? ' active' : '')} onClick={this.toggleOpen}>
					<span className="fontIcon icon-navlink_plus" />
					<span className="fontIcon icon-navlink_minus" />
					<span>{this.props.title}</span>
				</div>
				<div className="children">{this.props.children}</div>
			</div>
		);
	}
}

export default NavGroup;
