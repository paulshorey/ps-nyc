import React from 'react';

import Top from 'components/layout/components/Top';
import Bottom from 'components/layout/components/Bottom';
import Nav from 'components/nav/Nav';
import Message from 'components/layout/components/Message';
import Side from 'components/layout/components/Side';
import Popup from 'components/layout/components/Popup';
import SpecificErrorBoundary from 'components/error/SpecificErrorBoundary';

import * as Styled from './LayoutStyled';

class Layout extends React.Component {
	constructor() {
		super();
		window.store.nav = { opened: !window.store.nav.opened };
	}

	componentWillMount() {
		// // auth
		// // >> free parking <<
		// if (this.props.history.location.pathname==="/login") {

		// // >> authenticate <<
		// } else {

		// 	// >> log out <<
		// 	// session expired
		// 	// OR session will expire in next 60 seconds
		// 	if ( !window.localStorage.ubus_rpc_session_id || (window.localStorage.ubus_rpc_session_expiration<(Date.now()+60000))) {
		// 		this.props.history.push('/login');
		// 		window.store.message = {title:"Your session expired. Please login again.", type:"error"};

		// 	// >> logged in <<
		// 	// session valid for over 60 seconds
		// 	} else {

		// 		// WHEN it comes time for the session TO expire in 60 seconds
		// 		this.timeout_sessionExpired = setTimeout(()=> {

		// 			// countdown from 60 seconds until expiration
		// 			this.interval_sessionAlmostExpired = setInterval(()=>{
		// 				window.store.message = {title:<span style={{cursor:"pointer"}} onClick={()=>{ this.props.history.push('/login'); }}>Your session will expire in {Math.floor((window.localStorage.ubus_rpc_session_expiration - Date.now()) / 1000)} seconds. Please save your changes and click here to login again.</span>,type:"warning"};
		// 			},1000);

		// 			// session expired
		// 			this.timeout_sessionExpired = setTimeout(()=> {
		// 				if (this.interval_sessionAlmostExpired) {
		// 					clearInterval(this.interval_sessionAlmostExpired);
		// 				}
		// 				this.props.history.push('/login');
		// 				window.store.message = {title:"Your session expired. Please login again.", type:"error"};
		// 			}, (window.localStorage.ubus_rpc_session_expiration - Date.now() - 1));

		// 		}, (window.localStorage.ubus_rpc_session_expiration - Date.now() - 60000));

		// 	}
		// }

		// important detail
		this._isMounted = true;
	}

	componentWillUnmount() {
		// clean up authentication
		if (this.timeout_sessionExpired) {
			clearTimeout(this.timeout_sessionExpired);
		}
		if (this.interval_sessionAlmostExpired) {
			clearInterval(this.interval_sessionAlmostExpired);
		}

		// important cleanup
		this._isMounted = false;
	}

	render() {
		var { history } = this.props;
		const currentPath = history.location.pathname;
		return (
			<Styled.Layout>
				<SpecificErrorBoundary location="Layout.js">
					<Message history={history} />
					<div
						className={'layout_container' + (this.props.routes ? ' withNav' : ' noNav')}
						tabIndex={0}
						onKeyDown={e => {
							if (e.keyCode === 27) {
								/*this.props.dispatch( layoutActions.popupBox({}) );*/
							}
						}}
					>
						<Top history={history} />

						<div className="layout_content">
							{this.props.routes && (
								<Nav history={history} routes={this.props.routes} currentPath={currentPath} />
							)}

							<div
								className="page"
								onClick={() => {
									window.store.nav = { opened: false };
									document.getElementById('Hamburger').classList.remove('opened');
								}}
							>
								{this.props.children}
							</div>
						</div>

						<Bottom history={history} />

						<Side history={history} />
						<Popup history={history} />
					</div>
				</SpecificErrorBoundary>
			</Styled.Layout>
		);
	}
}

export default Layout;
