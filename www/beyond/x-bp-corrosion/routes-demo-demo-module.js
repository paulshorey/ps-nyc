(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["routes-demo-demo-module"],{

/***/ "./src/app/routes/demo/components/box-correction/box-correction.component.html":
/*!*************************************************************************************!*\
  !*** ./src/app/routes/demo/components/box-correction/box-correction.component.html ***!
  \*************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<div class=\"bg_pipeline_img\">\n    <div class=\"bg_pipeline_left\">\n        <img src=\"/assets/images/bg/correction_left.png\" />\n    </div>\n    <div class=\"bg_pipeline_right\"></div>\n    <div class=\"bg_pipeline_caption\">Correct</div>\n</div>\n\n<div [class]=\"'box '+status.classList\">\n    <div class=\"heading\">\n        <h2>Correction{{status.solutions.length>1 ? \"s\" : \"\"}}:\n            <a name=\"box-correction\"></a>\n        </h2>\n    </div>\n\n\n\n    <!-- something wrong -->\n    <div class=\"body\" *ngIf=\"status.classList.indexOf('-ok')===-1\">\n        <h2>Add\n            <b>{{status.antiCorrosionAdd}} gallons of corrosion inhibitor</b>\n        </h2>\n        <div>\n            per barrel\n        </div>\n\n        <div class=\"content-box content-box-error\" *ngIf=\"status.classList.indexOf('-ok')===-1 && status.classList.indexOf('-na')===-1\">\n\n            <div class=\"content\">\n                <h3>Adjust correction:</h3>\n                <div class=\"fieldset\">\n                    <span class=\"label\">Cost per gallon: </span>\n                    <b>$</b>\n                    <input type=\"number\" [value]=\"status.corrosion_inhibitor.constraint_per_unit\" [placeholder]=\"status.corrosion_inhibitor.constraint_per_unit\"\n                        (change)=\"edit_corrosion_inhibitor('constraint_per_unit',$event.target.value)\" />\n                </div>\n                <div class=\"fieldset\">\n                    <span class=\"label\">Upper limit on cost:</span>\n                    <b>$</b>\n                    <input type=\"number\" [value]=\"status.corrosion_inhibitor.constraint_upper_limit\" [placeholder]=\"status.corrosion_inhibitor.constraint_upper_limit\"\n                        (change)=\"edit_corrosion_inhibitor('constraint_upper_limit',$event.target.value)\" />\n                </div>\n            </div>\n\n            <div class=\"content-bottom\">\n                <button value=\"calculate\" onClick=\"document.getElementById('calculate_measurements_button').focus();document.getElementById('calculate_measurements_button').click();setTimeout(function(){document.getElementById('calculate_measurements_button').blur();},500);\">\n                    <span class=\"icon-ui_cycle\"></span>\n                    <span> Update</span>\n                </button>\n            </div>\n        </div>\n\n    </div>\n\n    <div class=\"bottom\"></div>\n\n</div>\n"

/***/ }),

/***/ "./src/app/routes/demo/components/box-correction/box-correction.component.scss":
/*!*************************************************************************************!*\
  !*** ./src/app/routes/demo/components/box-correction/box-correction.component.scss ***!
  \*************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "[box-correction] {\n  transition: opacity 0.5s linear 0.15s; }\n  [box-correction] .heading {\n    background: #f8ad05;\n    color: #fff; }\n  [box-correction] .heading * {\n      margin: 0;\n      padding: 0.66rem 0.85rem;\n      line-height: 1; }\n  [box-correction] .body {\n    padding: 1.5rem 1.1rem;\n    color: #999999; }\n  [box-correction] .body h2,\n    [box-correction] .body h3 {\n      color: #f8ad05; }\n  [box-correction] h2 {\n    margin: 0;\n    padding: 0.5rem 0;\n    line-height: 100%; }\n  [box-correction] h3 {\n    font-weight: normal; }\n  [box-correction] h3 b {\n      font-weight: bold; }\n  [box-correction] p {\n    margin: 1.5rem 0.1rem; }\n  [box-correction] .box {\n    border: solid 2px #f8ad05;\n    background: #fff; }\n  [box-correction] .box .bottom::after {\n      background: #f8ad05; }\n  [box-correction] .bg_pipeline_img {\n    background-image: url(\"/assets/images/bg/correction_center.png\"); }\n  [box-correction] .bg_pipeline_img .bg_pipeline_right {\n      background-image: url(\"/assets/images/bg/correction_right.png\"); }\n  [box-correction] .bg_pipeline_img .bg_pipeline_left::after {\n      background: #f8ad05; }\n  [box-correction] .bg_pipeline_img .bg_pipeline_caption {\n      color: #f8ad05; }\n  [box-correction] .content-box {\n    position: absolute;\n    bottom: 1rem;\n    width: calc(100% - 2.5rem); }\n  [box-correction] .content-box * {\n      color: #999999; }\n  [box-correction] .content-box h3 {\n      color: #999999;\n      font-weight: bold;\n      margin: 1.5rem 0 0.5rem 0; }\n  [box-correction] .content-box .content {\n      padding: 0;\n      line-height: 2rem; }\n  [box-correction] .content-box .content input {\n        width: 60px;\n        font-size: 12px;\n        font-weight: 400;\n        padding-left: 3px;\n        border-radius: 4px;\n        margin: 1px 0.25rem;\n        border-color: rgba(0, 0, 0, 0.33);\n        border-bottom-color: rgba(0, 0, 0, 0.17);\n        border-right-color: rgba(0, 0, 0, 0.17); }\n  [box-correction] .content-box .content .fieldset {\n        position: relative;\n        text-align: right; }\n  [box-correction] .content-box .content .fieldset .label {\n          display: block;\n          position: absolute;\n          left: 0; }\n  [box-correction] .content-box .content .fieldset input {\n          min-width: 70px;\n          color: #333; }\n  [box-correction] .content-box .content-bottom {\n      padding: 1rem 0 0.33rem; }\n  [box-correction] .content-box .content-bottom h3 {\n        color: #52b9f0;\n        margin: 0 0 0.5rem 0;\n        cursor: pointer; }\n  [box-correction] .content-box .content-bottom button {\n        background: #f8ad05;\n        border: none;\n        color: #fff;\n        font-weight: bold;\n        font-size: 1.25rem;\n        line-height: 1.5rem;\n        padding: 0.35rem 1rem 0.5rem;\n        border: solid 2px #e99f00;\n        border-left: none;\n        border-top: none;\n        border-radius: 3px;\n        cursor: pointer; }\n  [box-correction] .content-box .content-bottom button:focus {\n          border: solid 1px transparent;\n          position: relative;\n          top: 2px;\n          left: 2px; }\n  [box-correction] .content-box .content-bottom button > * {\n          vertical-align: middle;\n          color: #fff; }\n"

/***/ }),

/***/ "./src/app/routes/demo/components/box-correction/box-correction.component.ts":
/*!***********************************************************************************!*\
  !*** ./src/app/routes/demo/components/box-correction/box-correction.component.ts ***!
  \***********************************************************************************/
/*! exports provided: BoxCorrectionComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "BoxCorrectionComponent", function() { return BoxCorrectionComponent; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var src_app_services_corrosion_service__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! src/app/services/corrosion.service */ "./src/app/services/corrosion.service.ts");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (undefined && undefined.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};


var BoxCorrectionComponent = /** @class */ (function () {
    function BoxCorrectionComponent(corrosionService) {
        this.corrosionService = corrosionService;
        /*
        data (model)
      */
        this.status = "";
        this.status = corrosionService.get("status");
    }
    /*
    component ready (DOM is not ready)
  */
    BoxCorrectionComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.corrosionService.statusUpdated.subscribe(function (status) {
            _this.status = status;
        });
    };
    BoxCorrectionComponent.prototype.edit_corrosion_inhibitor = function (key, value) {
        console.log("edit_corrosion_inhibitor");
        this.corrosionService.edit_corrosion_inhibitor(key, value);
    };
    BoxCorrectionComponent = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["Component"])({
            selector: "[box-correction]",
            template: __webpack_require__(/*! ./box-correction.component.html */ "./src/app/routes/demo/components/box-correction/box-correction.component.html"),
            styles: [__webpack_require__(/*! ./box-correction.component.scss */ "./src/app/routes/demo/components/box-correction/box-correction.component.scss")],
            encapsulation: _angular_core__WEBPACK_IMPORTED_MODULE_0__["ViewEncapsulation"].None
        }),
        __metadata("design:paramtypes", [src_app_services_corrosion_service__WEBPACK_IMPORTED_MODULE_1__["CorrosionService"]])
    ], BoxCorrectionComponent);
    return BoxCorrectionComponent;
}());



