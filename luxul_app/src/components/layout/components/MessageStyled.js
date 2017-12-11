import styled from 'styled-components';

export const Message = styled.div`
	.messages_container {
		border-bottom: solid 2px black;
	}

	.message {
		position: relative;
		width: 100%;
		height: 0;
		transition: height 1s;
		background: ${window.theme.colorNeutral};
		z-index: 100;
		box-shadow: 2px 2px 0px 0px ${window.theme.colorOnLight2};
		border-radius: 2px;
		overflow: hidden;
		&.opened {
			height: 3.3rem;
			transition: height 1s;
		}

		.message_content {
			position: relative;
			margin: 0 auto;
			padding: 0.95rem 1rem 1.05rem;
			color: ${window.theme.colorOnLight1};
			background: linear-gradient(
				135deg,
				transparent 0%,
				${window.theme.colorOnDark3} 33%,
				transparent 100%
			);
			box-shadow: 0 1.5px 0 1.5px #111;
			border-radius: 2px;
			text-align: center;
			> * {
				vertical-align: middle;
			}
			a {
				color: ${window.theme.colorOnDark1};
			}
			[class^="icon-"], [class*=" icon-"] {
				position:relative;
				top:-0.15rem;
				padding-right:0.15rem;
				font-size:115%;
			}

			.message_text {
				padding: 0 2rem 0 0;
				.message_text {
					display: none;
					margin: 1rem 0 0;
					padding: 0 1.5rem;
					> div {
						margin: 0.5rem 0;
					}
					.message_text {
						margin: 1rem 0 0;
						padding: 0 3rem;
						> div {
							list-style: bullet;
						}
					}
				}
				.more {
					padding-left: 0.5rem;
					color: ${window.theme.colorOnLight2};
					cursor: pointer;
				}
				&.messageTitle {
					font-weight: bold;
					font-size: 1.25rem;
					line-height: 1.25rem;
					margin-top: 0.15rem;
					margin-bottom: -0.175rem;
				}
				&.messageSupport {
					color: ${window.theme.colorOnLight2};
					font-size: 1.1rem;
				}
				&.messageSupportDetails {
					color: ${window.theme.colorOnDark1};
					margin-left: 2rem;
				}
			}

			.messageX {
				position: absolute;
				top: 0;
				right: 0;
				padding: 0.9rem;
				cursor: pointer;
				font-size: 1.25rem;
				line-height: 1.25rem;
				background: transparent;
			}

			.utfIcon {
				font-size: 125%;
				line-height: 1rem;
				padding: 0 0.25rem 0 0;
				vertical-align: middle;
				display: inline-block;
				margin: -0.15rem 0 0 0;
			}
		}
		&:hover {
			.message_text > div > .more {
				display: none;
			}
			.message_text > .message_text {
				display: block;
			}
		}
	}

	.message.theme_error {
		background: ${window.theme.colorWarn1};
		.message_content {
			color: ${window.theme.colorOnDark1};
			.messageMore {
				color: ${window.theme.colorOnDark2};
			}
		}
	}
	.message.theme_warning {
		background: ${window.theme.colorOrange3};
		.message_content {
			color: ${window.theme.colorOnDark1};
			.messageMore {
				color: ${window.theme.colorOnDark2};
			}
		}
	}
	.message.theme_success {
		background: ${window.theme.colorGreen1};
		.message_content {
			color: ${window.theme.colorOnDark1};
			.messageMore {
				color: ${window.theme.colorOnDark2};
			}
		}
	}

	@media (max-width: 750px) {
		.messages_container {
			position: fixed;
			top: 0;
			left: 0;
			z-index: 1000000000;
			width: 100%;
			.message.opened {
				height: auto;
			}
		}
	}
`;
