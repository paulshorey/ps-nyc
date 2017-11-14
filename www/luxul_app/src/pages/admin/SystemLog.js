/* core */
import React from 'react';
/* components */
import Box from 'components/box/Box';

/* forms */
import { LuxulForm } from 'components/form/LuxulForm';

/*
	form
*/
class PageComponent extends React.Component {
	constructor() {
		super();
		this.state = {
			luxulFormValues: {
				ledStatus: '1',
			},
		};
	}

	render() {
		return (
			<Box box={{ title: this.props.page.title }}>
				<LuxulForm stateScope={this}>
					<div className="formSection">
						<fieldset className="info">
							<label className="">Save to File:</label>
							<span>
								<button className="primary">
									<b>
										&nbsp;Download <span className="fontIcon icon-carat_down" />
									</b>
								</button>
							</span>
						</fieldset>
					</div>

					<div className="systemLogContainer">
						<table>
							<tbody>
								<tr>
									<td>
										Wed Oct 21 18:00:05 2015 kern.info kernel: [ 19.780220] eth0: Link is Up -
										1Gbps/Full - flow control off
									</td>
								</tr>
								<tr>
									<td>Wed Oct 21 18:00:06 2015 daemon.err block: /dev/ubi0_0 is already mounted</td>
								</tr>
								<tr>
									<td>Wed Oct 21 18:00:06 2015 authpriv.info dropbear[768]: Not backgrounding</td>
								</tr>
								<tr>
									<td>
										Wed Oct 21 18:00:07 2015 kern.info kernel: [ 21.523199] br-lan: port 1(eth0.1)
										entered forwarding state
									</td>
								</tr>
								<tr>
									<td>Wed Oct 21 18:00:08 2015 session.emerg syslog: sh: missing ]</td>
								</tr>
								<tr>
									<td>
										Wed Oct 21 18:00:10 2015 session.emerg syslog: There isn't mtd overlay, NAND
										should be already in use
									</td>
								</tr>
								<tr>
									<td>Wed Oct 21 18:00:10 2015 daemon.info procd: - init complete -</td>
								</tr>
								<tr>
									<td>
										Wed Oct 21 18:00:10 2015 daemon.err odhcpd[980]: Failed to open routing table:
										No such file or directory
									</td>
								</tr>
								<tr>
									<td>
										Wed Oct 21 18:00:10 2015 daemon.err odhcpd[980]: Unable to open raw socket:
										Address family not supported by protocol
									</td>
								</tr>
								<tr>
									<td>
										Wed Oct 21 18:00:15 2015 daemon.err odhcpd[986]: Failed to open routing table:
										No such file or directory
									</td>
								</tr>
								<tr>
									<td>
										Wed Oct 21 18:00:15 2015 daemon.err odhcpd[986]: Unable to open raw socket:
										Address family not supported by protocol
									</td>
								</tr>
								<tr>
									<td>
										Wed Oct 21 18:00:20 2015 daemon.err odhcpd[991]: Failed to open routing table:
										No such file or directory
									</td>
								</tr>
								<tr>
									<td>
										Wed Oct 21 18:00:20 2015 daemon.err odhcpd[991]: Unable to open raw socket:
										Address family not supported by protocol
									</td>
								</tr>
								<tr>
									<td>
										Wed Oct 21 18:00:25 2015 daemon.err odhcpd[996]: Failed to open routing table:
										No such file or directory
									</td>
								</tr>
								<tr>
									<td>
										Wed Oct 21 18:00:25 2015 daemon.err odhcpd[996]: Unable to open raw socket:
										Address family not supported by protocol
									</td>
								</tr>
								<tr>
									<td>
										Wed Oct 21 18:00:30 2015 daemon.err odhcpd[1001]: Failed to open routing table:
										No such file or directory
									</td>
								</tr>
								<tr>
									<td>
										Wed Oct 21 18:00:30 2015 daemon.err odhcpd[1001]: Unable to open raw socket:
										Address family not supported by protocol
									</td>
								</tr>
								<tr>
									<td>
										Wed Oct 21 18:00:30 2015 daemon.info procd: Instance odhcpd::instance1 s in a
										crash loop 6 crashes, 0 seconds since last crash
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</LuxulForm>
			</Box>
		);
	}
}

export default PageComponent;
