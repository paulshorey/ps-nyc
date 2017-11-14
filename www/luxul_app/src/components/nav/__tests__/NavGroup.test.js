import React from 'react';
import ReactDOM from 'react-dom';
import renderer from 'react-test-renderer';
import NavGroup from '../NavGroup';

// const routes = [{"title":"Status","url":"/XWC1000/status","children":[{"title":"Controller","url":"/XWC1000/status/controller"},{"title":"AP","url":"/XWC1000/status/ap"}]},{"title":"Profile Management","url":"/XWC1000/profiles","children":[{"title":"AP Management","url":"/XWC1000/profiles/ap_management"},{"title":"AP Assignment","url":"/XWC1000/profiles/ap_assignment"},{"title":"SSID Management","url":"/XWC1000/profiles/ssid_management"},{"title":"Wireless Settings","url":"/XWC1000/profiles/wireless_settings"}]},{"title":"VLAN","url":"/XWC1000/vlan"},{"title":"Controller Settings","url":"/XWC1000/controller"}];

// renderLinks = links => {
//   return links.map((link, index) => {
//     return (
//       <NavLink
//         key={link.url + index}
//         className="title link"
//         activeClassName="active"
//         to={link.url}
//       >
//         <span className="fontIcon icon-navlink_dot" />
//         <span>{link.title}</span>
//       </NavLink>
//     );
//   });
// };

// renderNav = () => {
//   return routes.map((link, index) => {
//     if (link.children && index <= 1) {
//       return (
//         {this.renderLinks(link.children)}
//       );
//     }
//   });
// }

it('renders without crashing', () => {
	const div = document.createElement('div');
	ReactDOM.render(
		<NavGroup key="test" title="test title" currentPath="/XWC1000/profiles/ap_management">
			<p>first</p>
			<p>second</p>
			<p>last</p>
		</NavGroup>,
		div
	);
});

it('renders an unchanged snapshot with react-test-renderer', () => {
	const tree = renderer
		.create(
			<NavGroup>
				<p>first</p>
				<p>second</p>
				<p>last</p>
			</NavGroup>
		)
		.toJSON();
	expect(tree).toMatchSnapshot();
});

it('has correct state if opened', () => {
	const component = renderer.create(
		<NavGroup>
			<p>first</p>
			<p>second</p>
			<p>last</p>
		</NavGroup>
	);
	component.getInstance().toggleOpen();
	expect(component.toJSON()).toMatchSnapshot();
});

it('has correct state if opened and closed', () => {
	const component = renderer.create(
		<NavGroup>
			<p>first</p>
			<p>second</p>
			<p>last</p>
		</NavGroup>
	);
	component.getInstance().toggleOpen();
	component.getInstance().toggleOpen();
	expect(component.toJSON()).toMatchSnapshot();
});
