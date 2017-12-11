import React from 'react';
// import { Link } from 'react-router-dom';
import * as Styled from './BottomStyled';

class Bottom extends React.Component {
	render() {
		return (
			<Styled.Bottom className="Bottom">
				<span className="logo">
					<img src="/branding/logo/legrand_white.svg" alt="Legrand" />
				</span>
				{
					this.props.routes 
					?
					<span className="copyright"><a href="/" style={{fontWeight:"bold"}} className="color_success">LOGOUT <span className="icon-ui_security"></span></a></span>
					:
					<span className="copyright"><span className="desktop_only">This app is non-functional without the Luxul hardware. </span><a href="/XWC1001/examples/validation" style={{fontWeight:"bold"}} className="color_success">CLICK HERE TO DEMO the UI &raquo;</a></span>
				}
			</Styled.Bottom>
		);
	}
}

export default Bottom;
