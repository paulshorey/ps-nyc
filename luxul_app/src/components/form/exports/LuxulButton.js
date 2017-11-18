/*eslint no-unused-vars: 2*/
import React from 'react';

// import { isEqualShallow, get_property } from 'functions';
import * as Styled from './LuxulButtonStyled';

/*
	export: button
	* not used in LuxulForm - only serves as export for Storybook
*/
class LuxulButton extends React.Component {
	render() {
		var { children, ...attributes } = this.props;
		return <Styled.Button {...attributes}>{children}</Styled.Button>;
	}
}

export default LuxulButton;
