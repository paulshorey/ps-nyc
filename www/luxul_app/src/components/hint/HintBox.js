/*eslint no-unused-vars: 2*/
import React from 'react';

import * as Styled from './HintBoxStyled';

/*
	export: hint tip
*/
class HintBox extends React.Component {
	render() {
		return (
			<Styled.HintBox
				className={
					'HintBox ' +
					(this.props.hintbox.title && this.props.hintbox.opened ? ' opened' : '') +
					(window.pageYOffset > 10 ? ' scrolled' : '')
				}
			>
				{this.props.hintbox && (
					<div>
						<div
							className="overlay"
							onClick={() => {
								window.store.hintbox = {};
							}}
						/>
						<div className="content">
							<span
								className="hintX fontIcon icon-cross"
								title="Close"
								onClick={() => {
									window.store.hintbox = {};
								}}
							/>
							<h4 className="hintTitle">{this.props.hintbox.title}</h4>
							{this.props.hintbox.description}
						</div>
					</div>
				)}
			</Styled.HintBox>
		);
	}
}

// connect global data
// when {window.store.hintbox} changes, update {this.state.hintbox}
class HintBoxConnected extends React.Component {
	constructor() {
		super();
		this.state = {
			hintbox: window.store.hintbox,
		};
	}
	componentWillMount() {
		window.store.watch('hintbox', (name, oldValue, value) => {
			this.setState({ [name]: value });
			return value || {};
		});
	}
	componentWillUnmount() {
		window.store.unwatch('hintbox');
	}
	render() {
		return <HintBox hintbox={this.state.hintbox} />;
	}
}

export default HintBoxConnected;