/***/ }),

/***/ "./src/app/routes/demo/components/box-lifetime-corrected/box-lifetime-corrected.component.html":
/*!*****************************************************************************************************!*\
  !*** ./src/app/routes/demo/components/box-lifetime-corrected/box-lifetime-corrected.component.html ***!
  \*****************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<div class=\"bg_pipeline_img\">\n    <div class=\"bg_pipeline_left\">\n        <img src=\"/assets/images/bg/corrected_left.png\" />\n    </div>\n    <div class=\"bg_pipeline_right\"></div>\n    <div class=\"bg_pipeline_caption\">Output</div>\n</div>\n\n<div [class]=\"'box '+status.classList\">\n    <div class=\"heading\">\n        <h2>Corrected Lifetime:</h2>\n    </div>\n\n    <div class=\"body\">\n        <h2>{{status.lifetimeCorrected}} years</h2>\n\n        <div class=\"bar_container\">\n            <div class=\"bar\">\n                <div class=\"bar_shaded\"></div>\n            </div>\n            <div class=\"bar_caption\">\n                based on manufacturer's expected lifetime of {{status.lifetimeManufacturer}} years\n            </div>\n        </div>\n    </div>\n\n    <div class=\"bottom\"></div>\n\n</div>\n<!-- \nfluid parameters\n\ngallons per thousand barrels\n\n* salt types ? mono divalents etc...\n -->\n"

/***/ }),

/***/ "./src/app/routes/demo/components/box-lifetime-corrected/box-lifetime-corrected.component.scss":
/*!*****************************************************************************************************!*\
  !*** ./src/app/routes/demo/components/box-lifetime-corrected/box-lifetime-corrected.component.scss ***!
  \*****************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "[box-lifetime-corrected] {\n  transition: opacity 0.5s linear 0.3s; }\n  [box-lifetime-corrected] .heading {\n    background: #88dd00;\n    color: #fff; }\n  [box-lifetime-corrected] .heading * {\n      margin: 0;\n      padding: 0.66rem 0.85rem;\n      line-height: 1; }\n  [box-lifetime-corrected] .body {\n    padding: 1.5rem 1.1rem;\n    color: #999999; }\n  [box-lifetime-corrected] .body h2,\n    [box-lifetime-corrected] .body h3 {\n      color: #88dd00; }\n  [box-lifetime-corrected] h2 {\n    margin: 0;\n    padding: 0.5rem 0;\n    line-height: 100%; }\n  [box-lifetime-corrected] h3 {\n    font-weight: normal; }\n  [box-lifetime-corrected] h3 b {\n      font-weight: bold; }\n  [box-lifetime-corrected] p {\n    margin: 1.5rem 0.1rem; }\n  [box-lifetime-corrected] .box {\n    border: solid 2px #88dd00;\n    background: #fff; }\n  [box-lifetime-corrected] .box .bottom::after {\n      background: #88dd00; }\n  [box-lifetime-corrected] .bg_pipeline_img {\n    background-image: url(\"/assets/images/bg/corrected_center.png\"); }\n  [box-lifetime-corrected] .bg_pipeline_img .bg_pipeline_right {\n      background-image: url(\"/assets/images/bg/corrected_right.png\"); }\n  [box-lifetime-corrected] .bg_pipeline_img .bg_pipeline_left::after {\n      background: #88dd00; }\n  [box-lifetime-corrected] .bg_pipeline_img .bg_pipeline_caption {\n      color: #88dd00; }\n  [box-lifetime-corrected] .content-box {\n    position: absolute;\n    bottom: 1rem;\n    width: calc(100% - 2.5rem); }\n  [box-lifetime-corrected] .content-box * {\n      color: #999999; }\n  [box-lifetime-corrected] .content-box h3 {\n      color: #333;\n      font-weight: bold;\n      margin: 1.5rem 0 0.88rem 0; }\n  [box-lifetime-corrected] .content-box h4 {\n      margin: 0;\n      font-weight: normal; }\n  [box-lifetime-corrected] .content-box ul {\n      margin: 0 0 0.5rem 0;\n      padding: 0 0 0 1.25rem; }\n  [box-lifetime-corrected] .content-box li {\n      font-weight: bold;\n      margin: 0;\n      line-height: 150%;\n      color: #f8ad05; }\n  [box-lifetime-corrected] .content-box .content {\n      padding: 0;\n      line-height: 2rem; }\n  [box-lifetime-corrected] .content-box .content input {\n        width: 60px;\n        font-size: 12px;\n        font-weight: 400;\n        padding-left: 3px;\n        border-radius: 4px;\n        margin: 1px 0.25rem;\n        border-color: rgba(0, 0, 0, 0.33);\n        border-bottom-color: rgba(0, 0, 0, 0.17);\n        border-right-color: rgba(0, 0, 0, 0.17); }\n  [box-lifetime-corrected] .content-box .content .fieldset {\n        position: relative;\n        text-align: right; }\n  [box-lifetime-corrected] .content-box .content .fieldset .label {\n          display: block;\n          position: absolute;\n          left: 0; }\n  [box-lifetime-corrected] .content-box .content .fieldset input {\n          min-width: 70px; }\n  [box-lifetime-corrected] .content-box .bottom {\n      padding: 1rem 0 0.33rem; }\n  [box-lifetime-corrected] .content-box .bottom h3 {\n        color: #f8ad05;\n        margin: 0 0 0.5rem 0; }\n  [box-lifetime-corrected] .content-box .bottom button {\n        background: #f8ad05;\n        border: none;\n        color: #fff;\n        font-weight: bold;\n        font-size: 1.25rem;\n        line-height: 1.5rem;\n        padding: 0.4rem 1rem 0.44rem;\n        border: solid 2px #e59d00;\n        border-left: none;\n        border-top: none;\n        border-radius: 3px; }\n  [box-lifetime-corrected] .content-box .bottom button:focus {\n          border: solid 1px transparent;\n          position: relative;\n          top: 2px;\n          left: 2px; }\n  [box-lifetime-corrected] .content-box .bottom button > * {\n          vertical-align: middle;\n          color: #fff; }\n"

/***/ }),

/***/ "./src/app/routes/demo/components/box-lifetime-corrected/box-lifetime-corrected.component.ts":
/*!***************************************************************************************************!*\
  !*** ./src/app/routes/demo/components/box-lifetime-corrected/box-lifetime-corrected.component.ts ***!
  \***************************************************************************************************/
/*! exports provided: BoxLifetimeCorrectedComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "BoxLifetimeCorrectedComponent", function() { return BoxLifetimeCorrectedComponent; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var src_app_services_corrosion_service__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! src/app/services/corrosion.service */ "./src/app/services/corrosion.service.ts");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (undefined && undefined.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};


var BoxLifetimeCorrectedComponent = /** @class */ (function () {
    function BoxLifetimeCorrectedComponent(corrosionService) {
        this.corrosionService = corrosionService;
        /*
        data (model)
      */
        this.status = "";
        this.status = corrosionService.get("status");
    }
    /*
    component ready (DOM is not ready)
  */
    BoxLifetimeCorrectedComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.corrosionService.statusUpdated.subscribe(function (status) {
            _this.status = status;
        });
    };
    BoxLifetimeCorrectedComponent = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["Component"])({
            selector: "[box-lifetime-corrected]",
            template: __webpack_require__(/*! ./box-lifetime-corrected.component.html */ "./src/app/routes/demo/components/box-lifetime-corrected/box-lifetime-corrected.component.html"),
            styles: [__webpack_require__(/*! ./box-lifetime-corrected.component.scss */ "./src/app/routes/demo/components/box-lifetime-corrected/box-lifetime-corrected.component.scss")],
            encapsulation: _angular_core__WEBPACK_IMPORTED_MODULE_0__["ViewEncapsulation"].None
        }),
        __metadata("design:paramtypes", [src_app_services_corrosion_service__WEBPACK_IMPORTED_MODULE_1__["CorrosionService"]])
    ], BoxLifetimeCorrectedComponent);
    return BoxLifetimeCorrectedComponent;
}());



/***/ }),

