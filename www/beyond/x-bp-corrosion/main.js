(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["main"],{

/***/ "./src/$$_lazy_route_resource lazy recursive":
/*!**********************************************************!*\
  !*** ./src/$$_lazy_route_resource lazy namespace object ***!
  \**********************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

var map = {
	"./routes/dashboard/dashboard.module": [
		"./src/app/routes/dashboard/dashboard.module.ts",
		"routes-dashboard-dashboard-module"
	],
	"./routes/demo/demo.module": [
		"./src/app/routes/demo/demo.module.ts",
		"routes-demo-demo-module"
	]
};
function webpackAsyncContext(req) {
	var ids = map[req];
	if(!ids) {
		return Promise.resolve().then(function() {
			var e = new Error('Cannot find module "' + req + '".');
			e.code = 'MODULE_NOT_FOUND';
			throw e;
		});
	}
	return __webpack_require__.e(ids[1]).then(function() {
		var module = __webpack_require__(ids[0]);
		return module;
	});
}
webpackAsyncContext.keys = function webpackAsyncContextKeys() {
	return Object.keys(map);
};
webpackAsyncContext.id = "./src/$$_lazy_route_resource lazy recursive";
module.exports = webpackAsyncContext;

/***/ }),

/***/ "./src/app/app.component.html":
/*!************************************!*\
  !*** ./src/app/app.component.html ***!
  \************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<!-- <nav>\n  <a [routerLink]=\"['/']\">Dashboard</a> &nbsp;\n  <a [routerLink]=\"['/demo']\">Demo</a>\n</nav> -->\n<router-outlet></router-outlet>\n"

/***/ }),

/***/ "./src/app/app.component.scss":
/*!************************************!*\
  !*** ./src/app/app.component.scss ***!
  \************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = ""

/***/ }),

/***/ "./src/app/app.component.ts":
/*!**********************************!*\
  !*** ./src/app/app.component.ts ***!
  \**********************************/
/*! exports provided: AppComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "AppComponent", function() { return AppComponent; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};

var AppComponent = /** @class */ (function () {
    function AppComponent() {
        this.title = "app";
    }
    AppComponent = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["Component"])({
            selector: "app-component",
            template: __webpack_require__(/*! ./app.component.html */ "./src/app/app.component.html"),
            styles: [__webpack_require__(/*! ./app.component.scss */ "./src/app/app.component.scss")]
        })
    ], AppComponent);
    return AppComponent;
}());



/***/ }),

/***/ "./src/app/app.module.ts":
/*!*******************************!*\
  !*** ./src/app/app.module.ts ***!
  \*******************************/
/*! exports provided: AppModule */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "AppModule", function() { return AppModule; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _angular_router__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/router */ "./node_modules/@angular/router/fesm5/router.js");
/* harmony import */ var _angular_platform_browser_animations__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @angular/platform-browser/animations */ "./node_modules/@angular/platform-browser/fesm5/animations.js");
/* harmony import */ var _angular_platform_browser__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @angular/platform-browser */ "./node_modules/@angular/platform-browser/fesm5/platform-browser.js");
/* harmony import */ var _angular_material__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! @angular/material */ "./node_modules/@angular/material/esm5/material.es5.js");
/* harmony import */ var _services_corrosion_service__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! ./services/corrosion.service */ "./src/app/services/corrosion.service.ts");
/* harmony import */ var _app_component__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! ./app.component */ "./src/app/app.component.ts");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};







