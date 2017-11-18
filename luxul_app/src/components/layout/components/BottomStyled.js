import styled from 'styled-components';

export const Bottom = styled.div`
	position: absolute;
	width: 100%;
	bottom: 0;
	display: flex;
	padding: 1.5rem 0;
	@media (max-width: 750px) {
		padding: 1rem;
		width: calc(100% - 3rem);
	}
	@media (max-width: 750px), (max-height: 650px) {
		.withNav & {
			display: none;
		}
	}
	* {
		color: var(--app-colorOnDark3);
		font-size: 1rem;
		line-height: 1.5rem;
		vertical-align: middle;
	}
	a {
		color: var(--app-colorOnDark2);
	}
	> * {
		display: inline-block;
	}
	.logo {
		@media (min-width: 751px) {
			padding: 0 1.5rem 0;
		}
		img {
			height: 1.7rem;
			opacity: 0.33;
		}
	}
	.copyright {
		position: absolute;
		right: 0;
		padding: 0.5rem 0 0;
		@media (max-width: 1080px) and (min-width: 751px) {
			margin-right: 0.5rem;
		}
	}
`;