/***/ "./src/app/routes/demo/components/box-lifetime-ok/box-lifetime-ok.component.html":
/*!***************************************************************************************!*\
  !*** ./src/app/routes/demo/components/box-lifetime-ok/box-lifetime-ok.component.html ***!
  \***************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<div class=\"bg_pipeline_img\">\n    <div class=\"bg_pipeline_left\">\n        <img src=\"/assets/images/bg/corrected_left.png\" />\n    </div>\n    <div class=\"bg_pipeline_right\"></div>\n    <div class=\"bg_pipeline_caption\">OK</div>\n    <!-- <div class=\"bg_pipeline_caption right\">Output</div> -->\n</div>\n\n<div [class]=\"'box '+status.classList\">\n    <div class=\"heading\">\n        <h2>Expected Lifetime:</h2>\n    </div>\n\n    <!-- ok -->\n    <div class=\"body\" *ngIf=\"status.classList.indexOf('-na')===-1 && status.lifetimeCalculated>=status.lifetimeManufacturer\">\n        <h2>\n            <span class=\"icon-ui_check\"></span>\n            <span>{{status.lifetimeCalculated}} years</span>\n        </h2>\n        <div class=\"progress_indicator_bar\">\n            <span class=\"part\" [style]=\"progress_bar_style\"></span>\n            <span class=\"rest\"></span>\n        </div>\n        <div class=\"bar_caption\">\n            based on manufacturer's expected lifetime of\n            <span class=\"backend_val\" style=\"white-space:nowrap;\">{{status.lifetimeManufacturer}} years</span>, and a probability of certainty of\n            <span class=\"backend_val\" style=\"\">{{status.lifetimeCalculatedProb}}%</span>\n        </div>\n    </div>\n    <!-- <div class=\"success\">\n            Your pipeline is healthy! No correction necessary.\n        </div> -->\n\n</div>\n<!-- \n    fluid parameters\n    \n    gallons per thousand barrels\n    \n    * salt types ? mono divalents etc...\n     -->\n"

/***/ }),

/***/ "./src/app/routes/demo/components/box-lifetime-ok/box-lifetime-ok.component.scss":
/*!***************************************************************************************!*\
  !*** ./src/app/routes/demo/components/box-lifetime-ok/box-lifetime-ok.component.scss ***!
  \***************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "[box-lifetime-ok] {\n  position: relative !important;\n  display: block !important;\n  visibility: visible !important;\n  opacity: 1 !important;\n  /*\n    this .box is styled in relation to parent layout, because Angular is so clever it does not allow styling children from a parent component\n    * default .box style in app/styles.scss\n  */ }\n  [box-lifetime-ok] .progress_indicator_bar {\n    border-color: #88dd00; }\n  [box-lifetime-ok] .progress_indicator_bar .part {\n      background: #88dd00; }\n  [box-lifetime-ok] .heading {\n    background: #88dd00;\n    color: #fff; }\n  [box-lifetime-ok] .heading * {\n      margin: 0;\n      padding: 0.66rem 0.85rem;\n      line-height: 1; }\n  [box-lifetime-ok] .body {\n    padding: 1.5rem 1.1rem;\n    color: #999999; }\n  [box-lifetime-ok] .body h2,\n    [box-lifetime-ok] .body h3 {\n      color: #88dd00; }\n  [box-lifetime-ok] .body .icon-ui_check {\n      color: #88dd00;\n      font-size: 2rem;\n      line-height: 2rem;\n      padding: 0.75rem 0.5rem 0 0; }\n  [box-lifetime-ok] .backend_val {\n    color: #88dd00; }\n  [box-lifetime-ok] h2 {\n    margin: 0;\n    padding: 0.5rem 0;\n    line-height: 100%; }\n  [box-lifetime-ok] h3 {\n    font-weight: normal; }\n  [box-lifetime-ok] h3 b {\n      font-weight: bold; }\n  [box-lifetime-ok] p {\n    margin: 1.5rem 0.1rem; }\n  [box-lifetime-ok] .box {\n    border: solid 2px #88dd00;\n    background: #fff;\n    max-width: 360px; }\n  [box-lifetime-ok] .box .bottom::after {\n      background: #88dd00; }\n  [box-lifetime-ok] .bg_pipeline_img {\n    background-image: url(\"/assets/images/bg/corrected_center.png\"); }\n  [box-lifetime-ok] .bg_pipeline_img .bg_pipeline_right {\n      background-image: url(\"/assets/images/bg/corrected_right.png\"); }\n  [box-lifetime-ok] .bg_pipeline_img .bg_pipeline_left::after {\n      background: #88dd00; }\n  [box-lifetime-ok] .bg_pipeline_img .bg_pipeline_caption {\n      color: #88dd00; }\n  [box-lifetime-ok] .bg_pipeline_img .bg_pipeline_caption.right {\n      color: #88dd00;\n      width: 35%;\n      left: 100%; }\n  [box-lifetime-ok] .content-box {\n    position: absolute;\n    bottom: 1rem;\n    width: calc(100% - 2.5rem); }\n  [box-lifetime-ok] .content-box * {\n      color: #999999; }\n  [box-lifetime-ok] .content-box h3 {\n      color: #333;\n      font-weight: bold;\n      margin: 1.5rem 0 0.88rem 0; }\n  [box-lifetime-ok] .content-box h4 {\n      margin: 0;\n      font-weight: normal; }\n  [box-lifetime-ok] .content-box ul {\n      margin: 0 0 0.5rem 0;\n      padding: 0 0 0 1.25rem; }\n  [box-lifetime-ok] .content-box li {\n      font-weight: bold;\n      margin: 0;\n      line-height: 150%;\n      color: #88dd00; }\n  [box-lifetime-ok] .content-box .content {\n      padding: 0;\n      line-height: 2rem; }\n  [box-lifetime-ok] .content-box .content input {\n        width: 60px;\n        font-size: 12px;\n        font-weight: 400;\n        padding-left: 3px;\n        border-radius: 4px;\n        margin: 1px 0.25rem;\n        border-color: rgba(0, 0, 0, 0.33);\n        border-bottom-color: rgba(0, 0, 0, 0.17);\n        border-right-color: rgba(0, 0, 0, 0.17); }\n  [box-lifetime-ok] .content-box .content .fieldset {\n        position: relative;\n        text-align: right; }\n  [box-lifetime-ok] .content-box .content .fieldset .label {\n          display: block;\n          position: absolute;\n          left: 0; }\n  [box-lifetime-ok] .content-box .content .fieldset input {\n          min-width: 70px; }\n  [box-lifetime-ok] .content-box .bottom {\n      padding: 1rem 0 0.33rem; }\n  [box-lifetime-ok] .content-box .bottom h3 {\n        color: #88dd00;\n        margin: 0 0 0.5rem 0; }\n  [box-lifetime-ok] .content-box .bottom button {\n        background: #88dd00;\n        border: none;\n        color: #fff;\n        font-weight: bold;\n        font-size: 1.25rem;\n        line-height: 1.5rem;\n        padding: 0.4rem 1rem 0.44rem;\n        border: solid 2px #e59d00;\n        border-left: none;\n        border-top: none;\n        border-radius: 3px; }\n  [box-lifetime-ok] .content-box .bottom button:focus {\n          border: solid 1px transparent;\n          position: relative;\n          top: 2px;\n          left: 2px; }\n  [box-lifetime-ok] .content-box .bottom button > * {\n          vertical-align: middle;\n          color: #fff; }\n"

/***/ }),

/***/ "./src/app/routes/demo/components/box-lifetime-ok/box-lifetime-ok.component.ts":
/*!*************************************************************************************!*\
  !*** ./src/app/routes/demo/components/box-lifetime-ok/box-lifetime-ok.component.ts ***!
  \*************************************************************************************/
/*! exports provided: BoxLifetimeOkComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "BoxLifetimeOkComponent", function() { return BoxLifetimeOkComponent; });
/* harmony import */ var _angular_platform_browser__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/platform-browser */ "./node_modules/@angular/platform-browser/fesm5/platform-browser.js");
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var src_app_services_corrosion_service__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! src/app/services/corrosion.service */ "./src/app/services/corrosion.service.ts");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (undefined && undefined.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};



