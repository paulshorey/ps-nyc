import styled from 'styled-components';

export const FormScrollbars = styled.div`
	::-webkit-scrollbar {
		-webkit-appearance: none;
		width: 6px;
		height: 6px;
	}
	::-webkit-scrollbar-thumb {
		position: relative;
		border-radius: 6px;
		background-color: var(--app-colorOnLight3);
		z-index: 999;
		margin: -1px 0;
	}
`;

export const Form = styled.form`
	margin: 0;

	padding: 0 1.25rem;
	/* except in popupBox */
	.popupBox & {
		padding: 0;
	}

	.LuxulInput input:focus {
		border-color: ${window.theme.colorGreen1};
	}
	sup {
		font-weight: normal;
		opacity: 0.5;
	}

	&.changed .ifNotChanged {
		display: none;
	}
	&:not(.changed) .ifChanged {
		display: none;
	}
	&.touched .ifNotTouched {
		display: none;
	}
	&:not(.touched) .ifTouched {
		display: none;
	}
	&.invalid .ifNotInvalid {
		display: none;
	}
	&:not(.invalid) .ifInvalid {
		display: none;
	}
	&.submitAttempted .ifNotSubmitAttempted {
		display: none;
	}
	&:not(.submitAttempted) .ifSubmitAttempted {
		display: none;
	}

	/*
		scroll
	*/
	.scrollCue {
		position: fixed;
		bottom: 0;
		@media (max-width: 750px) {
			display: none;
		}
	}
	&:not(.scrollDown) {
		.scrollCue {
			display: none;
		}
	}

	/*
        contents
    */
	.formSection {
		padding: 1.75rem 0.25rem 1rem;
		.popupBox & {
			padding: 1rem 0.25rem 1.75rem;
		}
		@media (max-width: 750px) {
			padding-left: 0;
			padding-right: 0;
		}
		&.withHr {
			border-top: solid 1px ${window.theme.colorOnLight3};
			margin-top: 0.5rem;
			padding-top: 1.5rem;
		}
	}

	.formStats {
		position: fixed;
		top: 0;
		left: 0;
		padding: 0;
		background: rgba(255, 255, 255, 1);
		z-index: 1000000;
		height: 100%;
		width: 23rem;
		overflow: auto;
		white-space: pre;
	}

	.formSubmit {
		position: absolute;
		bottom: 0;
		right: 1.5rem; /* start to the left of IE scrollbar */
		padding: 1.25rem 0 1.5rem 0;
		pointer-events: none;
		text-align: right;
		pointer-events: none;
		> * {
			margin: 0 0 0 1.25rem;
			vertical-align: middle;
			pointer-events: all;
		}
		@media (max-width: 750px) {
			text-align: center;
			position: fixed;
			bottom: 0;
			width: 100%;
		}
	}
	.formSubmitSpacer {
		height: 5rem;
		@media (max-width: 750px) {
			height: 4rem;
		}
	}

	> * {
		clear: both;
	}
	fieldset {
		margin: 0.5rem 0;
		padding: 0.5rem 0.75rem 0.25rem 0.75rem;
		border: none;
		@media (max-width: 750px) {
			padding-left: 0;
			padding-right: 0;
		}
		.boxed {
			overflow: hidden;
			float: left;
			margin: 0.5rem 1rem 0.5rem 0;
			padding: 1.33rem 1.44rem 1.33rem 1.11rem;
			background: rgba(0, 0, 0, 0.05);
			max-width: calc(100% - 2.2rem);
			box-shadow: 0 1px 3px 1px rgba(0, 0, 0, 0.15);
		}
		.column {
			float: left;
			margin-right: 1.33rem;
			&:last-child {
				margin-right: 0;
			}
		}
		p {
			font-size: 0.9rem;
			margin: 0;
			padding: 0;
		}
		&.info {
			font-size: 1.25rem;
			padding: 0;
			margin: 0;
			> * {
				position: static;
				vertical-align: middle;
				display: inline-block;
				padding: 0;
				margin: 0;
				line-height: 1;
			}
			> label {
				width: 12.5rem;
				max-width: 42%;
				text-align: right;
				padding-right: 5%;
				padding-top: 0.49rem;
				padding-bottom: 0.49rem;
				white-space: nowrap;
			}
			> label + * {
				width: 50%;
			}
		}
	}

	.form_invalid,
	.control_message.invalid {
		clear: both;
		display: block;
		font-size: 75%;
		color: red;
		font-weight: normal;
	}
	.form_invalid {
		font-size: 100%;
		padding: 1rem;
	}

	.invalid {
		input {
			border-color: ${window.theme.colorWarn1} !important;
		}
	}

	.control {
		&.LuxulSelect {
			&:first-child {
				select {
					font-weight: bold;
				}
			}

			.control_message.invalid {
				position: relative;
				margin-top: -0.75rem;
			}
		}
	}

	.LuxulToggle {
		label {
			width: auto;
			display: inline-block;
			margin: 9px 0 15px;
			* {
				session-select: none;
			}
			a,
			area,
			input,
			label,
			select,
			summary,
			textarea {
				touch-action: manipulation;
			}
			hr,
			input {
				overflow: visible;
			}
			input {
				line-height: inherit;
			}
			input[type='checkbox'] {
				box-sizing: border-box;
				padding: 0;
			}
			input[type='checkbox']:checked,
			input[type='checkbox']:not(:checked) {
				position: absolute;
				left: -9999px;
				// visibility: hidden;
			}
			input[type='checkbox'] {
				opacity: 0;
				width: 0;
				height: 0;
			}
			input[type='checkbox']:checked + .lever {
				background-color: ${window.theme.colorGreen3};
			}
			.labelOff {
				padding: 0 7px 0 0;
				display: inline-block;
			}
			.labelOn {
				padding: 0 0 0 7px;
				display: inline-block;
			}
			.lever {
				vertical-align: top;
				position: relative;
				width: 40px;
				height: 15px;
				background-color: #818181;
				border-radius: 15px;
				transition: background 0.3s ease;
				margin: 0 2px;
			}
			.lever:after {
				position: absolute;
				width: 21px;
				height: 21px;
				background-color: #f1f1f1;
				border-radius: 21px;
				box-shadow: 0 1px 3px 1px rgba(0, 0, 0, 0.4);
				left: -1px;
				top: -3px;
				transition: left 0.3s ease, background 0.3s ease, box-shadow 0.1s ease;
			}
			.btn .fa,
			.btn-floating,
			.picker__box,
			.product-table td,
			.switch label .lever {
				vertical-align: middle;
			}
			input[type='checkbox']:checked + .lever:after {
				left: 24px;
			}
			input[type='checkbox']:checked + .lever:after {
				background-color: ${window.theme.colorGreen1};
			}
			input[type='checkbox']:disabled {
				cursor: not-allowed;
			}
			.lever,
			.lever:after {
				content: '';
				display: inline-block;
			}
		}
	}

	h1,
	h2,
	h3,
	h4,
	h5,
	h6 {
		margin: 0;
		padding: 0.5rem 0 1.25rem;
		font-size: 1.5rem;
		font-weight: bold;
		color: ${window.theme.colorGreen1};
		.fontIcon {
			position: relative;
			top: -0.33rem;
			left: 0.33rem;
			cursor: pointer !important;
			font-size: 60%;
			font-weight: 100;
			opacity: 0.66;
		}
	}

	.LuxulInput input,
	select,
	optgroup,
	textarea {
		position: relative;
		font-size: 1.33rem;
		line-height: 1rem;
		padding: 0.6rem;
		outline-width: 0;
		border: none;
		outline: none;
		text-overflow: ellipsis;
		font-family: ${window.theme.fontFamily};
		border-radius: 0;
		&:focus {
			outline: none;
			outline-width: none;
		}
		> * {
			font-size: 1.25rem;
			line-height: 1rem;
		}
	}
	.LuxulInput input:focus,
	select:focus,
	textarea:focus {
		outline: none;
		box-shadow: none !important;
	}
	/*
        mods
    */
	// @-webkit-keyframes mmLoadingLeft {
	//     0%{left:100%;}
	//     100%{left:-1000%;}
	// }
	// @-moz-keyframes mmLoadingLeft {
	//     0%{left:100%;}
	//     100%{left:-1000%;}
	// }
	// @keyframes mmLoadingLeft {
	//     0%{left:100%;}
	//     100%{left:-1000%;}
	// }
	// @-webkit-keyframes mmLoadingRight {
	//     0%{left:-1000%;}
	//     100%{left:100%;}
	// }
	// @-moz-keyframes mmLoadingRight {
	//     0%{left:-1000%;}
	//     100%{left:100%;}
	// }
	// @keyframes mmLoadingRight {
	//     0%{left:-1000%;}
	//     100%{left:100%;}
	// }

	select {
		background-clip: padding-box;
		background-color: rgba(255, 255, 255, 0);
		border: 0;
		border-bottom: 1px solid ${window.theme.colorNeutral};
		border-radius: 0;
		box-shadow: none;
		color: inherit;
		font-size: 1.25rem;
		height: 2.25rem;
		line-height: 1.25rem;
		padding: 0.5rem 0 0.4375rem;
		transition-duration: 0.3s;
		transition-property: border-bottom-color;
		transition-timing-function: cubic-bezier(0.4, 0, 0.2, 1);
		background-image: url("data:image/svg+xml;charset=utf8,%3Csvg fill='#000000' fill-opacity='0.54' height='24' viewBox='0 0 24 24' width='24' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M7 10l5 5 5-5z'/%3E%3Cpath d='M0 0h24v24H0z' fill='none'/%3E%3C/svg%3E");
		background-size: 1.5rem 1.5rem;
		background-position: 100% 0.375rem;
		background-repeat: no-repeat;
		padding-right: 1.5rem;
		-webkit-appearance: none;
		display: inline-block;
		vertical-align: middle;
		width: 15rem;
		min-width: 10rem;
		max-width: calc(100% - 1rem);
		margin: 0.25rem -1.5rem 1rem 0;
		text-overflow: ellipsis;
		option {
			font-weight: normal;
			display: block;
			white-space: pre;
			min-height: 1.2em;
			padding: 0px 2px 1px;
		}
	}
	.nolabel select {
		font-weight: bold;
	}
	.invalid select {
		border-color: ${window.theme.colorWarn1};
	}

	.LuxulSelect {
		margin-right: -2rem !important;
		select {
		}
	}

	.LuxulInput {
		input {
			border-bottom: 1px solid ${window.theme.colorNeutral};
			padding: 0.5rem 0 0.33rem 0;
			width: 15rem;
			max-width: calc(100% - 1rem);
			margin: 0.25rem 0;
			color: ${window.theme.colorOnLight1};
			&::-webkit-input-placeholder {
				color: ${window.theme.colorOnLight3};
				line-height: 133%; // safari bug - can't inherit placeholder line-height
				font-size: 1.4rem;
				vertical-align: baseline;
			}
			&::-moz-placeholder {
				color: ${window.theme.colorOnLight3};
				line-height: 133%; // safari bug - can't inherit placeholder line-height
				font-size: 1.4rem;
				vertical-align: baseline;
			}
			&::-ms-input-placeholder {
				color: ${window.theme.colorOnLight3};
				line-height: 133%; // safari bug - can't inherit placeholder line-height
				font-size: 1.4rem;
				vertical-align: baseline;
			}
		}
	}
	label {
		position: relative;
		top: 0.25rem;
		display: block;
		font-weight: bold;
		margin-top: 0.125rem;
	}
	label + * {
		margin-top: 0;
	}

	/*
        table
    */
	table {
		color: inherit;
		border-spacing: 0;
		border-collapse: separate;
	}
	.LuxulRows {
		table {
			width: 100%;
			td {
				padding: 0 0 0 1rem;
			}
		}
	}
	.LuxulColumns {
		table {
			width: 100%;
		}
	}

	/**************************************************
		Responsive Layout
	**************************************************/

	/*
		desktop
	*/
	@media (min-width: 751px) and (min-height: 601px) {
		max-height: calc(100vh - 9.5rem);
	}

	/* 
		NOT desktop 
	*/
	@media (max-width: 750px), (max-height: 600px) {
		.formSubmit {
			position: fixed;
		}
	}

	/* 
		tablet portrait 
	*/
	@media (min-width: 601px) and (max-width: 750px) and (min-height: 601px) {
		min-height: calc(100vh - 4.5rem);
	}

	/* 
		tablet landscape 
	*/
	@media (min-width: 750px) and (max-height: 600px) {
		max-height: calc(100vh - 5rem);
	}

	/* 
		phone portrait 
	*/
	@media (max-width: 600px) {
		min-height: calc(100vh - 4.5rem);
	}

	/* 
		phone landscape 
	*/
	@media (min-width: 601px) and (max-width: 750px) and (max-height: 600px) {
		min-height: calc(100vh - 4.5rem);
	}

	/* 
		NOT phone
	*/
	@media (min-width: 751px), (min-width: 601px) and (min-height: 601px) {
	}
`;
