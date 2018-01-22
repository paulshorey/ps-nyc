import React from 'react';
import ReactDOM from 'react-dom';
import registerServiceWorker from './registerServiceWorker';
import './index.css';

import Chat from './chat/App';
ReactDOM.render(<Chat />, document.getElementById('react-chat'));

registerServiceWorker();
