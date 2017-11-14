/*
	lets import whatever variables "index.js" is importing, except ofcourse styles and stuff only relating to the app environment
	that way our global and important variables like ubus are consistent!
*/
import 'window/log.js';
import 'window/theme.js';
import 'window/store';
import * as ubus from 'ubus'; /* pass this to each Route */
