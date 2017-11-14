import React from 'react';
import ReactDOM from 'react-dom';
import renderer from 'react-test-renderer';
import { Message } from './Message';

it('renders without crashing', () => {
	const title = 'title not checked in this test';
	const div = document.createElement('div');
	ReactDOM.render(<Message message={title} />, div);
});

it('message snapshot is correct', () => {
	const message = {
		title: 'snapshot title',
		opened: false,
	};
	const component = renderer.create(<Message message={message} />).toJSON();
	expect(component).toMatchSnapshot();
});
