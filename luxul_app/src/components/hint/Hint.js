/*eslint no-unused-vars: 2*/
import React from 'react';

import * as Styled from './HintStyled';

/*
	export: hint tip
*/
class Hint extends React.Component {
	render() {
		var { label, title, description } = this.props;
		return (
			<Styled.Hint
				className="Hint"
				onClick={() => {
					window.store.hintbox = { title, description };
				}}
			>
				<sup className="fontIcon icon-pk_question" />
				{label && <sup>{label}</sup>}
			</Styled.Hint>
		);
	}
}

export default Hint;