var BoxLifetimeOkComponent = /** @class */ (function () {
    function BoxLifetimeOkComponent(corrosionService, _sanitizer) {
        this.corrosionService = corrosionService;
        this._sanitizer = _sanitizer;
        /*
        data (model)
      */
        this.status = "";
        /*
        component ready (DOM is not ready)
      */
        this.progress_bar_style = "";
        this.status = corrosionService.get("status");
    }
    BoxLifetimeOkComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.progress_bar_style = this._sanitizer.bypassSecurityTrustStyle("width:" + this.status.lifetimeCalculated /
            this.status.lifetimeManufacturer *
            100 + "%;");
        this.corrosionService.statusUpdated.subscribe(function (status) {
            _this.status = status;
        });
    };
    BoxLifetimeOkComponent = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_1__["Component"])({
            selector: "[box-lifetime-ok]",
            template: __webpack_require__(/*! ./box-lifetime-ok.component.html */ "./src/app/routes/demo/components/box-lifetime-ok/box-lifetime-ok.component.html"),
            styles: [__webpack_require__(/*! ./box-lifetime-ok.component.scss */ "./src/app/routes/demo/components/box-lifetime-ok/box-lifetime-ok.component.scss")],
            encapsulation: _angular_core__WEBPACK_IMPORTED_MODULE_1__["ViewEncapsulation"].None
        }),
        __metadata("design:paramtypes", [src_app_services_corrosion_service__WEBPACK_IMPORTED_MODULE_2__["CorrosionService"],
            _angular_platform_browser__WEBPACK_IMPORTED_MODULE_0__["DomSanitizer"]])
    ], BoxLifetimeOkComponent);
    return BoxLifetimeOkComponent;
}());



/***/ }),

/***/ "./src/app/routes/demo/components/box-lifetime/box-lifetime.component.html":
/*!*********************************************************************************!*\
  !*** ./src/app/routes/demo/components/box-lifetime/box-lifetime.component.html ***!
  \*********************************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<div class=\"bg_pipeline_img\">\n    <div class=\"bg_pipeline_left\">\n        <img src=\"/assets/images/bg/lifetime_left.png\" />\n    </div>\n    <div class=\"bg_pipeline_right\"></div>\n    <div class=\"bg_pipeline_caption\">Analyze</div>\n</div>\n\n<div [class]=\"'box '+status.classList\">\n    <div class=\"heading\">\n        <h2>Expected Lifetime:</h2>\n    </div>\n\n\n    <!-- na -->\n    <div class=\"body\" *ngIf=\"status.classList.indexOf('-na')!==-1\">\n        <div>\n            <div class=\"icon-ui_alert\"></div>\n        </div>\n        <div>\n            <h2>Not enough data</h2>\n            <div class=\"error\">\n                <div>\n                    &#8226; Please enter more measurements, as many as possible for the most accurate calculation\n                </div>\n                <!-- <div *ngFor=\"let problem of status.problems\">\n                        &#8226; {{problem}}\n                    </div> -->\n            </div>\n        </div>\n    </div>\n\n    <!-- problems -->\n    <div class=\"body\" *ngIf=\"status.classList.indexOf('-ok')===-1 && status.classList.indexOf('-na')===-1 && status.lifetimeCalculated<status.lifetimeManufacturer\">\n\n        <h2>\n            <span class=\"icon-ui_alert\"></span>\n            <span>{{status.lifetimeCalculated}} years</span>\n        </h2>\n        <div class=\"progress_indicator_bar\">\n            <span class=\"part\" [style]=\"progress_bar_style\"></span>\n            <span class=\"rest\"></span>\n        </div>\n\n        <div class=\"bar_container\">\n            <div class=\"bar\">\n                <div class=\"bar_shaded\"></div>\n            </div>\n            <div class=\"bar_caption\">\n                based on manufacturer's expected lifetime of\n                <span class=\"backend_val\" style=\"white-space:nowrap;\">{{status.lifetimeManufacturer}} years</span>, and a probability of certainty of\n                <span class=\"backend_val\" style=\"\">{{status.lifetimeCalculatedProb}}%</span>\n            </div>\n        </div>\n        <div>&nbsp;</div>\n        <h3>Details:</h3>\n        <ul>\n            <li *ngFor=\"let problem of status.problems\">{{problem}} </li>\n        </ul>\n\n    </div>\n    <!-- \n    fluid parameters\n    \n    gallons per thousand barrels\n    \n    * salt types ? mono divalents etc...\n     -->\n"

/***/ }),

/***/ "./src/app/routes/demo/components/box-lifetime/box-lifetime.component.scss":
/*!*********************************************************************************!*\
  !*** ./src/app/routes/demo/components/box-lifetime/box-lifetime.component.scss ***!
  \*********************************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "[box-lifetime] {\n  transition: opacity 0.5s linear 0s; }\n  [box-lifetime] .progress_indicator_bar {\n    border-color: #d45c62; }\n  [box-lifetime] .progress_indicator_bar .part {\n      background: #d45c62; }\n  [box-lifetime] .heading {\n    background: #d45c62;\n    color: #fff; }\n  [box-lifetime] .heading * {\n      margin: 0;\n      padding: 0.66rem 0.85rem;\n      line-height: 1; }\n  [box-lifetime] .body {\n    padding: 1.5rem 1.1rem;\n    color: #999999; }\n  [box-lifetime] .body h2 {\n      color: #d45c62; }\n  [box-lifetime] .body h2,\n    [box-lifetime] .body h3 {\n      margin: 0;\n      line-height: 100%;\n      padding: 0.5rem 0; }\n  [box-lifetime] .body .backend_val {\n      color: #d45c62; }\n  [box-lifetime] .body .icon-ui_alert {\n      color: #d45c62;\n      font-size: 2rem;\n      line-height: 2rem;\n      padding: 0.66rem 0.5rem 0 0; }\n  [box-lifetime] p {\n    margin: 1.5rem 0.1rem; }\n  [box-lifetime] ul {\n    margin: 0 0 0.5rem 0;\n    padding: 0 0 0 1.25rem; }\n  [box-lifetime] li {\n    margin: 0;\n    line-height: 150%; }\n  [box-lifetime] .error {\n    color: #d45c62; }\n  [box-lifetime] .box {\n    border: solid 2px #d45c62;\n    background: #fff; }\n  [box-lifetime] .box .bottom::after {\n      content: \" \";\n      background: #d45c62; }\n  [box-lifetime] .bg_pipeline_img {\n    background-image: url(\"/assets/images/bg/lifetime_center.png\"); }\n  [box-lifetime] .bg_pipeline_img .bg_pipeline_right {\n      background-image: url(\"/assets/images/bg/lifetime_right.png\"); }\n  [box-lifetime] .bg_pipeline_img .bg_pipeline_left::after {\n      background: #d45c62; }\n  [box-lifetime] .bg_pipeline_img .bg_pipeline_caption {\n      color: #d45c62; }\n  [box-lifetime] .content-box {\n    position: absolute;\n    bottom: 1rem;\n    width: calc(100% - 2.5rem);\n    line-height: 150%; }\n  [box-lifetime] .content-box * {\n      color: #999999; }\n  [box-lifetime] .content-box h3 {\n      color: #333;\n      font-weight: bold;\n      margin: 1.5rem 0 0.88rem 0; }\n  [box-lifetime] .content-box h4 {\n      margin: 0;\n      font-weight: normal; }\n  [box-lifetime] .content-box .content {\n      padding: 0;\n      line-height: 2rem; }\n  [box-lifetime] .content-box .content input {\n        width: 60px;\n        font-size: 12px;\n        font-weight: 400;\n        padding-left: 3px;\n        border-radius: 4px;\n        margin: 1px 0.25rem;\n        border-color: rgba(0, 0, 0, 0.33);\n        border-bottom-color: rgba(0, 0, 0, 0.17);\n        border-right-color: rgba(0, 0, 0, 0.17); }\n  [box-lifetime] .content-box .content .fieldset {\n        position: relative;\n        text-align: right; }\n  [box-lifetime] .content-box .content .fieldset .label {\n          display: block;\n          position: absolute;\n          left: 0; }\n  [box-lifetime] .content-box .content .fieldset input {\n          min-width: 70px; }\n  [box-lifetime] .content-box .content-bottom {\n      padding: 1rem 0 0.33rem; }\n  [box-lifetime] .content-box .content-bottom h3 {\n        color: #d45c62;\n        margin: 0 0 0.5rem 0; }\n  [box-lifetime] .content-box .content-bottom button {\n        background: #d45c62;\n        border: none;\n        color: #fff;\n        font-weight: bold;\n        font-size: 1.25rem;\n        line-height: 1.5rem;\n        padding: 0.4rem 1rem 0.44rem;\n        border: solid 2px #e59d00;\n        border-left: none;\n        border-top: none;\n        border-radius: 3px; }\n  [box-lifetime] .content-box .content-bottom button:focus {\n          border: solid 1px transparent;\n          position: relative;\n          top: 2px;\n          left: 2px; }\n  [box-lifetime] .content-box .content-bottom button > * {\n          vertical-align: middle;\n          color: #fff; }\n"

/***/ }),

