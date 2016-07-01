(function() {
    "use strict";
})();

var Clock = function(clockContainer){

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
			clockContainer.appendChild(this.hands);
			this.hands.appendChild(this.handHour);
			this.hands.appendChild(this.handMinute);
			this.hands.appendChild(this.handSecond);
			this.hands.appendChild(this.handMillisecond);
			clockContainer.appendChild(this.digitalClock);
			clockContainer.appendChild(this.digitalStopwatch);
			this.time();
			clockContainer.onclick = this.watch;
		},

		time: function(){
			this.timeRun();
			this.timeInterval = setInterval(this.timeRun, 1000);

			// clock hands
			this.hands.className = "hands";

			this.handHour.className = "hand hand-hour";
			this.handHour.classList.add('spun');
			this.handHour.style.transform = 'rotate('+( ((this.hour/12)*360)+((this.minute/60)*30)+((this.second/60)*0.5) -90)+'deg)';

			this.handMinute.className = "hand hand-minute";
			this.handMinute.classList.add('spun');
			this.handMinute.style.transform = 'rotate('+( ((this.minute/60)*360)+((this.second/60)*0.5) -90)+'deg)';

			this.handSecond.className = "hand hand-second";
			this.handSecond.classList.add('spun');
			this.handSecond.style.transform = 'rotate('+(((this.second/60)*360)-90)+'deg)';

			this.handMillisecond.className = "hand hand-millisecond";
			this.handMillisecond.classList.add('spun');
			this.handMillisecond.style.transform = 'rotate(0deg)';

			this.digitalClock.className = "digitalClock";
			this.digitalClock.innerHTML = this.lib.pad(this.hour)+':'+this.lib.pad(this.minute)+'::'+this.lib.pad(this.second);

			this.digitalStopwatch.className = "digitalStopwatch";
			this.digitalStopwatch.innerHTML = "CLICK";
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