// import "src/app/lib/Object.prototype.watch";
var AppModule = /** @class */ (function () {
    function AppModule() {
    }
    AppModule = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["NgModule"])({
            declarations: [_app_component__WEBPACK_IMPORTED_MODULE_6__["AppComponent"]],
            imports: [
                _angular_platform_browser__WEBPACK_IMPORTED_MODULE_3__["BrowserModule"],
                _angular_platform_browser_animations__WEBPACK_IMPORTED_MODULE_2__["BrowserAnimationsModule"],
                _angular_router__WEBPACK_IMPORTED_MODULE_1__["RouterModule"].forRoot([
                    {
                        path: "dashboard",
                        loadChildren: "./routes/dashboard/dashboard.module#DashboardModule"
                    },
                    {
                        path: "",
                        loadChildren: "./routes/demo/demo.module#DemoModule"
                    }
                ])
            ],
            providers: [
                _services_corrosion_service__WEBPACK_IMPORTED_MODULE_5__["CorrosionService"],
                { provide: _angular_platform_browser__WEBPACK_IMPORTED_MODULE_3__["HAMMER_GESTURE_CONFIG"], useClass: _angular_material__WEBPACK_IMPORTED_MODULE_4__["GestureConfig"] }
            ],
            bootstrap: [_app_component__WEBPACK_IMPORTED_MODULE_6__["AppComponent"]]
        })
    ], AppModule);
    return AppModule;
}());



/***/ }),

/***/ "./src/app/services/corrosion.service.ts":
/*!***********************************************!*\
  !*** ./src/app/services/corrosion.service.ts ***!
  \***********************************************/