/***/ "./src/app/routes/demo/components/box-lifetime/box-lifetime.component.ts":
/*!*******************************************************************************!*\
  !*** ./src/app/routes/demo/components/box-lifetime/box-lifetime.component.ts ***!
  \*******************************************************************************/
/*! exports provided: BoxLifetimeComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "BoxLifetimeComponent", function() { return BoxLifetimeComponent; });
/* harmony import */ var _angular_platform_browser__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/platform-browser */ "./node_modules/@angular/platform-browser/fesm5/platform-browser.js");
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var src_app_services_corrosion_service__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! src/app/services/corrosion.service */ "./src/app/services/corrosion.service.ts");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (undefined && undefined.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};



var BoxLifetimeComponent = /** @class */ (function () {
    function BoxLifetimeComponent(corrosionService, _sanitizer) {
        this.corrosionService = corrosionService;
        this._sanitizer = _sanitizer;
        /*
        data (model)
      */
        this.status = "";
        /*
        component ready (DOM is not ready)
      */
        this.progress_bar_style = "";
        this.status = corrosionService.get("status");
    }
    BoxLifetimeComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.progress_bar_style = this._sanitizer.bypassSecurityTrustStyle("width:" + (this.status.lifetimeCalculated /
            this.status.lifetimeManufacturer) *
            100 + "%;");
        this.corrosionService.statusUpdated.subscribe(function (status) {
            _this.status = status;
            _this.progress_bar_style = _this._sanitizer.bypassSecurityTrustStyle("width:" + (_this.status.lifetimeCalculated /
                _this.status.lifetimeManufacturer) *
                100 + "%;");
        });
    };
    BoxLifetimeComponent = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_1__["Component"])({
            selector: "[box-lifetime]",
            template: __webpack_require__(/*! ./box-lifetime.component.html */ "./src/app/routes/demo/components/box-lifetime/box-lifetime.component.html"),
            styles: [__webpack_require__(/*! ./box-lifetime.component.scss */ "./src/app/routes/demo/components/box-lifetime/box-lifetime.component.scss")],
            encapsulation: _angular_core__WEBPACK_IMPORTED_MODULE_1__["ViewEncapsulation"].None
        }),
        __metadata("design:paramtypes", [src_app_services_corrosion_service__WEBPACK_IMPORTED_MODULE_2__["CorrosionService"],
            _angular_platform_browser__WEBPACK_IMPORTED_MODULE_0__["DomSanitizer"]])
    ], BoxLifetimeComponent);
    return BoxLifetimeComponent;
}());



/***/ }),

/***/ "./src/app/routes/demo/components/box-measure/box-measure.component.html":
/*!*******************************************************************************!*\
  !*** ./src/app/routes/demo/components/box-measure/box-measure.component.html ***!
  \*******************************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<div class=\"bg_pipeline_img\">\n    <div class=\"bg_pipeline_left\">\n        <img src=\"/assets/images/bg/measure_left.png\" />\n    </div>\n    <div class=\"bg_pipeline_right\"></div>\n    <div class=\"bg_pipeline_caption left\">Input</div>\n    <div class=\"bg_pipeline_caption\">Measure</div>\n</div>\n\n<div [class]=\"'box '+status.classList\">\n    <div class=\"heading\">\n        <h2>Fluid Parameters:</h2>\n    </div>\n    <div class=\"body sliders verticals\">\n\n        <input-slider vertical *ngFor=\"let substance of generateArray(measurements)\" [substance]=\"substance\" (substanceChange)=\"substanceChange($event)\"\n            [ngStyle]=\"inputSliderNgStyle\"></input-slider>\n\n    </div>\n\n    <div class=\"bottom\">\n        <button value=\"calculate\" (click)=\"calculate($event);\" onMouseUp=\"setTimeout(function(){document.getElementById('calculate_measurements_button').blur();},500);\"\n            id=\"calculate_measurements_button\">\n            <span class=\"icon-ui_cycle\"></span>\n            <span> Calculate</span>\n        </button>\n    </div>\n</div>\n"

/***/ }),

/***/ "./src/app/routes/demo/components/box-measure/box-measure.component.scss":
/*!*******************************************************************************!*\
  !*** ./src/app/routes/demo/components/box-measure/box-measure.component.scss ***!
  \*******************************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "[box-measure] {\n  position: relative !important;\n  display: block !important;\n  visibility: visible !important;\n  opacity: 1 !important;\n  width: 370px !important;\n  min-width: 370px !important; }\n  [box-measure] .heading {\n    background: #52b9f0;\n    color: #fff; }\n  [box-measure] .heading * {\n      margin: 0;\n      padding: 0.66rem 0.85rem;\n      line-height: 1; }\n  [box-measure] .body {\n    display: -ms-flexbox;\n    display: flex;\n    padding: 0 1rem 0 0.166rem; }\n  [box-measure] .body > * {\n      -ms-flex-positive: 1;\n          flex-grow: 1; }\n  [box-measure] .bottom {\n    text-align: right;\n    padding: 1rem 1.25rem 1.33rem; }\n  [box-measure] .bottom button {\n      background: #52b9f0;\n      border: none;\n      color: #fff;\n      font-weight: bold;\n      font-size: 1.25rem;\n      line-height: 1.5rem;\n      padding: 0.35rem 1rem 0.5rem;\n      border: solid 2px #26a4e7;\n      border-left: none;\n      border-top: none;\n      border-radius: 3px;\n      cursor: pointer; }\n  [box-measure] .bottom button:focus {\n        border: solid 1px transparent;\n        position: relative;\n        top: 2px;\n        left: 2px; }\n  [box-measure] .bottom button > * {\n        vertical-align: middle; }\n  [box-measure] .box {\n    border: solid 2px #52b9f0; }\n  [box-measure] .box .heading {\n      background: #52b9f0; }\n  [box-measure] .bg_pipeline_img {\n    background-image: url(\"/assets/images/bg/measure_center.png\"); }\n  [box-measure] .bg_pipeline_img .bg_pipeline_right {\n      background-image: url(\"/assets/images/bg/measure_right.png\"); }\n  [box-measure] .bg_pipeline_img .bg_pipeline_left::after {\n      background: #52b9f0;\n      bottom: 100%;\n      height: 150%; }\n  [box-measure] .bg_pipeline_img .bg_pipeline_caption {\n      color: #52b9f0;\n      width: calc(100% + 3rem); }\n  [box-measure] .bg_pipeline_img .bg_pipeline_caption.left {\n      color: #fff;\n      width: 23.1%; }\n"

/***/ }),

/***/ "./src/app/routes/demo/components/box-measure/box-measure.component.ts":
/*!*****************************************************************************!*\
  !*** ./src/app/routes/demo/components/box-measure/box-measure.component.ts ***!
  \*****************************************************************************/
/*! exports provided: BoxMeasureComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "BoxMeasureComponent", function() { return BoxMeasureComponent; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var src_app_services_corrosion_service__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! src/app/services/corrosion.service */ "./src/app/services/corrosion.service.ts");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (undefined && undefined.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};


var BoxMeasureComponent = /** @class */ (function () {
    function BoxMeasureComponent(corrosionService) {
        this.corrosionService = corrosionService;
        /*
        data (model)
      */
        this.status = {};
        this.measurements = {};
        /*
        data (extras for view/UI)
      */
        this.inputSliderNgStyle = {
            width: "auto" // because angular templates can't do Math.floor(), below
        };
        this.status = corrosionService.get("status");
        this.measurements = corrosionService.get("measurements");
    }
    /*
    component ready (DOM is not ready)
  */
    BoxMeasureComponent.prototype.ngOnInit = function () {
        this.inputSliderNgStyle.width =
            Math.floor(100 / Object.keys(this.measurements).length) + "%";
    };
    /*
    events
  */
    BoxMeasureComponent.prototype.substanceChange = function (measurement) {
        this.measurements[measurement.id] = measurement;
        this.corrosionService.set_measurement(measurement);
    };
    BoxMeasureComponent.prototype.calculate = function () {
        console.log("click");
        this.corrosionService.calculate();
    };
    /*
    lib
  */
    BoxMeasureComponent.prototype.generateArray = function (obj) {
        // because *ngFor can't iterate over objects...
        // return Object.keys(obj).map(key => {
        //   return { key: key, value: obj[key] };
        // });
        return Object.values(obj);
    };
    BoxMeasureComponent = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["Component"])({
            selector: "[box-measure]",
            template: __webpack_require__(/*! ./box-measure.component.html */ "./src/app/routes/demo/components/box-measure/box-measure.component.html"),
            styles: [__webpack_require__(/*! ./box-measure.component.scss */ "./src/app/routes/demo/components/box-measure/box-measure.component.scss")],
            encapsulation: _angular_core__WEBPACK_IMPORTED_MODULE_0__["ViewEncapsulation"].None
        }),
        __metadata("design:paramtypes", [src_app_services_corrosion_service__WEBPACK_IMPORTED_MODULE_1__["CorrosionService"]])
    ], BoxMeasureComponent);
    return BoxMeasureComponent;
}());



