import styled from 'styled-components';

/*
	notes:
	* Built version (as in "npm run build") can't handle "%" height on a container layout element. So, using "vh" instead of "%" wherever possible
*/

export const PageLogin = styled.div`
	position: relative;
	width: 100%;
	height: 100vh;
	display: flex;
	align-items: center;
	top: -4.5rem;
	.box {
		width: 405px;
		margin-left: auto !important;
		margin-right: auto !important;
		@media (min-height: 380px) {
			margin-top: -3rem;
		}
		form {
			min-height: 0 !important;
		}
		.formSubmit {
			position: absolute;
			top: auto;
			left: auto;
			bottom: 0;
			right: 1.25rem;
			text-align: right;
			width: 100%;
		}
	}

	@media (max-width: 750px) and (max-height: 510px) and (min-width: 480px) {
		.box {
			width: 320px;
		}
	}
	@media (max-width: 510px) {
		.box {
			max-width: calc(100% - 2rem);
			margin-left: 1rem;
			margin-right: 1rem;
		}
	}

	/* 
		desktop 
	*/
	@media (min-width: 751px) and (min-height: 600px) {
	}

	/* 
		tablet portrait 
	*/
	@media (min-width: 601px) and (max-width: 750px) and (min-height: 601px) {
	}

	/* 
		tablet landscape 
	*/
	@media (min-width: 750px) and (max-height: 600px) {
	}

	/* 
		phone portrait 
	*/
	@media (max-width: 600px) {
	}

	/* 
		phone landscape 
	*/
	@media (min-width: 601px) and (max-width: 750px) and (max-height: 600px) {
	}

	/* 
		NOT desktop 
	*/
	@media (max-width: 750px), (max-height: 600px) {
	}

	/* 
		NOT phone
	*/
	@media (min-width: 751px), (min-width: 601px) and (min-height: 601px) {
	}
`;
