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
      messages: []
    }

    this.sock = new SockJS('http://api.paulshorey.com:8888/chat');

    this.sock.onopen = () => {   
      window.$.getJSON('http://gd.geobytes.com/GetCityDetails?callback=?', (data)=>{
        // DANGER: assuming that this response comes back before the user types and sends a chat message
        console.log(JSON.stringify(data, null, 2));
        window.userGeo = {
          ip: data.geobytesremoteip,
          name: (data.geobytescity ? data.geobytescity+", " : "")+(data.geobytescode||data.geobytescountry)
        };
        var sendData = {
          user: window.userGeo
        };
        this.sock.send(JSON.stringify(sendData));
      });

    };

    this.sock.onmessage = e => {
      console.log('message received:', e.data);
      //incoming message from server, store in states
      this.setState( { messages: [e.data, ...(this.state.messages.slice(0,14))] }); // show 15 most recent messages
    };

    this.sock.onclose = () => {
      console.log('connetion closed');
    };

    this.handleFormSubmit = this.handleFormSubmit.bind(this);

  }

  handleFormSubmit(e) {
    e.preventDefault();
    let text = this.refs.messageText.value;
    this.refs.messageText.value = '';
    let sendData = {
      message:text,
      user:window.userGeo
    };
    this.sock.send(JSON.stringify(sendData));
  }



  render() {
    let i = 0;

    return (
      <div className="App">

        <ul className="list-group">{
          this.state.messages.map(message => {
            return <li className="list-group-item" key={i++}>{message}</li>
          })}
        </ul>
      
        <form onSubmit={this.handleFormSubmit}>
          <div className="form-group">
            <div className="input-group">
              <input type="text" ref="messageText" className="form-control" placeholder="Type here to chat..." />
              <span className="input-group-btn">
                <button type="submit" className="btn btn-primary">Send!</button>
              </span>
            </div>
          </div>
        </form>

      </div>
    );
  }
}

export default App;
