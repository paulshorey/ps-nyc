import React from 'react';
import * as Styled from './BottomStyled';

class Bottom extends React.Component {
	render() {
		return (
			<Styled.Bottom className="Bottom">
				<span className="logo">
					<img src="/branding/logo/legrand_white.svg" alt="Legrand" />
				</span>

				<span className="copyright">Copyright &copy;2017 Luxul</span>
			</Styled.Bottom>
		);
	}
}

export default Bottom;
