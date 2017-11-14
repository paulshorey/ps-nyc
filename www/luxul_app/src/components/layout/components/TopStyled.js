import styled from 'styled-components';

export const Top = styled.div`
	position: relative;
	width: 100%;
	padding-top: 1.75rem;
	padding-bottom: 0.6rem;
	height: calc(${window.theme.topHeight} - 2.35rem); // height - (padding top and bottom)
	color: ${window.theme.colorOnDark3};
	display: flex;
	z-index: 90;
	pointer-events: none;
	@media (max-width: 750px) {
		padding-top: 1.25rem;
		padding-bottom: 1.25rem;
		height: calc(${window.theme.topHeight} - 2.5rem); // height - (padding top and bottom)
		> div {
			position: fixed;
			width: 100%;
			display: flex;
		}
	}
	> * {
		position: relative;
		display: inline-block;
		pointer-events: auto;
		flex-grow: 1;
	}
`;

export const Logo = styled.div`
	pointer-events: none;
	margin-left: 1rem;
	display: inline-block;
	cursor: pointer;
	img {
		height: 2.2rem;
		margin-top: -0.5rem;
	}
	.menu {
		display: none;
	}
	@media (max-width: 750px) {
		.withNav & {
			position: absolute;
			width: 100%;
			display: block;
			margin: 0 auto;
			text-align: center;
		}
	}
	.icon-more {
		color: ${window.theme.colorGreen1};
	}
`;

export const Details = styled.div`
	position: absolute;
	right: 0;
	display: inline-block;
	cursor: pointer;
	text-align: right;
	margin-right: 0;
	margin-top: 0.25rem;
	@media (min-width: 751px) and (max-width: 1080px) {
		margin-right: 0.75rem;
	}
	@media (max-width: 750px) {
		margin-right: 0.44rem;
		.noNav & {
			margin-right: 1rem;
		}
	}
	.link {
		display: inline-block;
		.withNav & {
			@media (max-width: 750px) {
				display: none;
			}
		}
		.title {
			font-size: 1.5rem;
			line-height: 1.25rem;
			color: ${window.theme.colorOnDark2};
			display: block;
			padding: 0 0 0 0;
			margin-top: -0.4rem;
			white-space: nowrap;
		}
		.text {
			font-size: 1rem;
			line-height: 0.85rem;
			color: ${window.theme.colorOnDark3};
		}
	}
	.fontIcon {
		position: absolute;
		right: 0.5rem;
		color: #fff;
		font-size: 1.7rem;
		margin: -0.25rem -0.45rem;
		@media (min-width: 751px) {
			display: none;
		}
		.noNav & {
			display: none;
		}
	}
`;

export const Hamburger = styled.div`
	position: relative;
	z-index: 10;
	padding: 0 0 0 1rem;
	display: inline-block;
	cursor: pointer;
	font: inherit;
	color: inherit;
	text-transform: none;
	background-color: transparent;
	border: 0;
	margin: 0;
	overflow: visible;
	transition: all 0.5s;
	.noNav & {
		display: none !important;
	}
	@media (min-width: 751px) {
		display: none;
	}
	.hamburger-icon {
		position: relative;
		width: 32px;
		height: 28px;
		display: inline-block;
	}
	.hamburger-centered {
		position: absolute;
		display: block;
		top: 50%;
	}
	/*
            each line
        */
	.hamburger-middle,
	.hamburger-top,
	.hamburger-bottom {
		position: absolute;
		display: inline-block;
		margin-top: -4px;
		width: 31px;
		height: 4px;
		background-color: #fff;
		transform: translate3d(0, 0, 0) rotate(0deg) scale(1, 1);
		transition: all 0.5s ease;
	}
	.hamburger-top,
	.hamburger-bottom {
		content: '';
		display: block;
	}
	.hamburger-top {
		top: -10px;
	}
	.hamburger-bottom {
		bottom: -10px;
	}
	/*
            each line - active
        */
	// &.opened {
	//     opacity:0.6;
	// }
	&.opened .hamburger-middle,
	&.opened .hamburger-top,
	&.opened .hamburger-bottom {
		width: 21px;
		margin-right: 8px;
		margin-left: 2px;
	}
	&.opened .hamburger-top {
		transform: translate3d(-8px, 0, 0) rotate(-45deg) scale(0.8, 1);
		top: -5px;
	}
	&.opened .hamburger-bottom {
		transform: translate3d(-8px, 0, 0) rotate(45deg) scale(0.8, 1);
		bottom: -5px;
	}
`;
