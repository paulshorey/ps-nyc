import React, { Component } from 'react';
import './App.css';
import SockJS from 'sockjs-client';

/*
	the chat app
*/
class App extends Component {
	constructor(props) {
		super(props);
		this.state = {
			messages: [],
			users: []
		}
		this.handleFormSubmit = this.handleFormSubmit.bind(this);

		// WS
		this.sock = new SockJS('http://api.paulshorey.com:8888/chat');
		// WS CONNECT
		this.sock.onopen = () => {   
			window.$.getJSON('http://gd.geobytes.com/GetCityDetails?callback=?', (data)=>{
				// DANGER: assuming that this response comes back before the user types and sends a chat message
				console.log(JSON.stringify(data, null, 2));
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
			console.log('new message',e.data);
			const newState = {};

			// update list of users
			if (e.data.users && e.data.users!=={}) {
				let users = [];
				for (let u in e.data.users) {
					let user = e.data.users[u];
					user.id = u;
					users.push(user);
				}
				console.log('users',users);
				newState.users = users;
			}

			// add message
			if (e.data.message) {
				newState.messages = [...(this.state.messages.slice(0,14)), e.data.message];
			}

			// finally update state
			this.setState(newState);

		};
		// WS DISCONNECT
		this.sock.onclose = () => {
			console.log('connetion closed');
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
	render() {
		let i = 0;

		return (
			<div className="App">

				<div>{
					this.state.messages.map(message => {
						return <div key={i++}>{message}</div>
					})}
				</div>
			
				<form onSubmit={this.handleFormSubmit}>
					<input type="text" ref="messageText" placeholder="Ask me anything..." />
					<button type="submit" className="btn btn-primary">Send!</button>
				</form>

				{/* <p>
					{
						(this.state.users.length>1)
						?
						(<span>{this.state.users.length-1} other site visitor{(this.state.users.length-2)>0?"s are ":" is "} connected, besides Paul. Say hi to him/her.</span>)
						:
						(<span>You are the only person viewing this site right now. Only Paul will receive your message.</span>)
					}
				</p> */}

			</div>
		);
	}
}

export default App;
