/*
	private lib: pure functions
	*** no binding or side effects ***
*/
function isNotEqualShallow(a, b) {
	return JSON.stringify(a) !== JSON.stringify(b);
}
function isEqualShallow(a, b) {
	return JSON.stringify(a) === JSON.stringify(b);
}
function _get_property(itemsObject, name, value) {
	const nameArray = name.split('.');
	var formValue;
	if (nameArray[1]) {
		if (itemsObject[nameArray[0]]) {
			formValue = itemsObject[nameArray[0]][nameArray[1]] || '';
		} else {
			formValue = '';
		}
	} else {
		formValue = itemsObject[name] || '';
	}
	return formValue;
}

/*
	private lib: functional functions
	*** with side effects ***
*/
function _set_property(itemsObject, name, value) {
	const nameArray = name.split('.');
	if (nameArray[1]) {
		itemsObject[nameArray[0]][nameArray[1]] = value;
	} else {
		itemsObject[name] = value;
	}
}

export { isEqualShallow, isNotEqualShallow, _get_property, _set_property };
