/*
	export: validations
	* passed to LuxulInput, LuxulSelect, etc to validate form field value 
	* runs before allowing form to be submitted
*/
var validations = {
	required: function(value) {
		return value ? undefined : this && this.message ? this.message : 'Required';
	},
	fullname: function(value) {
		var re = /^[a-z]([-']?[a-z]+)*( [a-z]([-']?[a-z])*){1,2}$/i;
		return !value || re.test(value)
			? undefined
			: this && this.message ? this.message : 'Must be full name. Middle name or initial optional';
	},
	email: function(value) {
		var re = /^\w+([.-]?\w+)*@\w+([.-]?\w+)*(.\w{2,3})+$/;
		return !value || re.test(value)
			? undefined
			: this && this.message ? this.message : 'Invalid email';
	},
	zipcode: function(value) {
		var re = /(^\d{5}$)|(^\d{5}-\d{4}$)/;
		return !value || re.test(value)
			? undefined
			: this && this.message ? this.message : 'Invalid zipcode';
	},
	ipv4: function(value) {
		var re = /^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$/g;
		return !value || re.test(value)
			? undefined
			: this && this.message ? this.message : 'Invalid IP address';
	},
	ipv6: function(value) {
		var re = /^s*((([0-9A-Fa-f]{1,4}:){7}([0-9A-Fa-f]{1,4}|:))|(([0-9A-Fa-f]{1,4}:){6}(:[0-9A-Fa-f]{1,4}|((25[0-5]|2[0-4]d|1dd|[1-9]?d)(.(25[0-5]|2[0-4]d|1dd|[1-9]?d)){3})|:))|(([0-9A-Fa-f]{1,4}:){5}(((:[0-9A-Fa-f]{1,4}){1,2})|:((25[0-5]|2[0-4]d|1dd|[1-9]?d)(.(25[0-5]|2[0-4]d|1dd|[1-9]?d)){3})|:))|(([0-9A-Fa-f]{1,4}:){4}(((:[0-9A-Fa-f]{1,4}){1,3})|((:[0-9A-Fa-f]{1,4})?:((25[0-5]|2[0-4]d|1dd|[1-9]?d)(.(25[0-5]|2[0-4]d|1dd|[1-9]?d)){3}))|:))|(([0-9A-Fa-f]{1,4}:){3}(((:[0-9A-Fa-f]{1,4}){1,4})|((:[0-9A-Fa-f]{1,4}){0,2}:((25[0-5]|2[0-4]d|1dd|[1-9]?d)(.(25[0-5]|2[0-4]d|1dd|[1-9]?d)){3}))|:))|(([0-9A-Fa-f]{1,4}:){2}(((:[0-9A-Fa-f]{1,4}){1,5})|((:[0-9A-Fa-f]{1,4}){0,3}:((25[0-5]|2[0-4]d|1dd|[1-9]?d)(.(25[0-5]|2[0-4]d|1dd|[1-9]?d)){3}))|:))|(([0-9A-Fa-f]{1,4}:){1}(((:[0-9A-Fa-f]{1,4}){1,6})|((:[0-9A-Fa-f]{1,4}){0,4}:((25[0-5]|2[0-4]d|1dd|[1-9]?d)(.(25[0-5]|2[0-4]d|1dd|[1-9]?d)){3}))|:))|(:(((:[0-9A-Fa-f]{1,4}){1,7})|((:[0-9A-Fa-f]{1,4}){0,5}:((25[0-5]|2[0-4]d|1dd|[1-9]?d)(.(25[0-5]|2[0-4]d|1dd|[1-9]?d)){3}))|:)))(%.+)?s*(\/([0-9]|[1-9][0-9]|1[0-1][0-9]|12[0-8]))?$/gim;
		return !value || re.test(value)
			? undefined
			: this && this.message
				? this.message
				: 'Invalid IP address version 6. Example: 0:0:0:0:0:0:0:0 or ::';
	},
};

export default validations;