/***/ }),

/***/ "./src/app/routes/demo/components/input-slider/input-slider.component.html":
/*!*********************************************************************************!*\
  !*** ./src/app/routes/demo/components/input-slider/input-slider.component.html ***!
  \*********************************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<div [class]=\"'mymat-slider-fieldset '+addClass\" ng-if=\"substance\">\n    <div class=\"mymat-slider-label\">\n        <label>\n            <b>{{substance.name}}</b> ({{substance.unit}})</label>\n    </div>\n    <div class=\"mymat-slider-input\">\n        <input type=\"number\" [step]=\"substance.step\" [min]=\"substance.na\" [max]=\"substance.max\" [value]=\"substance.value\" (change)=\"sliderValueChange($event)\"\n        />\n    </div>\n    <div class=\"mymat-slider-slider\">\n\n        <mat-slider vertical thumbLabel [step]=\"substance.step\" [min]=\"substance.na\" [max]=\"substance.max\" [value]=\"substance.value===null ? substance.na : substance.value\"\n            (input)=\"sliderInputChange($event)\" (change)=\"sliderValueChange($event)\"></mat-slider>\n\n        <div class=\"mymat-slider-ticks left\">\n            <div class=\"t tMax\" *ngIf=\"substance.statusAlert\" (click)=\"sliderStatusSet('alert')\">\n                <i>&nbsp;</i>\n                <span class=\"icon-ui_alert\"></span>\n            </div>\n            <div class=\"t tBad\" *ngIf=\"substance.badAtStyle\" (click)=\"sliderStatusSet('bad')\" [style]=\"substance.badAtStyle\">\n                <i>&nbsp;</i>\n                <span class=\"icon-ui_alert\"></span>\n            </div>\n            <div class=\"t tDanger\" *ngIf=\"substance.dangerAtStyle\" (click)=\"sliderStatusSet('danger')\" [style]=\"substance.dangerAtStyle\">\n                <i>&nbsp;</i>\n                <span class=\"icon-ui_alert\"></span>\n            </div>\n            <div class=\"t tOk\" [style]=\"this.substance.zeroAtStyle\" (click)=\"sliderStatusSet('ok')\">\n                <i>&nbsp;</i>\n                <span class=\"icon-ui_check\"></span>\n            </div>\n            <!-- <div class=\"t tNa\">\n                <span class=\"\">N/A</span>\n            </div> -->\n        </div>\n\n        <div class=\"mymat-slider-ticks right\">\n            <div class=\"t\">\n                &#8805; {{substance.max}}\n            </div>\n            <div class=\"t tBadRight\" [style]=\"substance.badAtStyle\">\n                {{substance.statusBad}}\n            </div>\n            <div class=\"t\" [style]=\"substance.dangerAtStyle\">\n                {{substance.statusDanger}}\n            </div>\n            <div class=\"t\" [style]=\"this.substance.zeroAtStyle\">\n                <span *ngIf=\"substance.statusOk>0\">&#8804; </span>{{substance.min}}\n            </div>\n            <div class=\"t tNa\">\n                N/A\n            </div>\n        </div>\n\n    </div>\n</div>"

/***/ }),

/***/ "./src/app/routes/demo/components/input-slider/input-slider.component.scss":
/*!*********************************************************************************!*\
  !*** ./src/app/routes/demo/components/input-slider/input-slider.component.scss ***!
  \*********************************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "* {\n  outline: none; }\n\n*:focus {\n  outline: none; }\n\n.mymat-slider-fieldset {\n  position: relative;\n  width: calc(100% - 1rem);\n  margin: 1rem 0.5rem;\n  display: -ms-flexbox;\n  display: flex;\n  -ms-flex-direction: column;\n      flex-direction: column;\n  text-align: center;\n  height: calc(104% - 2.5rem); }\n\n.mymat-slider-fieldset > * {\n    width: auto; }\n\n.mymat-slider-label {\n  vertical-align: top;\n  color: rgba(0, 0, 0, 0.87);\n  line-height: 200%; }\n\n.mymat-slider-input {\n  position: relative;\n  display: block;\n  padding: 0 4.4% 0 3.3%;\n  white-space: nowrap; }\n\n.mymat-slider-input input {\n  display: inline-block;\n  width: calc(100% - 1rem);\n  font-size: 12px;\n  font-weight: 400;\n  padding-left: 5px;\n  border-radius: 4px;\n  border-width: 1px;\n  border-color: white;\n  border-top-color: rgba(0, 0, 0, 0.67);\n  border-left-color: rgba(0, 0, 0, 0.67);\n  border-bottom-color: rgba(0, 0, 0, 0.17);\n  border-right-color: rgba(0, 0, 0, 0.17); }\n\n.mymat-slider-slider {\n  position: relative;\n  top: 1rem;\n  height: 100%;\n  display: -ms-flexbox;\n  display: flex;\n  -ms-flex-positive: 1;\n      flex-grow: 1;\n  margin-top: 0;\n  padding-top: 0; }\n\n.mymat-slider-slider mat-slider {\n    width: 40%;\n    height: 100%;\n    padding: 0;\n    margin: 0 0 0 20%; }\n\n.mymat-slider-slider .mymat-slider-ticks {\n    font-size: 12px;\n    font-weight: 400;\n    line-height: 115%;\n    position: relative;\n    margin: 1px 0 0 0;\n    color: #bfbfbf;\n    height: 100%; }\n\n.mymat-slider-slider .mymat-slider-ticks .t {\n      position: absolute;\n      white-space: nowrap; }\n\n.mymat-slider-slider .mymat-slider-ticks .t i {\n        position: absolute;\n        top: -0.5rem;\n        left: 0.8rem;\n        width: 1.5rem;\n        color: #bfbfbf;\n        border-bottom: solid 1.25px #bfbfbf; }\n\n.mymat-slider-slider .mymat-slider-ticks .tMax {\n      top: 0;\n      color: #d65139; }\n\n.mymat-slider-slider .mymat-slider-ticks .tDanger {\n      color: #f88f05; }\n\n.mymat-slider-slider .mymat-slider-ticks .tBad {\n      color: #f5c33a; }\n\n.mymat-slider-slider .mymat-slider-ticks .tBadRight {\n      padding-top: 1px !important; }\n\n.mymat-slider-slider .mymat-slider-ticks .tOk {\n      bottom: calc(15% + 2px);\n      color: #6ace00;\n      padding: 1px 0;\n      margin: 0 -1px; }\n\n.mymat-slider-slider .mymat-slider-ticks .tNa {\n      bottom: 1px;\n      color: #bfbfbf; }\n\n.mymat-slider-slider .mymat-slider-ticks.right {\n      text-align: left;\n      left: 5px; }\n\n.mymat-slider-slider .mymat-slider-ticks.right .t {\n        left: -1px;\n        pointer-events: none;\n        outline: none;\n        padding: 0 0 0 2px;\n        background: white; }\n\n.mymat-slider-slider .mymat-slider-ticks.left {\n      text-align: right;\n      right: 14px; }\n\n.mymat-slider-slider .mymat-slider-ticks.left .t {\n        right: 0;\n        cursor: pointer; }\n\n.mymat-slider-slider .mymat-slider-ticks.left .t span {\n          outline: none;\n          text-shadow: 3px 0px 0 white;\n          display: inline-block;\n          position: relative; }\n\n.mymat-slider-slider .mymat-slider-ticks.left .t span.icon-ui_alert {\n          zoom: 0.9; }\n"

/***/ }),

