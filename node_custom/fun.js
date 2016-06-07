exports.url_uid = function(str) {
	// simple
	str = str.replace(/[^A-Za-z0-9]/g, '');
	// unique
	var hash = 0;
	if (str.length == 0) {
		return hash;
	}
	for (i = 0; i < str.length; i++) {
		char = str.charCodeAt(i);
		hash = ((hash << 5) - hash) + char;
		hash = hash & hash; // Convert to 32bit integer
	}
	// ok
	return str + hash;
};

exports.make_uid = function(length) {
	length = parseInt(length);
	if (!length) {
		length = 11;
	}
	var text = "";
	var possible = "abcdefghijklmnopqrstuvwxyz";
	text += possible.charAt(Math.floor(Math.random() * possible.length));
	possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
	for (i = 1; i < length; i++) {
		text += possible.charAt(Math.floor(Math.random() * possible.length));
	}
	return text;
};

exports.to_query_string = function(obj) {
	var parts = [];
	for (var i in obj) {
		if (obj.hasOwnProperty(i)) {
			parts.push(encodeURIComponent(i) + "=" + encodeURIComponent(obj[i]));
		}
	}
	return parts.join("&");
};

exports.addslashes = function(str) {
	// str = str.replace(/\\/g, '\\\\');
	// str = str.replace(/\'/g, '\\\'');
	// str = str.replace(/\"/g, '\\"');
	// str = str.replace(/\0/g, '\\0');
	return str;
};

exports.stripslashes = function(str) {
	// str = str.replace(/\\'/g, '\'');
	// str = str.replace(/\\"/g, '"');
	// str = str.replace(/\\0/g, '\0');
	// str = str.replace(/\\\\/g, '\\');
	return str;
};

// var cutOldBeginning = function(oldWhole, newWhole) {
// 	if (!newWhole) {
// 		return false;
// 	}
// 	if (!oldWhole) {
// 		return newWhole;
// 	}
// 	var output = newWhole;
// 	var oldWholeArray = oldWhole.split(' ');
// 	for (var ea in oldWholeArray) {
// 		ea = parseInt(ea);
// 		var oldStart = oldWholeArray.slice(0,ea+1).join(' ');
// 		if (ea==0) {
// 			continue;
// 		}
// 		if (newWhole.startsWith(oldStart)) {
// 			output = '<span class="fragment">'+newWhole.replace(oldStart,'')+'</span>';
// 		} else {
// 			break;
// 		}
// 	}
// 	return output;
// };