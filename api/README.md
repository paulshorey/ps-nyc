<a name="myREADME"></a>  
#  
# API Server  
Setup and configuration for this and any Linux (Ubuntu) NodeJS/MongoDB/Nginx server explained here:  
https://paulshorey.gitbooks.io/node-js-nginx-and-linux-server-management/content/  
###  
  
  
#  
# Primary functions of this server:  
  
##  
## API requests  
NodeJS /api.js process listens for REST requests {port 80 rerouted to port 1080}  
* **Code** https://github.com/paulshorey/ps-api/blob/master/api.js  
  
##  
## Deploy  
NodeJS /\_deploy.js process listens for POST request at port :9999/\_deploy  
(Whenever the master branch has been pushed in GitHub, the server pulls and installs new code)  
* **Code** https://github.com/paulshorey/ps-api/blob/master/_deploy.js  
  
##  
## WS, POST: Chat  
NodeJS /api/v1/chat websocket connection at port :1101/v1/chat/WS  
(Chat with me from my website - to my phone SMS.)  
* **Demo** http://paulshorey.com  
* **Code** https://github.com/paulshorey/ps-api/blob/master/api/v1/chat/index.js  
  
##  
## WS, GET: Console  
NodeJS /api/v1/console/src/console.js websocket connection at port :1102/v1/console/WS  
(This intercepts system console.log statements, and color codes them for the console, or transmitts them over a web-socket connection to the debug app, for now this demo, with nothing going on.)  
* **Demo** http://api.paulshorey.com/v1/console/  
* **Code** https://github.com/paulshorey/ps-api/blob/master/api/v1/console/src/console.js  
* **Code** https://github.com/paulshorey/ps-api/blob/master/api_public/v1/console/assets/js/console.js  
  
##  
## GET, PUT, POST: Jobs  
APIFY service crawls Indeed.com and Careerbuilder.com, nationwide, searching for "javascript". It returns 1000 results from each. After the crawl is done, this server is notified at POST __/v1/jobs/apify-webhook__. Then, this server goes and fetches the new results from APIFY's server. Wish the webhook would just send this data, but whatever... Then, the results are filtered, made unique, and rated. Then, a GET request to http://api.paulshorey.com/v1/jobs/all spits out a sorted array of jobs in JSON format.  
* **Demo (rough work in progress)** http://paulshorey.com/jobs/  
* **Code** https://github.com/paulshorey/ps-api/blob/master/api/v1/jobs/index.js  
* **Data** http://api.paulshorey.com/v1/jobs/all  
  
  
