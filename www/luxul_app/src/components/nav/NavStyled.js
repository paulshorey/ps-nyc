import styled from 'styled-components';

export const Nav = styled.nav`
	/*
		order is important for specificicity! style .group first, then .title
	*/
	display: block;
	position: relative;
	color: #fff;
	font-size: 1rem;
	padding: 1rem 0 1.25rem;
	.group {
		.children {
			.title {
				color: #fff;
				.fontIcon {
					display: none;
				}
			}
		}
		&.opened {
			.title {
				.fontIcon.icon-navlink_minus {
					display: block;
				}
			}
			.children {
				display: block;
			}
		}
		&:not(.opened) {
			&.active {
				.title {
					color: ${window.theme.colorGreen1};
				}
			}
			.title {
				.fontIcon.icon-navlink_plus {
					display: block;
				}
			}
		}
	}
	.title {
		cursor: pointer;
		display: block;
		color: ${window.theme.colorOnDark2};
		display: flex;
		padding: 0.3rem 0 0.6rem;
		transition: color 0.25s;
		font-size: 1.5rem;
		@media (max-width: 750px) {
			min-width: 14rem;
		}
		&.link {
			&.active {
				color: ${window.theme.colorGreen1};
			}
		}
		.fontIcon {
			display: none;
			font-size: 1rem;
			padding: 0.25rem 0.25rem 0.25rem 0;
		}
		.fontIcon.icon-navlink_dot {
			display: block;
		}
	}
	.children {
		display: none;
		padding: 0 0 0 1.25rem;
		.fontIcon {
			display: none;
		}
	}

	/*
		mobile (hamburger menu)
	*/
	@media (max-width: 750px) {
		max-width: 28rem;
		transition: max-width 0.66s, min-width 0.66s;
		overflow: hidden;

		&.closed {
			max-width: 0;
			min-width: 0;
			transition: max-width 0.33s, min-width 0.33s;
		}

		.title {
			padding-left: 0.75rem;
		}
	}
`;
