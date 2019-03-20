// My pretend DB
// It returns an object with key-value pairs. Key is the unique hash generated from the job listing's title and company. 
// I'll then convert it to array and practice filtering and work with data
let jobsDB = {};
const jobsDB_file = "/www/db/v1_jobs";
if (!process.fs.existsSync("/www/db")){
    process.fs.mkdirSync("/www/db");
}
if (process.fs.existsSync(jobsDB_file)) {
    process.fs.readFile(jobsDB_file, 'utf8', function (err, data) {
        if (data) {
            jobsDB = JSON.parse(data);
        }
    });
} else {
    process.fs.writeFile(jobsDB_file, jobsDB);
};



////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
// GET JOBS
process.app.get('/v1/jobs/all', function(request, response) {
    process.console.log('get /v1/jobs/all');
    
    // format response
    let data = Object.values(jobsDB);
    let thelimit = "test";

    if (data[0]) {

        // filter
        if (request.query) {

                // search
                var query = request.query;
                for (var param in query) {
                    if (typeof data[0][param] !== "undefined") {
                        process.console.log(param, typeof query[param], query[param]);
                        var qRegEx = new RegExp(query[param], "i"); // I like RegExp! Not most efficient, but ok for a site with one user
                        data = data.filter(function(job) {
                            return qRegEx.test(job[param]); // Don't think you can inject malicious code from a URI variable into a RegExpression. Can you?
                        });
                    }
                }

        }

        // sort
        data.sort(function(a,b) {
            return b._rating - a._rating;
        });

        // limit
        let query_limit = parseInt(request.query.limit) || 1000;
        let query_start = parseInt(request.query.start) || 0;
        data = data.slice( query_start, query_limit+query_start);

    }

    // success response
    response.setHeader('Content-Type', 'application/json');
    response.writeHead(200);
    response.write(JSON.stringify({results: data.length, data:data, error:0},null,"\t"));
    response.end();

});



////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
// EDIT JOB
process.app.put('/v1/job', function(request, response) {

    var query = request.body;

    if (jobsDB[query._id]) {
        for (var param in query) {
            jobsDB[query._id][param] = query[param];
        }
    }
    
    // success response
    response.setHeader('Content-Type', 'application/json');
    response.writeHead(200);
    response.write(JSON.stringify({data:"ok", error:0},null,"\t"));
    response.end();

});



////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
// ADD MORE JOBS
process.app.post('/v1/jobs/apify-webhook', function(request, response) {
    // dev env
    if (!request.body._id) {
        request.body._id = "D7BRpidKGMqHSPXeJ";
    }

    // fetch data
    const resultsUrl = "https://api.apify.com/v1/execs/"+request.body._id+"/results";
    process.https.get(resultsUrl, res => {
        res.setEncoding("utf8");
        let body = "";
        res.on("data", data => {
            body += data;
        });
        res.on("end", () => {

            // finally...
            resultsData = JSON.parse(body);
            if (resultsData && resultsData[0] && resultsData[0].pageFunctionResult) {
                for (var rD in resultsData) {
                    processJobs(resultsData[rD].pageFunctionResult);
                }
            } else {
                process.console.error("Apify-WEBHOOK FAILED to return data: "+resultsUrl);
            }

        });
    });

	// success response without waiting for async data above
	response.setHeader('Content-Type', 'application/json');
	response.writeHead(200);
	response.write(JSON.stringify({data:"OK", error:0},null,"\t"));
    response.end();

});

// magic
const processJobs = function(results){

    // format
    for (var r in results) {
        var res = results[r];
        for (var k in res) {
            if (typeof res[k] === "string") {
                res[k] = res[k].replace(/\s/g, ' ');
                res[k] = res[k].trim();
            }
        }
        // filter
        res.posted = process.chrono.parseDate(res.posted);

        // rating
        res._rating = 100000;

        // [ - ] location
        if (/, IN|, OH|, VA|, FL|, SC|, NC|, MD|, MO|, WI|, MN|, IL/i.test(res.location)) {
            continue;
        }

        // [ + ] location
        if (/, CA/i.test(res.location)) {
            res._rating += 3000;
        }
        if (/, AZ|, UT|, CO|, ID/i.test(res.location)) {
            res._rating += 1000;
        }

        // [ - ] text
        if (/entry level|junior|intern/i.test(res.name) && ! (/mid|senior/i.test(res.name))) { // in NAME, exclusive
            continue;
        }
        if (/full stack/i.test(res.name)) { // in NAME
            res._rating -= 1000;
        }
        if (/ASP\.NET|client|full stack|entry level/i.test(res.text)) { 
            res._rating -= 1000;
        }
        if (/software/i.test(res.name) || (/angular/i.test(res.text) && ! (/react/i.test(res.text))) ) { // 1 in NAME or 2,3 exclusive
            res._rating -= 1000;
        }
        if (/Java/i.test(res.text) && /JSP/i.test(res.text)) { // both match
            res._rating -= 1000;
        }
        if (/synergy|financial|bank|invest|account|lend|credit union|drupal|joomla/i.test(res.text)) { // fine with fin-tech, but would rather not work in a very strict corporate and beaurocratic environment
            res._rating -= 1000;
        }
        if ( ! (/html|css|sass|style|front/i.test(res.text)) ) { // !
            res._rating -= 1000;
        }

        // [ + ] text
        if (/front|ui/i.test(res.name)) { // in NAME
            res._rating += 2000;
        }
        if (/react|es6|ui|ux/i.test(res.name)) { // in NAME
            res._rating += 1000;
        }
        if (/react|es6|ui|ux/i.test(res.text)) {
            res._rating += 2000;
        }
        if (/node|front|art|music|design|flexible/i.test(res.text)) {
            res._rating += 1000;
        }
        if (/iot|embedded|php|ux|designer|illustrator|responsive/i.test(res.text)) {
            res._rating += 1000;
        }

        // // _rating to _stars
        // if (res._rating > 105000) {
        //     res._stars = 5;
        // } else if (res._rating > 103000) {
        //     res._stars = 4;
        // } else if (res._rating > 101000) {
        //     res._stars = 3;
        // } else if (res._rating > 99000) {
        //     res._stars = 2;
        // } else {
        //     res._stars = 1;
        // }

        // save to DB
        res._status = "new";
        res._id = process.crypto.createHash('md5').update(res.name+" "+res.company).digest('hex');
        jobsDB[ res._id ] = res;
    }

    // pretending this is a db
    process.fs.writeFile(jobsDB_file, JSON.stringify(jobsDB), function(err) {
        if(err) {
            return process.console.error(err);
        }
        process.console.info("/www/db/v1_jobs file updated");
    });

    return results;

};