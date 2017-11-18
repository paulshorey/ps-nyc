import styled from 'styled-components';

export const Side = styled.div`
	/*
        open / close
    */
	position: relative;
	z-index: 1000;
	.sideBox_overlay {
		position: fixed;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		background: rgba(0, 0, 0, 0.8);
		transition: opacity 0.4s ease-in, visibility 0s linear 0.4s;
		opacity: 0;
		visibility: hidden;
	}
	&.opened .sideBox_overlay {
		transition: opacity 0.33s ease-in;
		opacity: 1;
		visibility: visible;
	}
	.sideBox_close {
		position: absolute;
		top: 1rem;
		right: 1rem;
		font-size: 1.5rem;
		color: ${window.theme.colorOnDark1};
		z-index: 10019;
		cursor: pointer;
	}
	.sideBox_content {
		position: fixed;
		z-index: 10011;
		top: 0;
		right: -660px;
		width: 420px;
		height: 100%;
		min-height: 400px;
		max-width: 100vw;
		min-width: 33vw;
		transition: right 0.4s ease-out, overflow 0s linear 0.4s;
		overflow: auto;
	}
	&.opened .sideBox_content {
		right: 0px !important;
	}
	.box {
		height: 100% !important;
		.box_middle {
			height: 100%;
		}
		.box_content {
			height: 100% !important;
			.boxMiddle {
				height: 100% !important;
			}
		}
	}

	/*
        style / theme
    */
	.sideBox_content {
		.sideBoxTop {
			background: linear-gradient(
				108deg,
				${window.theme.colorDark2} 0%,
				${window.theme.colorDark1} 33%,
				${window.theme.colorOnLight1} 100%
			);
			color: ${window.theme.colorOnDark1};
			padding: 1.3rem 1rem 0.5rem;
			.navItem {
				padding: 0;
				.fontIcon {
					margin: -0.15rem -0.25rem 0 0;
				}
				.navItemTitle {
					flex-grow: 1;
				}
			}
			.navItem.navTitle {
				display: flex;
				width: 100%;
				padding-left: 0;
			}
		}
		.sideBoxMiddle {
			flex-grow: 1;
			padding: 1rem;
		}
		.sideBoxBottom {
			padding: 1rem;
		}
	}
`;
