"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient2 = _interopRequireDefault(require("../ApiClient"));

var _BusinessActivity = _interopRequireDefault(
  require("../model/BusinessActivity")
);

var _BusinessActivityPagination = _interopRequireDefault(
  require("../model/BusinessActivityPagination")
);

var _Error = _interopRequireDefault(require("../model/Error"));

var _Schema = _interopRequireDefault(require("../model/Schema"));

function _interopRequireDefault(obj) {
  return obj && obj.__esModule ? obj : { default: obj };
}

function _typeof(obj) {
  "@babel/helpers - typeof";
  if (typeof Symbol === "function" && typeof Symbol.iterator === "symbol") {
    _typeof = function _typeof(obj) {
      return typeof obj;
    };
  } else {
    _typeof = function _typeof(obj) {
      return obj &&
        typeof Symbol === "function" &&
        obj.constructor === Symbol &&
        obj !== Symbol.prototype
        ? "symbol"
        : typeof obj;
    };
  }
  return _typeof(obj);
}

function _classCallCheck(instance, Constructor) {
  if (!(instance instanceof Constructor)) {
    throw new TypeError("Cannot call a class as a function");
  }
}

function _defineProperties(target, props) {
  for (var i = 0; i < props.length; i++) {
    var descriptor = props[i];
    descriptor.enumerable = descriptor.enumerable || false;
    descriptor.configurable = true;
    if ("value" in descriptor) descriptor.writable = true;
    Object.defineProperty(target, descriptor.key, descriptor);
  }
}

function _createClass(Constructor, protoProps, staticProps) {
  if (protoProps) _defineProperties(Constructor.prototype, protoProps);
  if (staticProps) _defineProperties(Constructor, staticProps);
  return Constructor;
}

function _inherits(subClass, superClass) {
  if (typeof superClass !== "function" && superClass !== null) {
    throw new TypeError("Super expression must either be null or a function");
  }
  subClass.prototype = Object.create(superClass && superClass.prototype, {
    constructor: { value: subClass, writable: true, configurable: true }
  });
  if (superClass) _setPrototypeOf(subClass, superClass);
}

function _setPrototypeOf(o, p) {
  _setPrototypeOf =
    Object.setPrototypeOf ||
    function _setPrototypeOf(o, p) {
      o.__proto__ = p;
      return o;
    };
  return _setPrototypeOf(o, p);
}

function _createSuper(Derived) {
  var hasNativeReflectConstruct = _isNativeReflectConstruct();
  return function() {
    var Super = _getPrototypeOf(Derived),
      result;
    if (hasNativeReflectConstruct) {
      var NewTarget = _getPrototypeOf(this).constructor;
      result = Reflect.construct(Super, arguments, NewTarget);
    } else {
      result = Super.apply(this, arguments);
    }
    return _possibleConstructorReturn(this, result);
  };
}

function _possibleConstructorReturn(self, call) {
  if (call && (_typeof(call) === "object" || typeof call === "function")) {
    return call;
  }
  return _assertThisInitialized(self);
}

function _assertThisInitialized(self) {
  if (self === void 0) {
    throw new ReferenceError(
      "this hasn't been initialised - super() hasn't been called"
    );
  }
  return self;
}

function _isNativeReflectConstruct() {
  if (typeof Reflect === "undefined" || !Reflect.construct) return false;
  if (Reflect.construct.sham) return false;
  if (typeof Proxy === "function") return true;
  try {
    Date.prototype.toString.call(Reflect.construct(Date, [], function() {}));
    return true;
  } catch (e) {
    return false;
  }
}

function _getPrototypeOf(o) {
  _getPrototypeOf = Object.setPrototypeOf
    ? Object.getPrototypeOf
    : function _getPrototypeOf(o) {
        return o.__proto__ || Object.getPrototypeOf(o);
      };
  return _getPrototypeOf(o);
}

/**
 * BusinessActivity service.
 * @module api/BusinessActivityApi
 */
