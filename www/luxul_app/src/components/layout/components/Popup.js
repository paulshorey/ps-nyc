import React from 'react';

import * as Styled from './PopupStyled';

// only local data
// {this.state} and {this.props}
class Popup extends React.Component {
	render() {
		const { popup = {} } = this.props;

		return (
			<Styled.Popup className={'popupBox ' + (popup.opened ? ' opened' : '')}>
				<div
					className="popupBox_overlay"
					onClick={() => {
						window.store.popup = {};
					}}
				/>
				<div className="popupBox_content">
					<div
						className="popupBox_close"
						onClick={() => {
							window.store.popup = {};
						}}
					>
						<span className="fontIcon icon-cross" title="Close" />
					</div>

					{popup.Box || null}
				</div>
			</Styled.Popup>
		);
	}
}

// connect global data
// when {window.store.popup} changes, update {this.state.popup}
class PopupConnected extends React.Component {
	state = {
		popup: window.store.popup,
	};
	componentWillMount() {
		window.store.watch('popup', (name, oldValue, value) => {
			this.setState({ [name]: value });
			return value;
		});
	}
	componentWillUnmount() {
		window.store.unwatch('popup');
	}
	render() {
		return <Popup popup={this.state.popup} />;
	}
}

export default PopupConnected;
