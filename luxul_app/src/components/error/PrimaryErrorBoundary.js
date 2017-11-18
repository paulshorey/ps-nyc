// @flow
import React, { Component } from 'react';

type Props = {
	children: any,
};

type State = {
	hasError: boolean,
};

class PrimaryErrorBoundary extends Component<Props, State> {
	state = {
		hasError: false,
	};

	componentDidCatch(error: any, info: any) {
		this.setState(state => ({ ...state, hasError: true }));
	}

	render() {
		if (this.state.hasError) {
			return (
				<div style={{ margin: 20 }}>
					<br />
					<h3 style={{ color: 'red' }}>Sorry, something went wrong.</h3>
				</div>
			);
		} else {
			return this.props.children;
		}
	}
}

export default PrimaryErrorBoundary;