/*! exports provided: CorrosionService */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "CorrosionService", function() { return CorrosionService; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (undefined && undefined.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
var __awaiter = (undefined && undefined.__awaiter) || function (thisArg, _arguments, P, generator) {
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : new P(function (resolve) { resolve(result.value); }).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (undefined && undefined.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = y[op[0] & 2 ? "return" : op[0] ? "throw" : "next"]) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [0, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};

/*
    custom functions
*/
function isLt(value, min) {
    if (value < min || value === null) {
        return true;
    }
    else {
        return false;
    }
}
/*
    the module
*/
var CorrosionService = /** @class */ (function () {
    function CorrosionService() {
        /*
        status.classList can be a combination of below strings:
          status-na "if no user input for H2O and Temp",
          status-ok "if user input, and pipeline is healthy",
          status-h2s "if user input, and H2S is too high",
          status-temp "if user input, and Temp is too high"
          status-salt "if user input, and Salt is too high"
      */
        this.status = {
            lifetimeManufacturer: 10,
            lifetimeCalculated: 10,
            lifetimeCorrected: 10,
            lifetimeCalculatedProb: 100,
            classList: " status-na",
            problems: [],
            solutions: [],
            corrosion_inhibitor: {
                add: 0,
                per: 1,
                constraint_per_unit: 400,
                constraint_upper_limit: 10000
            },
            antiCorrosionAdd: 0,
            antiCorrosionPer: 1000
        };
        this.statusOriginal = {};
        this.statusUpdated = new _angular_core__WEBPACK_IMPORTED_MODULE_0__["EventEmitter"]();
        /*
        corrosion inhibitor
    */
        //   corrosion_inhibitor = {
        //     unit_type: "liter",
        //     unit_types: "liters",
        //     per: 1000,
        //     add: null,
        //     constraint_per_unit: null,
        //     cost_total: null
        //   };
        /*
        hard-coded for demo
      */
        this.measurements = {
            h2o: {
                id: "h2o",
                name: "H2O",
                unit: "%",
                value: 0,
                statusOk: 0,
                statusBad: 5,
                statusDanger: 10,
                statusAlert: 15
            },
            h2s: {
                id: "h2s",
                name: "H2S",
                unit: "%",
                value: 0,
                statusOk: 0,
                statusBad: 0.5,
                statusDanger: 1,
                statusAlert: 1.5
            },
            salt: {
                id: "salt",
                name: "Salt",
                unit: "ppm",
                value: 0,
                statusOk: 0,
                statusBad: 100,
                statusDanger: 500,
                statusAlert: 1000
            },
            temperature: {
                id: "temperature",
                name: "Temp.",
                unit: "°C",
                value: 289,
                statusOk: 289,
                statusBad: 290,
                statusAlert: 291
            }
        };
        this.statusOriginal = Object.assign({}, this.status);
        this.calculate();
    }
    CorrosionService.prototype.get = function (what) {
        if (what === "status") {
            return this.status;
        }
        else if (what === "measurements") {
            return this.measurements;
        }
    };
    CorrosionService.prototype.edit_corrosion_inhibitor = function (key, value) {
        value = value / 1;
        if (value < 0) {
            value = 0;
        }
        if (key === "constraint_upper_limit") {
            if (value < this.status.corrosion_inhibitor.constraint_per_unit) {
                value = this.status.corrosion_inhibitor.constraint_per_unit;
            }
        }
        this.status.corrosion_inhibitor[key] = value;
        this.statusUpdated.emit(this.status);
    };
    CorrosionService.prototype.calculate = function () {
        return __awaiter(this, void 0, void 0, function () {
            var postData, k, v, res, json, e_1;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        _a.trys.push([0, 3, , 4]);
                        postData = {
                            measurements: [],
                            constraint_per_unit: this.status.corrosion_inhibitor
                                .constraint_per_unit,
                            constraint_upper_limit: this.status.corrosion_inhibitor
                                .constraint_upper_limit
                        };
                        for (k in this.measurements) {
                            v = this.measurements[k];
                            if (v.value || v.value === 0) {
                                postData.measurements.push({
                                    id: v.id,
                                    value: v.value
                                });
                            }
                        }
                        console.log("request", postData);
                        return [4 /*yield*/, fetch("http://localhost:5000/calculate", {
                                body: JSON.stringify(postData),
                                cache: "no-cache",
                                headers: {
                                    "content-type": "application/json"
                                },
                                method: "POST",
                                mode: "cors" // no-cors, cors, *same-origin
                            })];
                    case 1:
                        res = _a.sent();
                        return [4 /*yield*/, res.json()];
                    case 2:
                        json = _a.sent();
                        console.log("response", json);
                        this.set_status_backend(json);
                        return [3 /*break*/, 4];
                    case 3:
                        e_1 = _a.sent();
                        console.warn("API request failed with error: ", e_1);
                        this.set_status_mockup();
                        return [3 /*break*/, 4];
                    case 4: return [2 /*return*/];
                }
            });
        });
    };
    CorrosionService.prototype.set_status_backend = function (response) {
        var _this = this;
        /*
            reset
        */
        this.status = Object.assign({}, this.statusOriginal);
        this.status.classList = "";
        this.status.problems = [];
        this.status.solutions = [];
        /*
           edit
       */
        if (response.lifetimeCalculated < response.lifetimeManufacturer) {
            this.status.classList += " status-bad";
            this.status.lifetimeManufacturer = response.lifetimeManufacturer;
            this.status.lifetimeCalculated = response.lifetimeCalculated;
            this.status.lifetimeCalculatedProb =
                response.lifetimeCalculatedProb;
            this.status.problems.push("Backend script should probably message why lifetime is low.");
            this.status.antiCorrosionAdd = 1234;
        }
        else {
            this.status.classList += " status-ok";
        }
        /*
            save
        */
        this.statusUpdated.emit(this.statusOriginal);
        setTimeout(function () {
            _this.statusUpdated.emit(_this.status);
        }, 150);
    };
    CorrosionService.prototype.set_status_mockup = function () {
        var _this = this;
        /*
            reset
        */
        this.status = Object.assign({}, this.statusOriginal);
        this.status.classList = "";
        this.status.problems = [];
        this.status.solutions = [];
        // this.status.corrosion_inhibitor = Object.assign(
        //   {},
        //   this.statusOriginal.corrosion_inhibitor
        // );
        /*
           edit
       */
        var ms = this.measurements;
        var numChanged = 0;
        if (ms.h2s.value > ms.h2s.statusOk ||
            ms.h2s.value === ms.h2s.statusOk) {
            numChanged++;
        }
        if (ms.h2o.value > ms.h2o.statusOk ||
            ms.h2o.value === ms.h2o.statusOk) {
            numChanged++;
        }
        if (ms.salt.value > ms.salt.statusOk ||
            ms.salt.value === ms.salt.statusOk) {
            numChanged++;
        }
        if (ms.temperature.value > ms.temperature.statusOk ||
            ms.temperature.value === ms.temperature.statusOk) {
            numChanged++;
        }
        if (numChanged && numChanged < 2) {
            this.status.classList += " status-na";
            this.status.problems.push("Please enter more measurements");
            this.status.solutions.push("Please enter more measurements.");
        }
        if (ms.h2o.value >= ms.h2o.statusBad) {
            this.status.classList += " status-bad status-h2o";
            this.status.lifetimeCalculated -= 2;
            this.status.problems.push("Too much water (vapor) in pipe");
            this.status.antiCorrosionAdd += 15;
        }
        if (ms.h2s.value >= ms.h2s.statusBad) {
            this.status.classList += " status-bad status-h2s";
            this.status.lifetimeCalculated -= 2;
            this.status.problems.push("H2S level too high");
            this.status.antiCorrosionAdd += 15;
        }
        if (ms.salt.value >= ms.salt.statusBad) {
            this.status.classList += " status-bad status-salt";
            this.status.lifetimeCalculated -= 2;
            this.status.problems.push("Salt level too high");
            this.status.antiCorrosionAdd += 15;
        }
        if (ms.temperature.value >=
            (ms.temperature.statusBad || ms.temperature.statusAlert)) {
            this.status.classList += " status-bad status-temp";
            this.status.lifetimeCalculated -= 2;
            this.status.problems.push("Pipeline temperature is too high");
            this.status.antiCorrosionAdd += 15;
        }
        if (numChanged >= 2 &&
            this.status.lifetimeCalculated >= this.status.lifetimeManufacturer) {
            this.status.classList += " status-ok";
        }
        /*
       save
   */
        this.statusUpdated.emit(this.statusOriginal);
        setTimeout(function () {
            _this.statusUpdated.emit(_this.status);
        }, 150);
    };
    CorrosionService.prototype.set_measurement = function (measurement) {
        // set measurement
        var m = measurement;
        this.measurements[m.id] = Object.assign({}, this.measurements[m.id], m);
        // set status
    };
    CorrosionService = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["Injectable"])({
            providedIn: "root"
        }),
        __metadata("design:paramtypes", [])
    ], CorrosionService);
    return CorrosionService;
}());



