import React, { Component } from 'react';
import SockJS from 'sockjs-client';

import * as Styled from './App.styled';

/*
	the chat app
*/
class App extends Component {
	constructor(props) {
		super(props);
		this.state = {
			messages: [],
			users: [],
			closed: true
		}
		this.handleFormSubmit = this.handleFormSubmit.bind(this);

		// WS
		this.sock = new SockJS('http://api.paulshorey.com:8888/chat');
		// WS CONNECT
		this.sock.onopen = () => {
			// enable chat
			this.setState({closed: false});

			// get user data
			window.$.getJSON('http://gd.geobytes.com/GetCityDetails?callback=?', (data)=>{
				// DANGER: assuming that this response comes back before the user types and sends a chat message
				// console.log(JSON.stringify(data, null, 2));
				var user = {
					ip: data.geobytesremoteip,
					name: (data.geobytescity ? data.geobytescity+", " : "")+(data.geobytescode||data.geobytescountry)
				};
				var sendData = {
					user: user
				};
				this.sock.send(JSON.stringify(sendData));
			});

		};
		// WS RECEIVE
		this.sock.onmessage = e => {
			e.data = JSON.parse(e.data);
			// console.log('new message',e.data);
			const newState = {};

			// update list of users
			if (e.data.users && e.data.users!=={}) {
				let users = [];
				for (let u in e.data.users) {
					let user = e.data.users[u];
					user.id = u;
					users.push(user);
				}
				// console.log('users',users);
				newState.users = users;
			}

			// add message
			if (e.data.message) {
				if (!e.data.user) {
					e.data.user = {};
				}
				newState.messages = [...(this.state.messages.slice(0,14)), e.data];
			}

			// finally update state
			this.setState(newState);

		};
		// WS DISCONNECT
		this.sock.onclose = () => {
			console.log('connetion closed');
			this.setState({closed:true});
		};
	}
	
	// WS SEND
	handleFormSubmit(e) {
		e.preventDefault();
		let text = this.refs.messageText.value;
		this.refs.messageText.value = '';
		let sendData = {
			message:text
		};
		this.sock.send(JSON.stringify(sendData));
	}

	// VIEW
	renderMessages(){
		const returnMessages = [];
		this.state.messages.forEach((data, key)=>{

			let MessageText = null;
			if (data.message) {
				MessageText = <span className="text">{data.message} </span>;
			}
			let MessageUser = null;
			console.log('message user',data.user);
			if (data.user && data.user.name) {
				MessageUser = <span className="user">~ {data.user.name} </span>;
			}

			returnMessages.push(
				<div className={("message ")+(data.user.name==="Paul"?"fromPaul":"")} key={key++}>
					{MessageText}
					{MessageUser}
				</div>
			);

		});
		return returnMessages;
	}
	render() {
		if (this.state.closed) {
			// websocket server is doing something funky!
			return null;
		} else {
			// websocket server is connected
			return (
				<Styled.App>

					<div className="ui">
						<div className="avatar avatarFrom"></div>

						<div className="board">

							<div className="messages">
								{this.renderMessages()}
							</div>

							<form onSubmit={this.handleFormSubmit}>
								<input type="text" ref="messageText" placeholder="Ask me anything, or just say hello..." />
								<button type="submit" className="btn btn-primary">Send</button>
							</form>

						</div>

						<div className="avatar avatarFrom"></div>
					</div>

					<p style={{color:"#999"}}>Here's a fun code sample. Made this embedded app in one day, including setting up servers. Send a message. I will receive it immediately via SMS (Twilio). If I am at my phone and text back, you will see my reply here. How cool is that? <a href="https://github.com/paulshorey/ps-api" target="_blank" rel="noopener noreferrer">Node.js</a> back-end <a href="https://github.com/paulshorey/ps" target="_blank" rel="noopener noreferrer">React</a> front-end (GitHub).</p>

					{/* <p style={{color:"#999"}}>
						{
							(this.state.users.length>1)
							?
							(<span>{this.state.users.length-1} other site visitor{(this.state.users.length-2)>0?"s are ":" is "} connected, besides Paul. Say hi to him/her.</span>)
							:
							(<span>You are the only person viewing this site right now. Only Paul will receive your message.</span>)
						}
					</p> */}

				</Styled.App>
			);
		}
	}
}

export default App;