/***/ "./src/app/routes/demo/components/input-slider/input-slider.component.ts":
/*!*******************************************************************************!*\
  !*** ./src/app/routes/demo/components/input-slider/input-slider.component.ts ***!
  \*******************************************************************************/
/*! exports provided: InputSliderComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "InputSliderComponent", function() { return InputSliderComponent; });
/* harmony import */ var _angular_platform_browser__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/platform-browser */ "./node_modules/@angular/platform-browser/fesm5/platform-browser.js");
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (undefined && undefined.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};


var InputSliderComponent = /** @class */ (function () {
    function InputSliderComponent(_sanitizer) {
        this._sanitizer = _sanitizer;
        this.addClass = "";
        this.substanceChange = new _angular_core__WEBPACK_IMPORTED_MODULE_1__["EventEmitter"]();
    }
    InputSliderComponent.prototype.ngOnInit = function () {
        this.substance.min = this.substance.statusOk;
        this.substance.max = this.substance.statusAlert;
        this.substance.diff = this.substance.max - this.substance.min;
        if (this.substance.statusDanger && this.substance.statusBad) {
            this.substance.na = this.substance.min - this.substance.diff / 3;
            this.substance.zeroAtStyle = this._sanitizer.bypassSecurityTrustStyle("top:66%");
        }
        else if (this.substance.statusDanger || this.substance.statusBad) {
            this.substance.na = this.substance.min - this.substance.diff / 2;
            this.substance.zeroAtStyle = this._sanitizer.bypassSecurityTrustStyle("top:59%");
        }
        else {
            this.substance.na = this.substance.min - this.substance.diff;
            this.substance.zeroAtStyle = this._sanitizer.bypassSecurityTrustStyle("top:44.5%");
        }
        if (this.substance.statusBad) {
            var nTotal = this.substance.max - this.substance.na;
            var nTop = (this.substance.statusAlert - this.substance.statusBad) /
                nTotal;
            this.substance.badAtStyle = this._sanitizer.bypassSecurityTrustStyle("top:" + Math.round(nTop * 86) + "%");
        }
        if (this.substance.statusDanger) {
            var nTotal = this.substance.max - this.substance.na;
            var nTop = (this.substance.statusAlert - this.substance.statusDanger) /
                nTotal;
            this.substance.dangerAtStyle = this._sanitizer.bypassSecurityTrustStyle("top:" + Math.round(nTop * 86) + "%");
        }
        if (this.substance.max < 10) {
            this.substance.step = 0.1;
        }
        else {
            this.substance.step = 1;
        }
        if (this.vertical !== undefined) {
            this.addClass += " vertical";
        }
    };
    InputSliderComponent.prototype.sliderInputValueChange_computeValue = function (eValue) {
        var value = eValue;
        if (this.substance.step === 1) {
            value = Math.round(value);
        }
        var minNaDiffHalf = (this.substance.min + this.substance.na) / 2;
        if (Math.abs(minNaDiffHalf) <= 10) {
            minNaDiffHalf = 0;
        }
        if (eValue === null || eValue === "" || eValue < minNaDiffHalf) {
            value = null;
        }
        else if (eValue < this.substance.min) {
            value = this.substance.min;
        }
        else if (eValue > this.substance.max) {
            value = this.substance.max;
        }
        return value;
    };
    InputSliderComponent.prototype.sliderStatusSet = function (status) {
        if (status === "na") {
            this.substance.value = this.substance.na;
        }
        else if (status === "ok") {
            this.substance.value = this.substance.statusOk;
        }
        else if (status === "bad") {
            this.substance.value = this.substance.statusBad;
        }
        else if (status === "danger") {
            this.substance.value = this.substance.statusDanger;
        }
        else if (status === "alert") {
            this.substance.value = this.substance.statusAlert;
        }
    };
    InputSliderComponent.prototype.sliderInputChange = function (e) {
        e.source._value = this.sliderInputValueChange_computeValue(e.value);
    };
    InputSliderComponent.prototype.sliderValueChange = function (e) {
        this.substance.value = this.sliderInputValueChange_computeValue(e.target ? e.target.value : e.value);
        this.substanceChange.emit(this.substance);
    };
    __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_1__["Input"])(),
        __metadata("design:type", Object)
    ], InputSliderComponent.prototype, "vertical", void 0);
    __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_1__["Input"])(),
        __metadata("design:type", Object)
    ], InputSliderComponent.prototype, "substance", void 0);
    __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_1__["Output"])(),
        __metadata("design:type", Object)
    ], InputSliderComponent.prototype, "substanceChange", void 0);
    InputSliderComponent = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_1__["Component"])({
            selector: "input-slider",
            template: __webpack_require__(/*! ./input-slider.component.html */ "./src/app/routes/demo/components/input-slider/input-slider.component.html"),
            styles: [__webpack_require__(/*! ./input-slider.component.scss */ "./src/app/routes/demo/components/input-slider/input-slider.component.scss")]
        }),
        __metadata("design:paramtypes", [_angular_platform_browser__WEBPACK_IMPORTED_MODULE_0__["DomSanitizer"]])
    ], InputSliderComponent);
    return InputSliderComponent;
}());



/***/ }),

/***/ "./src/app/routes/demo/demo.component.html":
/*!*************************************************!*\
  !*** ./src/app/routes/demo/demo.component.html ***!
  \*************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<div id=\"pipeline\" [class]=\"statusClass\">\n\n    <span *ngIf=\"statusClass.indexOf('show-results')!==-1\" id=\"scroll-left\" class=\"scroll left\" onclick=\"window.scroll({left: 0,behavior: 'smooth'});\">\n        <span>\n            <b>&laquo;</b>\n            <span> Measure </span>\n        </span>\n    </span>\n    <span *ngIf=\"statusClass.indexOf('show-results')!==-1\" id=\"scroll-right\" class=\"scroll right\" onclick=\"window.scroll({left: 2000,behavior: 'smooth'});\">\n        <span>\n            <span> Corrected Lifetime </span>\n            <b>&raquo;</b>\n        </span>\n    </span>\n\n    <div box-measure></div>\n    <div box-lifetime-ok *ngIf=\"status.classList.indexOf('-ok')!==-1\"></div>\n\n    <div box-lifetime></div>\n    <div box-correction></div>\n    <div box-lifetime-corrected></div>\n\n</div>\n"

/***/ }),

