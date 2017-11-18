/* core */
import React from 'react';

class PageComponent extends React.Component {
	componentWillMount() {
		this.props.history.push('/login');
	}

	render() {
		return null;
	}
}

export default PageComponent;
