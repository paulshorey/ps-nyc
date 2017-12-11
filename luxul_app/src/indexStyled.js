import { injectGlobal } from 'styled-components';

/*
	notes:
	* Built version (as in "npm run build") can't handle "%" height on a container layout element. So, using "vh" instead of "%" wherever possible
*/

injectGlobal`

	/**************************************************
		reset
	**************************************************/
	input:-webkit-autofill {
			-webkit-box-shadow: 0 0 0px 1000px white inset;
	}
	/* 
	::-webkit-scrollbar {
	-webkit-appearance: none;
	width: 7px;
	}
	::-webkit-scrollbar-thumb {
	border-radius: 4px;
	background-color: rgba(0, 0, 0, .5);
	-webkit-box-shadow: 0 0 1px rgba(255, 255, 255, .5);
	} 
	*/
	html, body, #app, #pages {
		height:100%;
		width:100%;
	}
	body {
		margin: 0;
		padding: 0;
	}


	/**************************************************
		responsive text
	**************************************************/
	html {
		font-size:16.5px;
	}
	@media (max-width:950px), (max-height:750px) {
		html {
			font-size:15.5px;
		}
	}
	@media (max-width:750px), (max-height:650px) {
		html {
			font-size:14.5px;
		}
	}
	@media (max-width:380px), (max-height:380px) {
		html {
			font-size:13.5px;
		}
	}
	@media (max-width:330px), (max-height:330px) {
		html {
			font-size:12.5px;
		}
	}
	h1,h2,h3,h4,h5,h6,p {
		margin:0;
		padding:0;
		line-height:1.25rem;
	}
	p {
		margin:0.75rem 0;
		font-size:1rem;
	}
	h1 {
		font-size:1.9rem;
	}
	h2 {
		font-size:1.75rem;
	}
	h3 {
		font-size:1.6rem;
	}
	h4 {
		font-size:1.45rem;
	}
	h5 {
		font-size:1.3rem;
	}
	h6 {
		font-size:1.15rem;
	}
	li {
		padding-bottom:0.5rem;
	}


	/**************************************************
		style
	**************************************************/
	* {
		font-family: ${window.theme.fontFamily} !important;
		vertical-align:middle; /* hope this doesn't mess anything up - but in my experience, having vertical-align middle was always more useful than not - PS */
	}
	body {
		background: ${window.theme.colorDark2};
		color: ${window.theme.colorOnDark3};
	}
	a {
		color:rgb(100, 123, 146);
		text-decoration: none;
	}
	.nav_left {
		min-width:${window.theme.sidebarNavWidth};
		margin-right:1rem;
	}
	@media (min-width:751px) {
		.nav_left {
			margin-left:1rem;
		}
	}
	.nav_center {
		flex-grow:1;
	}
	.nav_right {
		text-align:right;
	}
	.color_success {
		color: ${window.theme.colorGreen1};
	}
	.color_error {
		color: ${window.theme.colorWarn1};
	}
	.fix_textWrap {
		display: inline-block;
	}

	/**************************************************
		icon
	**************************************************/
	.utfIcon,
	.fontIcon,
	.fontIcon:before {
		width:1em;
		height:1em;
		line-height:1em; 
		font-size:1em;
		padding:0;
		margin:0;
		text-align:center;
		display:inline-block;
		vertical-align:baseline;
	}
	.fontIcon.alignWithText,
	.fontIcon.alignWithText:before {
		vertical-align:top;
	}
	.fontIconText {
		padding-top:0.25rem;
		display:inline-block;
	}


	/**************************************************
		button loader ???
	**************************************************/
	@keyframes loader_button_opacitychange{
		10%, 100%{
			opacity: 0;
		}
		60%{
			opacity: 1;
		}
	}
	.loader_button {
		border-radius: 100%;
		position: relative;
		margin: 0 auto 0 auto !important;
		display: flex;
			align-items: center;
			z-index:100;
		background:none;
			> div {
				width:100%;
				text-align:center;
			font-size:1em;
			line-height:1em;
			span{
				display: inline-block;
				width: 0.75rem;
				height: 0.75rem;
				border-radius: 100%;
				background-color: #ffffff;
				margin: 0;
				opacity: 0;
				font-size:1em;
				line-height:1em;
			}
			span:nth-child(1){
				animation: loader_button_opacitychange 1s ease-in-out infinite;
			}
			span:nth-child(2){
				animation: loader_button_opacitychange 1s ease-in-out 0.3s infinite;
				margin: 0 0.25rem;
			}
			span:nth-child(3){
				animation: loader_button_opacitychange 1s ease-in-out 0.6s infinite;
			}
		}	
	}



	/**************************************************
		
		READ THIS COMMENT !!!

		* do not remove this section
		* don't fuck with the @media sizes or title comments
		* use this as a template - copy paste these rules, and remove everything except @media rules
		* also good to use as a demo to figure out screen size breakpoints - keep as is and simply remove the !important flag below
	**************************************************/
	.responsive_label {
		display:none !important; /* !important to disable demo message */
		position:fixed;
		top:0;
		left:0;
		width:100%;
		height:0.9rem;
		font-size:1.25rem;
		line-height:1.25rem;
		text-align:center;
		background:orange;
		color:black;
		opacity:0.5;
	}
	
	/* 
		desktop 
	*/
	@media (min-width: 751px) and (min-height:601px) {
		#responsive_desktop {
			display:block;
		}
	}
	
	/* 
		NOT desktop 
	*/
	@media (max-width: 750px), (max-height:600px) {
	}

	/* 
		tablet portrait 
	*/
	@media (min-width:601px) and (max-width: 750px) and (min-height: 601px) {
		#responsive_tablet_portrait {
			display:block;
		}
	}

	/* 
		tablet landscape 
	*/
	@media (min-width: 750px) and (max-height: 600px) {
		#responsive_tablet_landscape {
			display:block;
		}
	}

	/* 
		phone portrait 
	*/
	@media (max-width: 600px) {
		#responsive_phone_portrait {
			display:block;
		}
	}

	/* 
		phone landscape 
	*/
	@media (min-width:601px) and (max-width: 750px) and (max-height: 600px) {
		#responsive_phone_landscape {
			display:block;
		}
	}

	/* 
		NOT phone
	*/
	@media (min-width: 751px), (min-width:601px) and (min-height: 601px) {
		body {
			background: linear-gradient(180deg, ${window.theme.colorDark1} 0px,  ${window.theme
	.colorDark2} 100px,  ${window.theme.colorDark3} 260px, ${window.theme.colorDark3} 380px, ${window
	.theme.colorDark3} 380px, ${window.theme.colorDark1} 100%);
		}
	}
`;
