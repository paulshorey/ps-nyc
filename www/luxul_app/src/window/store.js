// no flow here - incompatible - besides, this already does type checking
/*
	First of all, lets add reliable browser support for Object.Prototype watch
*/
import './lib/Object.prototype.watch';

/*
	1) define default properties
	* optionally define sub-properties, so that we can look back here at any time and see what our global store should contain
	* optionally, add some comments to document each property. Again, this is only to be able to view quickly what each should be. Properties and subproperties are actually validated in step 2
*/
window.store = {
	message: {
		title: '', // string
		type: '', // string (optional)
		opened: false, // boolean, to show or hide independently from content, for smooth animation
		supportDetails: [], // array of strings, to be displayed in <ul><li> to support the message title (optional)
	},
	popup: {
		Box: null, // React Component or null
		opened: false, // boolean, to show or hide markup independently from content, for smooth animation and to keep width during transition
	},
	side: {
		Box: null, // React Component or null
		opened: false, // boolean, to show or hide markup independently from content, for smooth animation and to keep width during transition
	},
	nav: {
		opened: true, // boolean, to show or hide navigation links
	},
	hintbox: {
		title: '', // string
		description: null, // React component(s) or null
		opened: false, // boolean, to show or hide
	},
	deviceInfo: {
		model: '', // string
		firmware: '', // string
	},
};

/*
	2) optional
	* do type checking and filtering on those properties before the value is changed
	* Proxy takes 2 arguments. First, the store object. Then, the functions (handlers) to run on it: get, set, has, construct, etc
	* https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Proxy
*/
window.store = new Proxy(window.store, {
	set(store, propertyName, value) {
		var oldValue = store[propertyName] || {};

		// new value must be object!
		if (typeof value !== 'object') {
			window.log(
				'error',
				`window.${propertyName} must be type "object" ... fixing to = {}`,
				['before', oldValue],
				['after', value]
			);
			value = {};
		}

		// custom validation
		switch (propertyName) {
			case 'message':
				// opened by default
				if (value.title && value.opened === undefined) {
					value.opened = true;
				}
				// if no type specified, use old - for smooth transition - so if you set to an empty object or false, it will close, but while closing remain the same color as before
				if (!value.type && oldValue.type) {
					value.type = oldValue.type;
				}
				break;

			case 'hintbox':
				// title required
				if (value.opened && !value.title) {
					window.log(
						'error',
						`window.${propertyName} must have property "title"`[('before', oldValue)],
						['after', value]
					);
				}
				// opened by default
				if (value.title && value.opened === undefined) {
					value.opened = true;
				}
				// if no content specified, use old - for smooth transition - so if you set to an empty object or false, it will close, but while closing remain the same color as before
				if (!value.title && oldValue.title) {
					value.title = oldValue.title;
					value.description = oldValue.description;
				}
				break;

			case 'side':
			case 'popup':
				// opened by default
				if (value.Box && value.opened === undefined) {
					value.opened = true;
				}
				// smooth transition
				if (!value.Box && oldValue.Box) {
					value.Box = oldValue.Box;
					value.opened = false;
					setTimeout(function() {
						window.store[propertyName].Box = null;
					}, 1000);
				}
				break;

			default:
				break;
		}

		/*
				debugging
			*/
		if (process && process.env.NODE_ENV && process.env.NODE_ENV === 'development') {
			window.log('window.' + propertyName + ' set', ['before', oldValue], ['after', value]);
		}

		/*
				done checking, set store value
			*/
		store[propertyName] = value;
		return value;
	},
});
// To make window.store as "const" instead of "var" so it cannot be deleted, create the Proxy using this code. Keeping this out for now so our code is easier to understand
// Object.defineProperty(window, 'store', {
// enumerable: false,
// configurable: false,
// writable: false,
// value: new Proxy(

/*
	3) change each variable in the global store as if it was a normal global variable

	window.store.message = {title:"Error or something!"}
*/

/*
	4) read each variable using normal Javascript

	<div>window.store.message.title</div>
*/

/*	
	5) 

	// 5a.
	// to make the variable in your React component dynamically update when its value changes, just add this bit of code...

	componentWillMount(){
		this._isMounted = true;

		// sync GLOBAL with LOCAL store, selectively:
		window.store.watch("message",(propertyName,oldValue,value)=>{
			if (this._isMounted) {
				this.setState({[propertyName]:value});
			}
			return value;
		});
	}

	// 5b.
	// instead of reading from window like this <div>{window.store.message.title}</div>
	// read from the local reference, which is dynamic <div>{this.store.message.title}</div>

	// 5c.
	// don't forget to unwatch whatever you watch... this._isMounted is useful for other things and is nice to have regardless

	componentWillUnmount(){
		this._isMounted = false;

		// clean up watchers
		window.store.unwatch("message");
	}
	
*/

export default {};
