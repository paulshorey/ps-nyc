/*
	log
	* creates ${window.log} as a function similar to ${window.console.log} but better formatted
*/
import 'window/log.js';

/*
	// global styles
	* and global theme variables ${window.theme} used by local Styled-Components
*/
import 'window/theme.js';
import 'indexStyled.js';

/*
	UBUS UCI via JSON RPCD
	* simple library to get, set, add, login, revert, etc, meanwhile remembering the session_id and checking that it is still valid, otherwise kicking the user out to "/login"
	* with some abstraction/formatting to put the incoming/outgoing data into a proper format (see documentation in Confluence - http://confluence:8090/display/EN/rpcd+function)
	* also it keeps our Session ID token, and does some other handy maintenance
*/
import * as ubus from 'ubus'; /* pass this to each Route */

/*
	GLOBAL DATA STORE
	* is simply window.store
	* we'll use Javascript's Object.prototype.watch() and Object.prototype.unwatch() from our Component, to watch for changes and react to them manually
		*!* when a global {window.store.whatever} property changes, use Object.watch() to sync that change down to your component's local {this.state.whatever} property
	* we're including a polyfill to fix browsers that do not support Object.prototype.watch()
	
	* open this file to change global state MODEL
	* add/edit initial properties, do typechecking, filter and validate changes to the property
*/
import 'window/store';

/*
	LOAD APP with INITIAL ROUTE

	* then after login, navigate to the device url (example: "/XWC1000") and react-router-dom will route device-specific urls there
*/
import React from 'react';
import ReactDOM from 'react-dom';
import registerServiceWorker from './registerServiceWorker';
import App from './App';
import PrimaryErrorBoundary from 'components/error/PrimaryErrorBoundary';

ReactDOM.render(
	<PrimaryErrorBoundary>
		<span className="responsive_label" id="responsive_desktop">
			Desktop
		</span>
		<span className="responsive_label" id="responsive_tablet_portrait">
			Tablet (Portrait)
		</span>
		<span className="responsive_label" id="responsive_tablet_landscape">
			Tablet (Landscape)
		</span>
		<span className="responsive_label" id="responsive_phone_portrait">
			Phone (Portrait)
		</span>
		<span className="responsive_label" id="responsive_phone_landscape">
			Phone (Landscape)
		</span>
		<App ubus={ubus} />
	</PrimaryErrorBoundary>,
	document.getElementById('root')
);
registerServiceWorker();
