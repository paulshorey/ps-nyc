(function() {
    "use strict";
})();

var Clock = (function(){

	// now
	var d = new Date();
	var hour = d.getHours();
	var minute = d.getMinutes();
	var second = d.getSeconds();
	var millisecond = d.getMilliseconds();

	// clock hands
	var hands = document.createElement("div");
	hands.className = "hands";
	document.body.appendChild(hands);

	var handHour = document.createElement("div");
	handHour.className = "hand hand-hour";
	handHour.classList.add('spun');
	handHour.style.transform = 'rotate('+((hour/24)*360)+'deg)';
	document.body.querySelector('.hands').appendChild(handHour);

	var handMinute = document.createElement("div");
	handMinute.className = "hand hand-minute";
	handMinute.classList.add('spun');
	handMinute.style.transform = 'rotate('+((minute/60)*360)+'deg)';
	document.body.querySelector('.hands').appendChild(handMinute);

	var handSecond = document.createElement("div");
	handSecond.className = "hand hand-second";
	handSecond.classList.add('spun');
	handSecond.style.transform = 'rotate('+((second/60)*360)+'deg)';
	document.body.querySelector('.hands').appendChild(handSecond);

	var handMillisecond = document.createElement("div");
	handMillisecond.className = "hand hand-millisecond";
	handMillisecond.classList.add('spun');
	handMillisecond.style.transform = 'rotate(0deg)';
	document.body.querySelector('.hands').appendChild(handMillisecond);

	var theTime = document.createElement("div");
	theTime.className = "theTime";
	theTime.classList.add('spun');
	document.body.appendChild(theTime);

	// time
	var pad = function(str) {
		str = str.toString();
		var strlen = str.length || 1;
		return (strlen < 2 ? "0" + str : str.substring(0,2));
	};
	var makeTime = function(){
		var d = new Date();
		var hour = d.getHours();
		var minute = d.getMinutes();
		var second = d.getSeconds();
		var milliseconds = d.getMilliseconds();
		theTime.innerHTML = pad(hour)+':'+pad(minute)+'::'+pad(second);
	};
	var metronome = setInterval(makeTime, 1000);
	makeTime();

	// var resetTime = function(){
	// 	// reset arrows to 0
	// 	// make a new object to hold temporary time, to compare later to stopwatch time
	// };
	// window.document.body.attachEvent("onClick", resetTime);

})();