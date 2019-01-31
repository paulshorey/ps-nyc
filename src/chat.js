import React from 'react';
import ReactDOM from 'react-dom';
// import registerServiceWorker from './registerServiceWorker';
import PrimaryErrorBoundary from './components/error/PrimaryErrorBoundary';
import './index.css';

import Chat from './chat/App';
ReactDOM.render(
	<PrimaryErrorBoundary>
        <Chat />
	</PrimaryErrorBoundary>,
    document.getElementById('react-chat')
);

// registerServiceWorker();
