(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["routes-dashboard-dashboard-module"],{

/***/ "./src/app/routes/dashboard/dashboard.component.html":
/*!***********************************************************!*\
  !*** ./src/app/routes/dashboard/dashboard.component.html ***!
  \***********************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<div masonry-grid-directive class=\"grid_container\">\n  <div class=\"grid_layout\">\n\n    <div class=\"grid_module\">\n      <div chart-container-plotly class=\"grid_module_content\">\n        <div class=\"plotlyModule\">\n          <h2 class=\"plotlyTitle\">Responsive Plotly Chart</h2>\n          <div class=\"plotlyContainer \">\n            <div chart-directive-plotly-test></div>\n          </div>\n        </div>\n      </div>\n    </div>\n\n    <div class=\"grid_module\">\n      <div chart-container-xy-mui class=\"grid_module_content\">\n      </div>\n    </div>\n\n    <div class=\"grid_module\">\n      <div chart-container-plotly class=\"grid_module_content\">\n        <h1>3rd module</h1>\n      </div>\n    </div>\n\n    <div class=\"grid_module\">\n      <div chart-container-xy-mui class=\"grid_module_content\">\n      </div>\n    </div>\n\n    <div class=\"grid_module\">\n      <div chart-container-plotly class=\"grid_module_content\">\n        <h1>5th module</h1>\n      </div>\n    </div>\n\n    <div class=\"grid_module\">\n      <div chart-container-plotly class=\"grid_module_content\">\n        <h1>6th module</h1>\n      </div>\n    </div>\n\n    <div class=\"grid_module\">\n      <div chart-container-plotly class=\"grid_module_content\">\n        <h1>7th module</h1>\n      </div>\n    </div>\n\n    <div class=\"grid_module\">\n      <div chart-container-xy-mui class=\"grid_module_content\">\n      </div>\n    </div>\n\n    <div class=\"grid_module\">\n      <div chart-container-xy-mui class=\"grid_module_content\">\n      </div>\n    </div>\n\n  </div>\n</div>\n"

/***/ }),

/***/ "./src/app/routes/dashboard/dashboard.component.scss":
/*!***********************************************************!*\
  !*** ./src/app/routes/dashboard/dashboard.component.scss ***!
  \***********************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = ".grid_container {\n  margin: 25px; }\n  .grid_container .grid_layout {\n    overflow: visible;\n    display: -ms-grid;\n    display: grid;\n    grid-gap: 25px;\n    -ms-grid-columns: (minmax(500px, 1fr))[auto-fill];\n        grid-template-columns: repeat(auto-fill, minmax(500px, 1fr));\n    grid-auto-rows: 50px;\n    width: 100%; }\n  .grid_container .grid_module {\n    vertical-align: top;\n    display: inline-block;\n    width: 100%;\n    border-radius: 3px;\n    box-shadow: 1px 2px 4px rgba(0, 0, 0, 0.75);\n    background: #fff;\n    color: #666;\n    overflow: hidden; }\n  .plotlyModule {\n  position: relative;\n  width: 100%;\n  height: 100%;\n  min-height: 400px;\n  display: -ms-flexbox;\n  display: flex;\n  -ms-flex-direction: column;\n      flex-direction: column; }\n  .plotlyModule h2 {\n    padding: 0; }\n  .plotlyModule .plotlyContainer {\n    position: relative;\n    width: 100%;\n    height: 100%;\n    overflow: auto;\n    display: -ms-flexbox;\n    display: flex;\n    -ms-flex-direction: column;\n        flex-direction: column;\n    -ms-flex-positive: 1;\n        flex-grow: 1; }\n  .plotlyModule .plotlyContainer [chart-directive-plotly-test] {\n      position: relative;\n      width: 100%;\n      height: 100%;\n      -ms-flex-positive: 1;\n          flex-grow: 1; }\n  .plotlyModule .plotlyContainer [chart-directive-plotly-test] .plot-container {\n        position: absolute;\n        width: 100%;\n        height: 100%; }\n  .plotlyModule .plotlyContainer [chart-directive-plotly-test] .modebar {\n        opacity: 0;\n        padding: 3px;\n        margin: -6px 0; }\n  .plotlyModule .plotlyContainer [chart-directive-plotly-test] .modebar:hover {\n          opacity: 1; }\n"

/***/ }),

/***/ "./src/app/routes/dashboard/dashboard.component.ts":
/*!*********************************************************!*\
  !*** ./src/app/routes/dashboard/dashboard.component.ts ***!
  \*********************************************************/
/*! exports provided: DashboardComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "DashboardComponent", function() { return DashboardComponent; });
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

var DashboardComponent = /** @class */ (function () {
    function DashboardComponent() {
    }
    DashboardComponent.prototype.ngOnInit = function () { };
    DashboardComponent = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["Component"])({
            selector: "dashboard-component",
            template: __webpack_require__(/*! ./dashboard.component.html */ "./src/app/routes/dashboard/dashboard.component.html"),
            styles: [__webpack_require__(/*! ./dashboard.component.scss */ "./src/app/routes/dashboard/dashboard.component.scss")]
        }),
        __metadata("design:paramtypes", [])
    ], DashboardComponent);
    return DashboardComponent;
}());



/***/ }),

/***/ "./src/app/routes/dashboard/dashboard.module.ts":
/*!******************************************************!*\
  !*** ./src/app/routes/dashboard/dashboard.module.ts ***!
  \******************************************************/
/*! exports provided: DashboardModule */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "DashboardModule", function() { return DashboardModule; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _angular_common__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/common */ "./node_modules/@angular/common/fesm5/common.js");
/* harmony import */ var _angular_router__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @angular/router */ "./node_modules/@angular/router/fesm5/router.js");
/* harmony import */ var _dashboard_component__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ./dashboard.component */ "./src/app/routes/dashboard/dashboard.component.ts");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};




var DashboardModule = /** @class */ (function () {
    function DashboardModule() {
    }
    DashboardModule = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["NgModule"])({
            imports: [
                _angular_common__WEBPACK_IMPORTED_MODULE_1__["CommonModule"],
                _angular_router__WEBPACK_IMPORTED_MODULE_2__["RouterModule"].forChild([
                    {
                        path: "",
                        component: _dashboard_component__WEBPACK_IMPORTED_MODULE_3__["DashboardComponent"]
                    }
                ])
            ],
            exports: [],
            declarations: [_dashboard_component__WEBPACK_IMPORTED_MODULE_3__["DashboardComponent"]],
            providers: []
        })
    ], DashboardModule);
    return DashboardModule;
}());



/***/ })

}]);
//# sourceMappingURL=routes-dashboard-dashboard-module.js.map