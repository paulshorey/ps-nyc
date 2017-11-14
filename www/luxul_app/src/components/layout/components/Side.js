import React from 'react';

import * as Styled from './SideStyled';

// only local data
// {this.state} and {this.props}
class Side extends React.Component {
	render() {
		const { side = {} } = this.props;

		return (
			<Styled.Side className={'sideBox ' + (side.opened ? ' opened' : '')}>
				<div
					className="sideBox_overlay"
					onClick={() => {
						window.store.side = {};
					}}
				/>
				<div className="sideBox_content">
					<div
						className="sideBox_close"
						onClick={() => {
							window.store.side = {};
						}}
					>
						<span className="fontIcon icon-cross" title="Close" />
					</div>

					{side.Box || null}
				</div>
			</Styled.Side>
		);
	}
}

// connect global data
// when {window.store.side} changes, update {this.state.side}
class SideConnected extends React.Component {
	state = {
		side: window.store.side,
	};
	componentWillMount() {
		window.store.watch('side', (name, oldValue, value) => {
			this.setState({ [name]: value });
			return value;
		});
	}
	componentWillUnmount() {
		window.store.unwatch('side');
	}
	render() {
		return <Side side={this.state.side} />;
	}
}

export default SideConnected;
