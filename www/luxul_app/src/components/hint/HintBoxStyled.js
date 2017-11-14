import styled from 'styled-components';

export const HintBox = styled.div`
	position: absolute;
	top: 0;
	right: -23rem;
	width: 100%;
	height: 100%;
	color: ${window.theme.colorOnLight1};
	max-width: 22.5rem;
	transition: all 0.8s;
	margin: 0;
	background: #fff;
	box-shadow: 0 1px 3px 1px rgba(0, 0, 0, 0.1);
	&.opened {
		right: 0rem;
		@media (max-width: 750px) {
			right: 1.25rem;
		}
		.mobileHelpColumnScrolled & {
			position: fixed;
			top: 0;
			right: 1rem;
			max-width: calc(100vw - 2rem - 2px);
		}
	}

	.overlay {
		position: absolute;
		top: 0;
		right: 0;
		width: 1000%;
		height: 100%;
		z-index: 100;
		background: rgba(255, 255, 255, 0.5);
		transition: opacity 0.8s ease-in, visibility 0s linear 0.8s;
		opacity: 0;
		visibility: hidden;
	}
	&.opened .overlay {
		opacity: 1;
		visibility: visible;
		transition: opacity 0.8s ease-in, visibility 0s;
		.mobileHelpColumnScrolled & {
			position: fixed;
			top: 0;
			right: 0;
		}
	}

	.content {
		position: relative;
		padding: 1rem;
		z-index: 200;
		.hintTitle {
			padding: 1rem 0 1.25rem 0;
		}
		.hintX {
			position: absolute;
			top: 1.75rem;
			right: 1.5rem;
			font-size: 1.25rem;
			line-height: 1.25rem;
			color: ${window.theme.colorOnLight2};
			transition: right 0.8s;
			cursor: pointer;
		}
		p {
			margin: 1.5rem 0;
			line-height: 1.33rem;
		}
	}
`;
