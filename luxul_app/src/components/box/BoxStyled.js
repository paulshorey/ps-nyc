import styled from 'styled-components';

export const Box = styled.div`
	position: relative;
	margin: 0 auto;
	transition: height 0.5s linear;
	overflow: hidden;
	z-index: 100;
	p {
		margin: 1.25rem 1px;
		font-size: 1rem;
		line-height: 1.5rem;
	}
	.box_content {
		background: ${window.theme.colorGreen1};
		color: ${window.theme.colorOnLight2};
		position: relative;
		padding: 0 0 0 2px;
		box-shadow: 0 3px 6px 0 ${window.theme.colorOnLight1};
		border-radius: 2px;
		overflow: auto;
		flex-direction: column;
		box-shadow: 2px 2px 0px 0px ${window.theme.colorOnLight2};
		width: 100%;
		overflow-x: hidden;
		.box_top {
			color: ${window.theme.colorOnDark2};
			padding: 0.8rem 1.25rem 0.4rem 1.25rem;
			font-size: 1.5rem;
			line-height: 1.75rem;

			.items {
				display: flex;
				> * {
					padding: 0.3rem 0 0.2rem;
					text-align: right;
					cursor: pointer;
				}
				.link {
					transition: opacity 0.5s;
					opacity: 1;
				}
				.title {
					font-size: 1.75rem;
					color: #fff;
					flex-grow: 1;
					text-align: left;
				}
			}
		}
		.box_middle {
			position: relative;
			background: ${window.theme.colorLight1};
			border-radius: 2px;
			padding: 1rem 1.25rem;
			overflow: hidden;
		}
	}

	/*
        theme
        (default is green)
    */
	&.theme_global {
		.box_content {
			background: ${window.theme.colorDark3};
			.box_top {
				color: ${window.theme.colorOnDark3};
			}
		}
	}
	&.theme_orange {
		.box_content {
			background: ${window.theme.colorOrange1};
			.box_top {
				color: ${window.theme.colorOnDark2};
			}
		}
	}
`;