var BusinessActivityApi = /*#__PURE__*/ (function(_ApiClient) {
  _inherits(BusinessActivityApi, _ApiClient);

  var _super = _createSuper(BusinessActivityApi);

  /**
   * @class
   * { string } basePath To override basePath.
   * { object } headers Additional headers for the instance.
   * { int } timeout Number in seconds before timeout.
   */
  function BusinessActivityApi() {
    var basePath =
      arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : null;
    var headers =
      arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : null;
    var timeout =
      arguments.length > 2 && arguments[2] !== undefined ? arguments[2] : null;

    _classCallCheck(this, BusinessActivityApi);

    return _super.call(this, basePath, headers, timeout);
  }
  /**
   * Retrieve all BusinessActivity resources.
   * @param { String } xKeyclicApp
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { BusinessActivityPagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { Date } xDateTime
   * @param { String } xKeyclicAppVersion
   * @param { module:model/Date } after
   * @param { module:model/Date } before
   * @param { String } geoPoint One latitude and one longitude serialized and separated by a plus or a minus sign.
   * @param { String } geoCoordinates One latitude and one longitude serialized and separated by a plus or a minus sign.
   * @param { module:model/String } order   (default to desc)
   * @param { String } organization The identifier of the resource.
   * @param { Number } page Page of the overview.  (default to 1)
   * @param { Number } limit Page of the overview.  (default to 10)
   */

  _createClass(BusinessActivityApi, [
    {
      key: "cgetBusinessActivities",
      value: function cgetBusinessActivities() {
        var returnType =
          arguments.length > 0 && arguments[0] !== undefined
            ? arguments[0]
            : null;
        var options = arguments.length > 1 ? arguments[1] : undefined;
        var credentials =
          arguments.length > 2 && arguments[2] !== undefined
            ? arguments[2]
            : null;

        if (returnType === null) {
          returnType = _BusinessActivityPagination.default;
        }

        var xKeyclicApp = options.xKeyclicApp,
          acceptLanguage = options.acceptLanguage,
          xDateTime = options.xDateTime,
          xKeyclicAppVersion = options.xKeyclicAppVersion,
          after = options.after,
          before = options.before,
          geoPoint = options.geoPoint,
          geoCoordinates = options.geoCoordinates,
          order = options.order,
          organization = options.organization,
          page = options.page,
          limit = options.limit; // verify the required parameter 'xKeyclicApp' is set

        if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
          throw new window.Error(
            'Missing the required parameter "xKeyclicApp" when calling cgetBusinessActivities'
          );
        } // verify the default value of parameter 'acceptLanguage'

        if (typeof acceptLanguage === "undefined" || acceptLanguage === null) {
          acceptLanguage = "fr-FR";
        } // verify the default value of parameter 'order'

        if (typeof order === "undefined" || order === null) {
          order = "desc";
        } // verify the default value of parameter 'page'

        if (typeof page === "undefined" || page === null) {
          page = 1;
        } // verify the default value of parameter 'limit'

        if (typeof limit === "undefined" || limit === null) {
          limit = 10;
        } // verify the null value of parameter 'xDateTime'

        if (typeof xDateTime === "undefined") {
          xDateTime = null;
        } // verify the null value of parameter 'xKeyclicAppVersion'

        if (typeof xKeyclicAppVersion === "undefined") {
          xKeyclicAppVersion = null;
        } // verify the null value of parameter 'after'

        if (typeof after === "undefined") {
          after = null;
        } // verify the null value of parameter 'before'

        if (typeof before === "undefined") {
          before = null;
        } // verify the null value of parameter 'geoPoint'

        if (typeof geoPoint === "undefined") {
          geoPoint = null;
        } // verify the null value of parameter 'geoCoordinates'

        if (typeof geoCoordinates === "undefined") {
          geoCoordinates = null;
        } // verify the null value of parameter 'organization'

        if (typeof organization === "undefined") {
          organization = null;
        }

        var pathParams = {};
        var bodyParam = null;
        var queryParams = {
          after: after,
          before: before,
          geo_point: geoPoint,
          geo_coordinates: geoCoordinates,
          order: order,
          organization: organization,
          page: page,
          limit: limit
        };
        var headerParams = {
          "accept-language": acceptLanguage,
          "x-date-time": xDateTime,
          "x-keyclic-app": xKeyclicApp,
          "x-keyclic-app-version": xKeyclicAppVersion
        };
        var credentialParams = credentials;
        var authNames = ["bearer"];
        var contentTypes = ["application/json;charset=UTF-8"];
        var accepts = ["application/hal+json;charset=UTF-8"];
        return this.callApi(
          "/business-activities",
          "GET",
          pathParams,
          queryParams,
          headerParams,
          bodyParam,
          authNames,
          credentialParams,
          contentTypes,
          accepts,
          returnType
        );
      }
      /**
       * Retrieve one BusinessActivity resource.
       * @param { String } xKeyclicApp
       * @param { String } businessActivity The identifier of the resource.
       * @param { Object } credentials The required credentials with good properties to use different types of authentication.
       * @param { BusinessActivity }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
       * @param { module:model/String } acceptLanguage   (default to fr-FR)
       * @param { Date } xDateTime
       * @param { String } xKeyclicAppVersion
       */
    },
    {
      key: "getBusinessActivity",
      value: function getBusinessActivity() {
        var returnType =
          arguments.length > 0 && arguments[0] !== undefined
            ? arguments[0]
            : null;
        var options = arguments.length > 1 ? arguments[1] : undefined;
        var credentials =
          arguments.length > 2 && arguments[2] !== undefined
            ? arguments[2]
            : null;

        if (returnType === null) {
          returnType = _BusinessActivity.default;
        }

        var xKeyclicApp = options.xKeyclicApp,
          businessActivity = options.businessActivity,
          acceptLanguage = options.acceptLanguage,
          xDateTime = options.xDateTime,
          xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

        if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
          throw new window.Error(
            'Missing the required parameter "xKeyclicApp" when calling getBusinessActivity'
          );
        } // verify the required parameter 'businessActivity' is set

        if (
          typeof businessActivity === "undefined" ||
          businessActivity === null
        ) {
          throw new window.Error(
            'Missing the required parameter "businessActivity" when calling getBusinessActivity'
          );
        } // verify the default value of parameter 'acceptLanguage'

        if (typeof acceptLanguage === "undefined" || acceptLanguage === null) {
          acceptLanguage = "fr-FR";
        } // verify the null value of parameter 'xDateTime'

        if (typeof xDateTime === "undefined") {
          xDateTime = null;
        } // verify the null value of parameter 'xKeyclicAppVersion'

        if (typeof xKeyclicAppVersion === "undefined") {
          xKeyclicAppVersion = null;
        }

        var pathParams = {
          businessActivity: businessActivity
        };
        var bodyParam = null;
        var queryParams = {};
        var headerParams = {
          "accept-language": acceptLanguage,
          "x-date-time": xDateTime,
          "x-keyclic-app": xKeyclicApp,
          "x-keyclic-app-version": xKeyclicAppVersion
        };
        var credentialParams = credentials;
        var authNames = ["bearer"];
        var contentTypes = ["application/json;charset=UTF-8"];
        var accepts = ["application/hal+json;charset=UTF-8"];
        return this.callApi(
          "/business-activities/{businessActivity}",
          "GET",
          pathParams,
          queryParams,
          headerParams,
          bodyParam,
          authNames,
          credentialParams,
          contentTypes,
          accepts,
          returnType
        );
      }
      /**
       * Retrieve one Schema resource.
       * @param { String } xKeyclicApp
       * @param { String } businessActivity The identifier of the resource.
       * @param { Object } credentials The required credentials with good properties to use different types of authentication.
       * @param { Schema }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
       * @param { module:model/String } acceptLanguage   (default to fr-FR)
       * @param { Date } xDateTime
       * @param { String } xKeyclicAppVersion
       */
    },
    {
      key: "getSchemaByBusinessActivity",
      value: function getSchemaByBusinessActivity() {
        var returnType =
          arguments.length > 0 && arguments[0] !== undefined
            ? arguments[0]
            : null;
        var options = arguments.length > 1 ? arguments[1] : undefined;
        var credentials =
          arguments.length > 2 && arguments[2] !== undefined
            ? arguments[2]
            : null;

        if (returnType === null) {
          returnType = _Schema.default;
        }

        var xKeyclicApp = options.xKeyclicApp,
          businessActivity = options.businessActivity,
          acceptLanguage = options.acceptLanguage,
          xDateTime = options.xDateTime,
          xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

        if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
          throw new window.Error(
            'Missing the required parameter "xKeyclicApp" when calling getSchemaByBusinessActivity'
          );
        } // verify the required parameter 'businessActivity' is set

        if (
          typeof businessActivity === "undefined" ||
          businessActivity === null
        ) {
          throw new window.Error(
            'Missing the required parameter "businessActivity" when calling getSchemaByBusinessActivity'
          );
        } // verify the default value of parameter 'acceptLanguage'

        if (typeof acceptLanguage === "undefined" || acceptLanguage === null) {
          acceptLanguage = "fr-FR";
        } // verify the null value of parameter 'xDateTime'

        if (typeof xDateTime === "undefined") {
          xDateTime = null;
        } // verify the null value of parameter 'xKeyclicAppVersion'

        if (typeof xKeyclicAppVersion === "undefined") {
          xKeyclicAppVersion = null;
        }

        var pathParams = {
          businessActivity: businessActivity
        };
        var bodyParam = null;
        var queryParams = {};
        var headerParams = {
          "accept-language": acceptLanguage,
          "x-date-time": xDateTime,
          "x-keyclic-app": xKeyclicApp,
          "x-keyclic-app-version": xKeyclicAppVersion
        };
        var credentialParams = credentials;
        var authNames = ["bearer"];
        var contentTypes = ["application/json;charset=UTF-8"];
        var accepts = ["application/hal+json;charset=UTF-8"];
        return this.callApi(
          "/businessactivities/{businessActivity}/schema",
          "GET",
          pathParams,
          queryParams,
          headerParams,
          bodyParam,
          authNames,
          credentialParams,
          contentTypes,
          accepts,
          returnType
        );
      }
    }
  ]);

  return BusinessActivityApi;
})(_ApiClient2.default);

exports.default = BusinessActivityApi;
