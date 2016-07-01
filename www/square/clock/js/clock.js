(function() {
    "use strict";
})();

var Clock = function(clockContainer){

	// this
	var clock = {

		lib: {
			pad: function(str) {
				str = parseInt(str).toString();
				var strlen = str.length || 1;
				return (strlen < 2 ? "0" + str : str.substring(0,2));
			}
		},

		hands: document.createElement("div"),
		handHour: document.createElement("div"),
		handMinute: document.createElement("div"),
		handSecond: document.createElement("div"),
		handMillisecond: document.createElement("div"),
		digitalClock: document.createElement("div"),
		digitalStopwatch: document.createElement("div"),

		construct: function(){
			clockContainer.appendChild(clock.hands);
			clock.hands.appendChild(clock.handHour);
			clock.hands.appendChild(clock.handMinute);
			clock.hands.appendChild(clock.handSecond);
			clock.hands.appendChild(clock.handMillisecond);
			clockContainer.appendChild(clock.digitalClock);
			clockContainer.appendChild(clock.digitalStopwatch);
			clock.time();
			clockContainer.onclick = clock.watch;
		},

		time: function(){
			clock.timeRun();
			clock.timeInterval = setInterval(clock.timeRun, 1000);

			// clock hands
			clock.hands.className = "hands";

			clock.handHour.className = "hand hand-hour";
			clock.handHour.classList.add('spun');
			clock.handHour.style.transform = 'rotate('+( ((clock.hour/12)*360)+((clock.minute/60)*30)+((clock.second/60)*0.5) -90)+'deg)';

			clock.handMinute.className = "hand hand-minute";
			clock.handMinute.classList.add('spun');
			clock.handMinute.style.transform = 'rotate('+( ((clock.minute/60)*360)+((clock.second/60)*0.5) -90)+'deg)';

			clock.handSecond.className = "hand hand-second";
			clock.handSecond.classList.add('spun');
			clock.handSecond.style.transform = 'rotate('+(((clock.second/60)*360)-90)+'deg)';

			clock.handMillisecond.className = "hand hand-millisecond";
			clock.handMillisecond.classList.add('spun');
			clock.handMillisecond.style.transform = 'rotate(0deg)';

			clock.digitalClock.className = "digitalClock";
			clock.digitalClock.innerHTML = clock.lib.pad(clock.hour)+':'+clock.lib.pad(clock.minute)+'::'+clock.lib.pad(clock.second);

			clock.digitalStopwatch.className = "digitalStopwatch";
			clock.digitalStopwatch.innerHTML = "CLICK";
		},
		timeRun: function(){
			clock.d = new Date();
			clock.hour = clock.d.getHours();
			clock.minute = clock.d.getMinutes();
			clock.second = clock.d.getSeconds();
			clock.millisecond = clock.d.getMilliseconds();
			
			clock.digitalClock.innerHTML = clock.lib.pad(clock.hour)+':'+clock.lib.pad(clock.minute)+'::'+clock.lib.pad(clock.second);
		},

		watch: function(){
			clock.stopwatchAdvanceBy = 100;

			// stop / run
			if (clock.stopwatchInterval) {
				clock.watchStop();
			} else {
				clock.stopwatchInterval = setInterval(clock.watchRun, clock.stopwatchAdvanceBy);
				clock.stopwatchMilliseconds = 0;
			}

		},
		watchStop: function(){
			clock.stopwatchMilliseconds = 0;
			clearInterval(clock.stopwatchInterval);
			delete clock.stopwatchInterval;
		},
		watchRun: function(){
			clock.stopwatchMilliseconds += clock.stopwatchAdvanceBy;
			var milliseconds = clock.stopwatchMilliseconds;
			var hour = milliseconds / 86400;
			milliseconds = milliseconds % 86400;
			var minute = milliseconds / 3600;
			milliseconds = milliseconds % 3600;
			var second = milliseconds / 60;
			milliseconds = milliseconds % 60;

			clock.digitalStopwatch.innerHTML =  clock.lib.pad(hour)+':'+clock.lib.pad(minute)+'::'+clock.lib.pad(second)+'.'+clock.lib.pad(milliseconds);
		}
	};
	return clock;

};

document.addEventListener("DOMContentLoaded", function() {
	var clockElement = document.querySelector('[clock]');
	if (clockElement) {
		Clock(clockElement).construct();
	}
});