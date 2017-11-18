/* core */
import React from 'react';
/* components */
import Box from 'components/box/Box';

/* actions */
// import * as layoutActions from 'states/layout/actions';

/*
	form
*/
class PageComponent extends React.Component {
	render() {
		return (
			<Box box={{ title: this.props.page.title }}>
				<div className="LuxulForm">
					<div className="formSection">
						<h4>Sizes and alignment:</h4>

						<fieldset className="LuxulRows">
							<div>
								<table>
									<tbody>
										<tr>
											<td>
												<input type="checkbox" />
												<img src="/images/product-icons/ap/XAP-1510.png" alt="XAP-1510" />
												<span className="textValign">XAP-1510 87:10</span>
												<button className="primary circle">
													<b>
														<span className="fontIcon icon-ui_edit" />
													</b>
												</button>
												<button className="primary circle small">
													<b>
														<span className="fontIcon icon-ui_edit" />
													</b>
												</button>
												<button className="primary circle">
													<b>
														<span className="fontIcon icon-carat_down" />
													</b>
												</button>
												<button className="primary circle small">
													<b>
														<span className="fontIcon icon-carat_down" />
													</b>
												</button>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</fieldset>

						<fieldset className="info">
							<label className="" />{' '}
							<span>
								<button className="primary small">
									<b>Assign</b>
								</button>
								<br />
								<button className="primary">
									<b>Assign</b>
								</button>
								<br />
								<button className="primary small">
									<b>
										<span className="fontIcon icon-arrow-down2" /> <span>Assign</span>
									</b>
								</button>
								<button className="primary">
									<b>
										<span className="fontIcon icon-arrow-down2" /> <span>Assign</span>
									</b>
								</button>
							</span>
						</fieldset>
					</div>

					<div className="formSection withHr">
						<h4>Styles:</h4>
						<fieldset className="info">
							<label className="" />{' '}
							<span>
								<button className="warn">
									<b>
										<span className="fontIcon icon-warning" /> <span>Warning</span>
									</b>
								</button>
								<br />
								<button className="delete">
									<b>
										<span className="fontIcon icon-pk_delete" /> <span>Delete</span>
									</b>
								</button>
								<br />
								<button className="invalid">
									<b>
										<span className="fontIcon icon-cross" /> <span>Invalid</span>
									</b>
								</button>
								<br />
								<button className="">
									<b>Neutral</b>
								</button>
								<br />
								<button className="clear">
									<b>
										<span className="fontIcon icon-carat_down" /> <span>Invisible</span>
									</b>
								</button>
								<br />
								<button className="clear isMessage">
									<b>
										<span className="fontIcon icon-warning" /> <span>Small Hint</span>
									</b>
								</button>
								<br />
							</span>
						</fieldset>
					</div>

					<p>&nbsp;</p>
				</div>
			</Box>
		);
	}
}

export default PageComponent;
