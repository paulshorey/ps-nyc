
var div = document.createElement("div");
div.innerHTML = "<i>https://github.com/paulshorey/ps-api/blob/master/api/v1/console/src/console.js</i> <b>As this server generates console.log() or console.warn() messages, they will be output here, in real time! Yes, I know about `node app.js --inspector`, and am also using logfiles. But this is mobile friendly, and lets me check on my remote servers anytime from anywhere! Yes, it would be bad for production, so when the code is no longer experimental, this feature will be turned off.</b>";
div.className = "line log";
document.body.prepend(div);

var div = document.createElement("div");
div.innerHTML = "<i>Welcome!</i> <b>This is a demo - for my server-side real-time console/dashboard experiment. It will be password-protected soon. Meanwhile, please don't hack me - that's not nice!</b>";
div.className = "line info";
document.body.prepend(div);






var sock = new SockJS(window.location.protocol+"//"+window.location.hostname+':1102/v1/console/WS');

 sock.onopen = function() {
    var div = document.createElement("div");
    div.innerHTML = "<i>Success:</i> <b>Websocket connection to server established...</b>";
    div.className = "line warn";
    document.body.prepend(div);
 };

 sock.onmessage = function(e) {
    var log = JSON.parse(e.data);
    if (log.args) {
        for (var a in log.args) {
            log.args[a] = (log.args[a].replace ? log.args[a].replace(/"/g,'') : log.args[a]);
            try {
                var great = JSON.parse(log.args[a]);
                if (great) {
                    log.args[a] = great;
                }
            } catch(e) {
            }
        }
    }
    var concise = {
        message: log.args[0],
        args: Object.values(log.args),
        timestamp: log.timestamp,
        trace_stack: log.stack,
        trace_path: log.path,
        trace_line: log.line,
        trace_lineChar: log.pos,
        trace_level: log.level
    };
    //  log.timestamp = new Date(log.timestamp);
    //  console.log('log', log);
     console[log.title](concise);

    var div = document.createElement("div");
    div.innerHTML = "<i>"+log.timestamp+"</i> <b>"+log.message+"</b>";
    div.className = "line "+log.title;
    document.body.prepend(div);
 };

 sock.onclose = function() {
    var div = document.createElement("div");
    div.innerHTML = "<i>Error:</i> <b>Connection to server closed. Please refresh the page to try again.</b>";
    div.className = "line error";
    document.body.prepend(div);
 };

 sock.onerror = function() {
    var div = document.createElement("div");
    div.innerHTML = "<i>Error:</i> <b>Connection error</b>";
    div.className = "line error";
    document.body.prepend(div);
 };