/***/ "./src/app/routes/demo/demo.component.scss":
/*!*************************************************!*\
  !*** ./src/app/routes/demo/demo.component.scss ***!
  \*************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = ".progress_indicator_bar {\n  position: relative;\n  margin: 0.5rem 0 1rem;\n  width: 99%;\n  height: 0.5rem;\n  border: solid 1px #bfbfbf;\n  background: #fff; }\n  .progress_indicator_bar .part {\n    position: absolute;\n    top: 0;\n    left: 0;\n    height: 100%;\n    width: 50%;\n    background: #bfbfbf; }\n  .scroll {\n  opacity: 0;\n  visibility: hidden;\n  transition: opacity 1s;\n  z-index: 101;\n  position: fixed;\n  bottom: 2rem;\n  cursor: pointer; }\n  .scroll.left {\n    left: 2rem;\n    color: #52b9f0; }\n  .scroll.right {\n    right: 2rem;\n    color: #88dd00; }\n  .scroll span {\n    vertical-align: 2.5px; }\n  .scroll span span {\n      font-size: 1.25rem;\n      font-weight: bold; }\n  .scroll span b {\n      font-size: 2rem; }\n  body.scroll-left .scroll.left {\n  opacity: 1;\n  visibility: visible; }\n  body.scroll-right .scroll.right {\n  opacity: 1;\n  visibility: visible; }\n  #pipeline {\n  background: url(\"/assets/images/bg-pipeline.png\") no-repeat center bottom;\n  background-size: 100% auto;\n  vertical-align: top;\n  display: -ms-flexbox;\n  display: flex;\n  position: relative;\n  width: 1392px;\n  margin: calc(6vh) 24px 12px;\n  height: 43rem; }\n  #pipeline > div {\n    z-index: 100;\n    position: absolute;\n    visibility: hidden;\n    opacity: 0;\n    min-width: 24%;\n    height: 100%;\n    padding: 0 24px 0 0; }\n  #pipeline > div:first-child {\n      min-width: 410px; }\n  #pipeline > div .box {\n      position: relative; }\n  #pipeline.show-results > div {\n    position: relative;\n    visibility: visible;\n    opacity: 1; }\n  #pipeline:not(.show-results) > div {\n    transition: none !important;\n    transition-delay: 0s !important; }\n  .bg_pipeline_img {\n  position: absolute;\n  bottom: 0;\n  left: 0;\n  background-size: auto 100%;\n  background-repeat: repeat-x;\n  background-position: center;\n  height: calc(100vh - 400px);\n  max-height: 200px;\n  min-height: 48px;\n  width: 100%; }\n  .bg_pipeline_img .bg_pipeline_caption {\n    position: absolute;\n    bottom: 39%;\n    color: #999999;\n    width: calc(100% + 0.25rem);\n    text-align: center;\n    font-weight: bold;\n    font-size: 1.25rem; }\n  .bg_pipeline_img .bg_pipeline_left {\n    position: absolute;\n    left: 0;\n    height: 100%; }\n  .bg_pipeline_img .bg_pipeline_left img {\n      height: 100%; }\n  .bg_pipeline_img .bg_pipeline_left::after {\n      content: \" \";\n      position: absolute;\n      bottom: 75%;\n      left: calc(50% - 2px);\n      width: 2px;\n      height: 175%;\n      background: #bfbfbf; }\n  .bg_pipeline_img .bg_pipeline_right {\n    position: absolute;\n    right: 0;\n    height: 100%;\n    width: 50%;\n    background-size: auto 100%;\n    background-repeat: no-repeat;\n    background-position: right center; }\n  .box {\n  min-height: 325px;\n  display: -ms-flexbox;\n  display: flex;\n  -ms-flex-direction: column;\n      flex-direction: column;\n  background: #fff;\n  border: solid 2px #999999; }\n  .box .body {\n    -ms-flex-positive: 1;\n        flex-grow: 1;\n    position: relative; }\n  .box .bottom {\n    position: relative; }\n  .if-not-status {\n  display: block; }\n  div[class*=\"status-\"] .if-not-status {\n  display: none; }\n  .if-status- {\n  display: none; }\n  .status- .if-status- {\n  display: block; }\n  .if-status-ok {\n  display: none; }\n  .status-ok .if-status-ok {\n  display: block; }\n  .if-status-temp {\n  display: none; }\n  .status-temp .if-status-temp {\n  display: block; }\n  .if-status-h2s {\n  display: none; }\n  .status-h2s .if-status-h2s {\n  display: block; }\n  .if-status-h2o {\n  display: none; }\n  .status-h2o .if-status-h2o {\n  display: block; }\n  .if-status-salt {\n  display: none; }\n  .status-salt .if-status-salt {\n  display: block; }\n"

/***/ }),

/***/ "./src/app/routes/demo/demo.component.ts":
/*!***********************************************!*\
  !*** ./src/app/routes/demo/demo.component.ts ***!
  \***********************************************/
/*! exports provided: DemoComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "DemoComponent", function() { return DemoComponent; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var src_app_services_corrosion_service__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! src/app/services/corrosion.service */ "./src/app/services/corrosion.service.ts");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (undefined && undefined.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};


var DemoComponent = /** @class */ (function () {
    function DemoComponent(corrosionService) {
        this.corrosionService = corrosionService;
        /*
        data (model)
      */
        this.status = {
            classList: ""
        };
        this.statusClass = "";
        this.statusClassMake = function (status) {
            if (status.classList.indexOf("-na") === -1 &&
                status.classList.indexOf("-ok") === -1) {
                return "box-containers show-results " + status.classList;
            }
            else {
                return "box-containers " + status.classList;
            }
        };
        this.status = corrosionService.get("status");
        this.statusClass = this.statusClassMake(this.status);
    }
    /*
    component ready (DOM is not ready)
  */
    DemoComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.corrosionService.statusUpdated.subscribe(function (status) {
            _this.status = status;
            _this.statusClass = _this.statusClassMake(status);
        });
    };
    DemoComponent = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["Component"])({
            selector: "demo-component",
            template: __webpack_require__(/*! ./demo.component.html */ "./src/app/routes/demo/demo.component.html"),
            styles: [__webpack_require__(/*! ./demo.component.scss */ "./src/app/routes/demo/demo.component.scss")],
            encapsulation: _angular_core__WEBPACK_IMPORTED_MODULE_0__["ViewEncapsulation"].None
        }),
        __metadata("design:paramtypes", [src_app_services_corrosion_service__WEBPACK_IMPORTED_MODULE_1__["CorrosionService"]])
    ], DemoComponent);
    return DemoComponent;
}());



/***/ }),

/***/ "./src/app/routes/demo/demo.module.ts":
/*!********************************************!*\
  !*** ./src/app/routes/demo/demo.module.ts ***!
  \********************************************/
/*! exports provided: DemoModule */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "DemoModule", function() { return DemoModule; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _angular_common__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/common */ "./node_modules/@angular/common/fesm5/common.js");
/* harmony import */ var _angular_router__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @angular/router */ "./node_modules/@angular/router/fesm5/router.js");
/* harmony import */ var _demo_component__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ./demo.component */ "./src/app/routes/demo/demo.component.ts");
/* harmony import */ var _components_input_slider_input_slider_component__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ./components/input-slider/input-slider.component */ "./src/app/routes/demo/components/input-slider/input-slider.component.ts");
/* harmony import */ var _components_box_measure_box_measure_component__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! ./components/box-measure/box-measure.component */ "./src/app/routes/demo/components/box-measure/box-measure.component.ts");
/* harmony import */ var _components_box_correction_box_correction_component__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! ./components/box-correction/box-correction.component */ "./src/app/routes/demo/components/box-correction/box-correction.component.ts");
/* harmony import */ var _components_box_lifetime_box_lifetime_component__WEBPACK_IMPORTED_MODULE_7__ = __webpack_require__(/*! ./components/box-lifetime/box-lifetime.component */ "./src/app/routes/demo/components/box-lifetime/box-lifetime.component.ts");
/* harmony import */ var _components_box_lifetime_corrected_box_lifetime_corrected_component__WEBPACK_IMPORTED_MODULE_8__ = __webpack_require__(/*! ./components/box-lifetime-corrected/box-lifetime-corrected.component */ "./src/app/routes/demo/components/box-lifetime-corrected/box-lifetime-corrected.component.ts");
/* harmony import */ var _components_box_lifetime_ok_box_lifetime_ok_component__WEBPACK_IMPORTED_MODULE_9__ = __webpack_require__(/*! ./components/box-lifetime-ok/box-lifetime-ok.component */ "./src/app/routes/demo/components/box-lifetime-ok/box-lifetime-ok.component.ts");
/* harmony import */ var _angular_material_slider__WEBPACK_IMPORTED_MODULE_10__ = __webpack_require__(/*! @angular/material/slider */ "./node_modules/@angular/material/esm5/slider.es5.js");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};











var DemoModule = /** @class */ (function () {
    function DemoModule() {
    }
    DemoModule = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["NgModule"])({
            imports: [
                _angular_material_slider__WEBPACK_IMPORTED_MODULE_10__["MatSliderModule"],
                _angular_common__WEBPACK_IMPORTED_MODULE_1__["CommonModule"],
                _angular_router__WEBPACK_IMPORTED_MODULE_2__["RouterModule"].forChild([
                    {
                        path: "",
                        component: _demo_component__WEBPACK_IMPORTED_MODULE_3__["DemoComponent"]
                    }
                ])
            ],
            exports: [],
            declarations: [
                _demo_component__WEBPACK_IMPORTED_MODULE_3__["DemoComponent"],
                _components_input_slider_input_slider_component__WEBPACK_IMPORTED_MODULE_4__["InputSliderComponent"],
                _components_box_measure_box_measure_component__WEBPACK_IMPORTED_MODULE_5__["BoxMeasureComponent"],
                _components_box_correction_box_correction_component__WEBPACK_IMPORTED_MODULE_6__["BoxCorrectionComponent"],
                _components_box_lifetime_box_lifetime_component__WEBPACK_IMPORTED_MODULE_7__["BoxLifetimeComponent"],
                _components_box_lifetime_corrected_box_lifetime_corrected_component__WEBPACK_IMPORTED_MODULE_8__["BoxLifetimeCorrectedComponent"],
                _components_box_lifetime_ok_box_lifetime_ok_component__WEBPACK_IMPORTED_MODULE_9__["BoxLifetimeOkComponent"]
            ],
            providers: []
        })
    ], DemoModule);
    return DemoModule;
}());



/***/ })

}]);
//# sourceMappingURL=routes-demo-demo-module.js.map