/***/ }),

/***/ "./src/environments/environment.ts":
/*!*****************************************!*\
  !*** ./src/environments/environment.ts ***!
  \*****************************************/
/*! exports provided: environment */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "environment", function() { return environment; });
// The file contents for the current environment will overwrite these during build.
// The build system defaults to the dev environment which uses `environment.ts`, but if you do
// `ng build --env=prod` then `environment.prod.ts` will be used instead.
// The list of which env maps to which file can be found in `.angular-cli.json`.
var environment = {
    production: false
};
/*
 * In development mode, to ignore zone related error stack frames such as
 * `zone.run`, `zoneDelegate.invokeTask` for easier debugging, you can
 * import the following file, but please comment it out in production mode
 * because it will have performance impact when throw error
 */
// import 'zone.js/dist/zone-error';  // Included with Angular CLI.


/***/ }),

/***/ "./src/main.ts":
/*!*********************!*\
  !*** ./src/main.ts ***!
  \*********************/
/*! no exports provided */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _angular_platform_browser_dynamic__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/platform-browser-dynamic */ "./node_modules/@angular/platform-browser-dynamic/fesm5/platform-browser-dynamic.js");
/* harmony import */ var _app_app_module__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./app/app.module */ "./src/app/app.module.ts");
/* harmony import */ var _environments_environment__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ./environments/environment */ "./src/environments/environment.ts");




if (_environments_environment__WEBPACK_IMPORTED_MODULE_3__["environment"].production) {
    Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["enableProdMode"])();
}
Object(_angular_platform_browser_dynamic__WEBPACK_IMPORTED_MODULE_1__["platformBrowserDynamic"])().bootstrapModule(_app_app_module__WEBPACK_IMPORTED_MODULE_2__["AppModule"])
    .catch(function (err) { return console.log(err); });


/***/ }),

/***/ 0:
/*!***************************!*\
  !*** multi ./src/main.ts ***!
  \***************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__(/*! /ai/Corrosion/angular/src/main.ts */"./src/main.ts");


/***/ })

},[[0,"runtime","vendor"]]]);
//# sourceMappingURL=main.js.map