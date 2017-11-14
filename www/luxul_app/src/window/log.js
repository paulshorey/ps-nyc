/*
	* creates ${window.log} as a function similar to ${window.console.log} but better formatted
	-
	* this simply gives the standard "window.console.log()" function a purely aesthetic "makeover"
	* you may continue to use "window.console.log()" as before, this does not change
	* now you'll have a new function "window.log()", which adds some optional style and formatting to console.log()
	* to use, do simply: "window.log('dsfasdf');"
	* or add a style as the first parameter: "window.log('success', 'adsfadf');"
	* if you have more than one parameter to print out, it will log the first as a group and nest the others inside it, just like redux-logger does for actions
*/
module.exports = {
	for_development: function() {
		let args = Array.from(arguments);
		/*
			theme
		*/
		var log = {
			titleColor: 'rgba(255,255,255,0.75)',
			textColor: 'rgba(0,0,0,0.75)',
			bgColor: 'rgb(30,30,30)',
		};
		switch (args[0]) {
			case 'error':
				log.titleColor = 'Tomato';
				log.textColor = 'red';
				if (args[1]) {
					args = args.slice(1);
				}
				break;
			case 'warning':
				log.titleColor = 'lightorange';
				log.textColor = 'darkorange';
				if (args[1]) {
					args = args.slice(1);
				}
				break;
			case 'success':
				log.titleColor = 'lightgreen';
				log.textColor = 'darkgreen';
				if (args[1]) {
					args = args.slice(1);
				}
				break;
			case 'log':
				log.bgColor = 'rgb(255,255,255)';
				log.titleColor = 'darkgrey';
				log.textColor = 'black';
				if (args[1]) {
					args = args.slice(1);
				}
				break;
			default:
				break;
		}
		/*
			log
		*/
		for (var i = 0; i < args.length; i++) {
			if (i === 0) {
				if (typeof args[0] === 'string') {
					if (args[1]) {
						// groupStart
						window.console.groupCollapsed(
							'%c ' + args[i] + ' ',
							'background:' + log.bgColor + ';color:' + log.titleColor + ';padding:1px 0;'
						);
					} else {
						// log
						console.log(
							'%c ' + args[i] + ' ',
							'background:' + log.bgColor + ';color:' + log.titleColor + ';padding:1px 0;'
						);
					}
				}
			} else if (args[i]) {
				if (args[i].length > 1 && typeof args[0] === 'string' && typeof args[1] === 'object') {
					// group (mimick redux logger "prev state" "action" "next state" logging)
					console.log('%c ' + args[i][0], 'color:darkgrey;', args[i][1]);
				} else {
					// normal
					console.log(args[i]);
				}
			}
		}
		// groupEnd
		if (typeof args[0] === 'string' && args[1]) {
			window.console.groupEnd();
		}
	},
	for_production: function() {
		// do not log in production!
	},
};

if (process && process.env.NODE_ENV && process.env.NODE_ENV === 'development') {
	window.log = module.exports.for_development;
} else {
	window.log = module.exports.for_production;
}
