import React from 'react';
import ReactDOM from 'react-dom';


class App extends React.Component {
    constructor(){
        super();

        var myRequest = new Request('http://api.paulshorey.com/v1/jobs/all');
        fetch(myRequest)
        .then(function(response) { return response.json(); })
        .then(function(data) {
            
            console.log('data.products',data.products);

        });
        if (this._mounted) {
        }
    }
    componentWillMount(){
        this._mounted = true;
    }
    componentWillUnmount(){
        this._mounted = false;
    }

    renderJobs(){
    }
    render() {
      return (
        <div>
            {this.renderJobs()}
        </div>
      );
    }

  }



ReactDOM.render(<App />, document.getElementById('react-app'));
