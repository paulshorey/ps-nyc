/* core */
import React from 'react';
/* components */
import Box from 'components/box/Box';

/* forms */
import { LuxulForm, LuxulInput } from 'components/form/LuxulForm';
import * as Styled from './PageLoginStyled';

/*
	form
*/
class PageComponent extends React.Component {
	constructor() {
		super();
		this.state = {
			luxulFormButtons: {
				submit: ' Enter',
				reset: false,
			},
		};
	}

	render() {
		var { history } = this.props;

		var formSubmit = valid => {
			console.warn('submitting...');
			this.setState({ luxulFormSubmitting: true });
			window.store.message = {};
			valid
				.then(event => {
					// form is valid
					this.props.ubus
						.login(this.state.luxulFormValues)
						.then(action => {
							console.error('hello???', action);
							this.setState({ luxulFormSubmitting: false });
							history.push('/' + window.store.deviceInfo.model + '/status/controller');
						})
						.catch(err => {
							console.error('nooo???', err);
							// dispatch(layoutActions.message({title:"Login failed. Please check that your device is connected and powered on.", status:1}));
							this.setState({ luxulFormSubmitting: false });
							window.store.message = {
								title: 'Login failed. Please check that your device is connected and powered on.',
								type: 'error',
							};
						});
				})
				.catch(err => {
					// form is NOT valid
					console.error('Error: ' + err);
				});
		};

		var HelpBox = (
			<Box box={{ title: 'Login Help' }}>
				<div className="form" style={{ minWidth: '200px' }}>
					<p>
						Username: root<br />Password: admin
					</p>
				</div>
			</Box>
		);
		const TopChildren = [
			<span
				key="Login Help"
				className="fontIcon icon-pk_question"
				onClick={() => {
					window.store.side = { Box: HelpBox };
				}}
			/>,
		];

		return (
			<Styled.PageLogin>
				<Box box={{ title: 'Login', id: 'boxLogin', TopChildren: TopChildren }}>
					<LuxulForm stateScope={this} onSubmit={formSubmit}>
						<div className="formSection">
							<fieldset>
								<label>Username:</label>
								<LuxulInput stateScope={this} name="username" type="text" />
							</fieldset>
							<fieldset>
								<label>Password:</label>
								<LuxulInput stateScope={this} name="password" type="password" />
							</fieldset>
						</div>

						{/*<div className="formSection">
							<LuxulButton
								className={
									this.state.luxulFormSubmitting ||
									(this.state.luxulFormInvalid && this.state.luxulFormInvalid.length)
										? ' '
										: ' primary'
								}
								type="submit"
							>
								<b>Enter</b>
							</LuxulButton>
						</div>*/}
					</LuxulForm>
				</Box>
			</Styled.PageLogin>
		);
	}
}

export default PageComponent;
