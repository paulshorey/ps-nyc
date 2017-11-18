import styled from 'styled-components';

export const Popup = styled.div`
	.popupBox_overlay {
		position: fixed;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		background: rgba(0, 0, 0, 0.8);
		transition: opacity 0.5s ease-in 0.5s, visibility 0s linear 1s;
		opacity: 0;
		visibility: hidden;
	}
	&.opened .popupBox_overlay {
		transition: opacity 0.5s ease-in;
		opacity: 1;
		visibility: visible;
	}

	/*
        in Popup
    */
	position: fixed;
	z-index: 100;

	display: flex;
	align-items: center;

	height: 100vh;
	width: 100vw;
	left: 3px;
	color: #000000;
	border-radius: 2px;

	.popupBox_content {
		position: relative;
		margin: 0 auto;
		height: auto;
	}

	/*
        Popup opening/closing
    */
	/* when closing */
	top: -100vh;
	opacity: 0;
	visibility: hidden;
	transition: opacity 0.33s linear 0.33s, top 0.66s linear, visibility 0s linear 0.66s;
	.formSubmit {
		opacity: 0;
		visibility: hidden;
		transition: opacity 0.33s, visibility 0s linear 0.99s;
	}
	/* when opening */
	&.opened {
		top: 0;
		opacity: 1;
		visibility: visible;
		transition: opacity 0.33s linear, top 0.66s, visibility 0s;
		.formSubmit {
			opacity: 1;
			visibility: visible;
			transition: opacity 0.33s linear 0.66s, visibility 0s;
		}
	}

	.popupBox_close {
		position: absolute;
		top: 1rem;
		right: 1rem;
		font-size: 1.5rem;
		color: ${window.theme.colorOnDark1};
		z-index: 10019;
		cursor: pointer;
	}

	/*
        width
    */
	.popupBox_content {
		max-width: 80vw;
	}
	@media (min-width: 901px) {
		.popupBox_content {
			max-width: 750px;
		}
	}
	@media (max-width: 750px) {
		.popupBox_content {
			max-width: calc(100vw - 2rem);
		}
	}

	/*
        height
    */
	.popupBox_content {
		max-height: 80vh;
	}
	@media (min-height: 901px) {
		.popupBox_content {
			max-height: 650px;
		}
	}
	@media (max-height: 650px) {
		.popupBox_content {
			max-height: calc(100vh - 2rem);
		}
	}
`;
