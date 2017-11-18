// @flow
import React from 'react';
import * as Styled from './BoxStyled';

/* 
	content
*/
type Props = {
	children: any,
	box: {
		Children: any,
		TopChildren: any,
		icon: any,
		title: any,
		theme: any,
		className: any,
		id: any,
	},
};
class Box extends React.Component<Props> {
	render() {
		var { box } = this.props;
		if (!box || !(this.props.children || box.Children)) {
			throw new Error(
				"Box component must be supplied with box object: box = { theme:'', title:'', icon:'', Children:<div>hello</div>, TopChildren:<span /> }. Instead of 'box.Children', you may simply pass actual child elements inside the Box."
			);
		}

		return (
			<Styled.Box
				ref="box"
				className={
					'box ' +
					(box.theme ? ' theme_' + box.theme : '') +
					(box.className ? ' ' + box.className : '')
				}
				id={box.id || ''}
			>
				<div className="box_content">
					<div className="box_top">
						<div className="items">
							<div className="item title">
								{box.icon && box.icon}
								{box.title && box.title}
							</div>
							{box.TopChildren && box.TopChildren}
						</div>
					</div>

					<div className="box_middle">{this.props.children || box.Children}</div>
				</div>
			</Styled.Box>
		);
	}
}

export default Box;
