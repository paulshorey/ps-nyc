// @flow
import React, { Component } from 'react';
import * as Styled from './MessageStyled';

type Props = {
	message: any,
};

type PropsHOC = {
	routes: [],
	currentPath: {},
	children: {},
};
type StateHOC = {
	message: any,
};

// only local data
// {this.state} and {this.props}
export class Message extends Component<Props> {
	render() {
		const { message } = this.props;

		// timeout
		// if expires in next 5 seconds (meaning it has not been extended), only expires if its not an error (errors stay up until closed or navigated away from)
		// errors stay open, until manually closed
		if (
			message.opened &&
			(message.type === 'success' || message.type === 'notice' || !message.type)
		) {
			setTimeout(() => {
				window.store.message = {};
			}, 5000);
		}

		// content
		let MessageSupportDetails;
		if (message.supportDetails) {
			MessageSupportDetails = [];
			if (typeof message.supportDetails === 'object') {
				for (let i in message.supportDetails) {
					if (message.supportDetails[i]) {
						MessageSupportDetails.push(
							<div key={'supDeets' + i}>
								{i}: {message.supportDetails[i]}
							</div>
						);
					}
				}
			}
		}
		let MessageSupport;
		if (message.support) {
			MessageSupport = [];
			if (typeof message.support === 'object') {
				let bullet = 1;
				for (let i in message.support) {
					if (message.support[i]) {
						MessageSupport.push(
							<div key={'sup' + i}>
								<span dangerouslySetInnerHTML={{ __html: message.support[i] }} />{' '}
								{MessageSupportDetails && bullet === Object.keys(message.support).length ? (
									<span className="more">...&#9662;</span>
								) : (
									''
								)}
							</div>
						);
					}
					bullet++;
				}
			}
		}
		let MessageTitle = [];
		MessageTitle.push(
			<div key="messtitle">
				{message.title || message.message || <span>&nbsp;</span>}{' '}
				{MessageSupport ? <span className="more">...&#9662;</span> : ''}
			</div>
		);

		// open
		return (
			<Styled.Message>
				<div className="messages_container">
					<div className="messages_content">
						{/* this has so many divs so that you can put multiple <div className="message" /> into <div className="messages_content" />, except we're not doing that right now, but maybe later */}
						<div
							className={
								'message' +
								(message.opened ? ' opened' : '') +
								(message.type ? ' theme_' + message.type : '')
							}
							onMouseEnter={() => {}}
						>
							{/* must render <div className="message_content" /> for css transition to animate */}
							<div className="message_content">
								<div
									className="messageX"
									onClick={() => {
										window.store.message = false;
									}}
								>
									<span className="fontIcon icon-cross" title="hide message" />
								</div>

								<div className="message_text messageTitle">
									{MessageTitle}

									{MessageSupport && (
										<div className="message_text messageSupport">
											{MessageSupport}

											{MessageSupportDetails && (
												<div className="message_text messageSupportDetails">
													{MessageSupportDetails}
												</div>
											)}
										</div>
									)}
								</div>
							</div>
						</div>
					</div>
				</div>
			</Styled.Message>
		);
	}
}

// connect global data
// when {window.store.message} changes, update {this.state.message}
class MessageConnected extends Component<PropsHOC, StateHOC> {
	constructor() {
		super();
		this.state = { message: 'no title provided' };
	}

	componentWillMount() {
		window.store.watch('message', (name, oldValue, value) => {
			this.setState({ [name]: value });
			return value || {};
		});
	}

	componentWillUnmount() {
		window.store.unwatch('message');
	}

	render() {
		const message = this.state.message;
		return <Message message={message} />;
	}
}

export default MessageConnected;
