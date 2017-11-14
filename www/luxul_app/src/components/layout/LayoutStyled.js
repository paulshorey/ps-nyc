import styled from 'styled-components';

/*
	notes:
	* Built version (as in "npm run build") can't handle "%" height on a container layout element. So, using "vh" instead of "%" wherever possible
*/

export const Layout = styled.div`
	.layout_container {
		position: relative;
		padding: 0;
		margin: 0 auto;
		max-width: ${window.theme.containerMaxWidth};
		position: relative;
		height: 100vh;
		overflow: visible;
		zoom: 1;
		outline-width: 0;
		@media (min-height: 500px) {
			display: flex;
			flex-direction: column;
		}
		.layout_content {
			display: flex;
			flex-direction: row;
			min-height: calc(100vh - ${window.theme.topHeight});
			@media (min-width: 751px) {
				min-width: 720px;
			}
			.page {
				flex-grow: 1;
				margin: 1.5rem 0 0 0;
				padding-right: 0;
				position: relative;
				z-index: 100;
				@media (max-width: 750px) {
					margin: 0;
					width: calc(100% - 1rem);
					min-width: calc(100% - 1rem);
				}
				.box {
					@media (max-width: 1080px) {
						margin-right: 0.25rem;
					}
					.box_middle {
						padding: 0;
					}
				}
			}
		}
	}
`;
