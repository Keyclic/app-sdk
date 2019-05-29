"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _es6Promise = _interopRequireDefault(require("es6-promise"));

var _isomorphicFetch = _interopRequireDefault(require("isomorphic-fetch"));

var url = _interopRequireWildcard(require("url"));

function _interopRequireWildcard(obj) { if (obj && obj.__esModule) { return obj; } else { var newObj = {}; if (obj != null) { for (var key in obj) { if (Object.prototype.hasOwnProperty.call(obj, key)) { var desc = Object.defineProperty && Object.getOwnPropertyDescriptor ? Object.getOwnPropertyDescriptor(obj, key) : {}; if (desc.get || desc.set) { Object.defineProperty(newObj, key, desc); } else { newObj[key] = obj[key]; } } } } newObj.default = obj; return newObj; } }

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

function _typeof(obj) { if (typeof Symbol === "function" && typeof Symbol.iterator === "symbol") { _typeof = function _typeof(obj) { return typeof obj; }; } else { _typeof = function _typeof(obj) { return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj; }; } return _typeof(obj); }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); return Constructor; }

_es6Promise.default.polyfill();

/**
* @module ApiClient
* @version 1.39.3
*/

/**
* Manages low level client-server communications, parameter marshalling, etc. There should not be any need for an
* application to use this class directly - the *Api and model classes provide the public API for the service. The
* contents of this file should be regarded as internal but are documented for completeness.
* @alias module:ApiClient
* @class
*/
var ApiClient =
/*#__PURE__*/
function () {
  function ApiClient() {
    var basePath = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : null;
    var headers = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : null;
    var timeout = arguments.length > 2 && arguments[2] !== undefined ? arguments[2] : null;

    _classCallCheck(this, ApiClient);

    /**
     * The base URL against which to resolve every API call's (relative) path.
     * @type {String}
     * @default https://api.keyclic.com
     */
    this.basePath = basePath === null ? 'https://api.keyclic.com'.replace(/\/+$/, '') : basePath.replace(/\/+$/, '');
    /**
     * The authentication methods to be included for all API calls.
     * @type {String[]}
     */

    this.authentications = {
      'bearer': {
        'type': 'apiKey',
        'in': 'header',
        'name': 'Authorization'
      }
    };
    /**
     * The default HTTP headers to be included for all API calls.
     * @type {Object}
     * @default {}
     */

    this.defaultHeaders = {};
    /**
     * The HTTP headers to be specific for this instance.
     * @type {Object}
     * @default {}
     */

    this.headers = headers === null ? {} : headers;
    /**
     * The default HTTP timeout for all API calls.
     * @type {Number}
     * @default null
     */

    this.timeout = timeout;
  }
  /**
   * Applies authentication headers to the request.
   * @param {Object} options The configuration object created for next fetch call.
   * @param {String[]} authNames An array of authentication method names.
   * @param {Object} credentials An object with good properties to use different types of authentication.
   */


  _createClass(ApiClient, [{
    key: "applyAuthToRequest",
    value: function applyAuthToRequest(options, authNames, credentials) {
      var _this = this;

      authNames.forEach(function (authName) {
        var auth = _this.authentications[authName];

        switch (auth.type) {
          case 'apiKey':
            if (credentials.hasOwnProperty('accessToken') === false || typeof credentials.accessToken === 'undefined' || credentials.accessToken === null) {
              throw new Error('ApiKey authentication claims an "accessToken" as credentials.');
            }

            options.headers.append(auth.name, 'Bearer ' + credentials.accessToken);
            break;

          default:
            throw new Error('Unknown authentication type: ' + auth.type);
        }
      });
      return options;
    }
    /**
     * Deserializes an HTTP response body into a value of the specified type.
     * @param { Object } data A response.json() object.
     * @param { String|String[]|Object } returnType The type to return. Pass a string for simple types
     * or the constructor function for a complex type. Pass an array containing the type name to return an array of that type. To
     * return an object, pass an object with one property whose name is the key type and whose value is the corresponding value type:
     * all properties on datacode will be converted to this type.
     * @returns { Object } A value of the specified type.
     */

  }, {
    key: "deserialize",
    value: function deserialize(data, returnType) {
      if (returnType === null) {
        return data;
      }

      return ApiClient.convertToType(data, returnType);
    }
    /**
     * Check code status of response
     */

  }, {
    key: "checkResponse",
    value: function checkResponse(response) {
      if (response.status < 200 || response.status >= 300) {
        var error = new Error('Code status error: ' + response.status);
        error.status = response.status;
        error.response = response;
        throw error;
      }
    }
    /**
     * Builds full URI by appending the given path to the base URL and replacing path parameter place-holders with parameter values.
     * NOTE: query parameters are not handled here.
     * @param {String} path The path to append to the base URL.
     * @param {Object} pathParams The parameter values to append.
     * @returns {String} The encoded path with parameter values substituted.
     */

  }, {
    key: "buildUri",
    value: function buildUri(path, pathParams) {
      if (path.length > 0 && path.match(/^\//) === false) {
        path = '/' + path;
      }

      var uri = this.basePath + path;
      uri = uri.replace(/\{([\w-]+)\}/g, function (fullMatch, key) {
        var value = fullMatch;

        if (pathParams.hasOwnProperty(key)) {
          value = ApiClientUtils.paramToString(pathParams[key]);
        }

        return encodeURIComponent(value);
      });
      return uri;
    }
  }, {
    key: "appendQueryParams",
    value: function appendQueryParams(uri) {
      var queryParams = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : {};
      queryParams = ApiClientUtils.normalizeParams(queryParams);
      var urlObj = url.parse(uri, true);
      urlObj.query = Object.assign({}, urlObj.query, queryParams);
      return url.format(urlObj);
    }
    /**
     * Order is important.
     */

  }, {
    key: "buildHeaders",
    value: function buildHeaders(headerParams, contentType, accept) {
      var headers = new Headers();
      headers.set('Content-Type', contentType);
      headers.set('Accept', accept);

      for (var property in this.defaultHeaders) {
        if (this.defaultHeaders.hasOwnProperty(property)) {
          headers.append(property, this.defaultHeaders[property]);
        }
      }

      for (var _property in this.headers) {
        if (this.headers.hasOwnProperty(_property)) {
          headers.append(_property, this.headers[_property]);
        }
      }

      for (var _property2 in headerParams) {
        if (headerParams.hasOwnProperty(_property2)) {
          headers.append(_property2, headerParams[_property2]);
        }
      }

      return headers;
    }
  }, {
    key: "buildBody",
    value: function buildBody(contentType, bodyParams) {
      var body;

      switch (contentType) {
        default:
          if (bodyParams !== null) {
            body = JSON.stringify(bodyParams);
          }

      }

      return body;
    }
    /**
     * Invokes the REST service using the supplied settings and parameters.
     * @param {String} path The base URL to invoke.
     * @param {String} httpMethod The HTTP method to use.
     * @param {Object} pathParams A map of path parameters and their values.
     * @param {Object} queryParams A map of query parameters and their values.
     * @param {Object} headerParams A map of header parameters and their values.
     * @param {Object} bodyParam The value to pass as the request body.
     * @param {String[]} authNames An array of authentication type names.
     * @param {Object} credentials An object with good properties to use different types of authentication.
     * @param {String[]} contentTypes An array of request MIME types.
     * @param {String[]} accepts An array of acceptable response MIME types.
     * @param {(String|Array|Object|Function)} returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     * @returns {Promise} A {@link https://www.promisejs.org/|Promise} object.
     */

  }, {
    key: "callApi",
    value: function callApi(path, httpMethod, pathParams, queryParams, headerParams, bodyParam, authNames, credentials, contentTypes, accepts, returnType) {
      var _this2 = this;

      var contentType = ApiClientUtils.jsonPreferredMime(contentTypes);
      var accept = ApiClientUtils.jsonPreferredMime(accepts);
      var apiUri = this.buildUri(path, pathParams);
      var apiUrl = this.appendQueryParams(apiUri, queryParams);
      var headers = this.buildHeaders(headerParams, contentType, accept);
      var body = this.buildBody(contentType, bodyParam);
      var options = {
        'body': body,
        'headers': headers,
        'method': httpMethod,
        'mode': 'cors'
      }; // apply authentications

      options = this.applyAuthToRequest(options, authNames, credentials);

      if (this.timeout !== null) {
        options = Object.assign({}, {
          'timeout': this.timeout
        }, options);
      }

      return (0, _isomorphicFetch.default)(apiUrl, options).then(function (response) {
        _this2.checkResponse(response);

        if (response === null || response.status === 204) {
          return null;
        }

        return response.json().then(function (data) {
          data = _this2.deserialize(data, returnType);
          return {
            'data': data,
            'response': response
          };
        }).catch(function (error) {
          throw error;
        });
      });
    }
    /**
     * Converts a value to the specified type.
     * @param {String|Object} data The data to convert, as a string or object.
     * @param {String|String[]|Object|Function} type The type to return. Pass a string for simple types or the constructor function for a complex type. Pass an array containing the type name to return an array of that type. To
     * return an object, pass an object with one property whose name is the key type and whose value is the corresponding value type: all properties on "data" will be converted to this type.
     * @returns {String|Object|Boolean|int|float|string|date|Blob} An instance of the specified type or null or undefined if data is null or undefined.
     */

  }], [{
    key: "convertToType",
    value: function convertToType(data, type) {
      if (data === null || typeof data === 'undefined') {
        return data;
      }

      if (type === 'Boolean') {
        return Boolean(data);
      }

      if (type === 'Integer') {
        return parseInt(data, 10);
      }

      if (type === 'Number') {
        return parseFloat(data);
      }

      if (type === 'String') {
        return String(data);
      }

      if (type === 'Date') {
        return new Date(data);
      }

      if (type === 'Blob') {
        return data;
      } // for model type like: User


      if (typeof type === 'function') {
        return type.constructFromData(data, null);
      } // for array type like: ['String']


      if (Array.isArray(type)) {
        if (type.length < 1) {
          return data;
        }

        var itemType = type[0];
        return data.map(function (item) {
          return ApiClient.convertToType(item, itemType);
        });
      } // for plain object type like: {'String': 'Integer'}


      if (_typeof(type) === 'object') {
        var typeKeys = Object.keys(type);
        var typeValues = Object.values(type);

        if (typeKeys.length < 1 || typeValues.length < 1) {
          return data;
        }

        var typeKey = typeKeys[0];
        var typeValue = typeValues[0];
        var result = {};

        for (var k in data) {
          if (data.hasOwnProperty(k)) {
            var key = ApiClient.convertToType(k, typeKey);
            var value = ApiClient.convertToType(data[k], typeValue);
            result[key] = value;
          }
        }

        return result;
      } // for unknown type, return the data directly


      return data;
    }
  }]);

  return ApiClient;
}();

exports.default = ApiClient;

var ApiClientUtils =
/*#__PURE__*/
function () {
  function ApiClientUtils() {
    _classCallCheck(this, ApiClientUtils);
  }

  _createClass(ApiClientUtils, null, [{
    key: "isJsonMime",

    /**
     * Checks whether the given content type represents JSON.
     * JSON content type examples:
     * . "application/json"
     * . "application/json; charset=UTF8"
     * . "APPLICATION/JSON"
     * @param {String} contentType The MIME content type to check.
     * @returns {Boolean} "true" if "contentType" represents JSON, otherwise "false".
     */
    value: function isJsonMime(contentType) {
      return Boolean(contentType !== null && contentType.match(/^application\/json(;.*)?$/i));
    }
    /**
     * Chooses a content type from the given array, with JSON preferred; i.e. return JSON if included, otherwise return the first.
     * @param {String[]} contentTypes
     * @returns {String} The chosen content type, preferring JSON.
     */

  }, {
    key: "jsonPreferredMime",
    value: function jsonPreferredMime(contentTypes) {
      for (var i = 0; i < contentTypes.length; i++) {
        if (ApiClientUtils.isJsonMime(contentTypes[i])) {
          return contentTypes[i];
        }
      }

      return contentTypes[0];
    }
    /**
     * Normalizes parameter values:
     * remove nils
     * keep files and arrays
     * format to string with `paramToString` for other cases
     * @param {Object} params The parameters as object properties.
     * @returns {Object} normalized parameters.
     */

  }, {
    key: "normalizeParams",
    value: function normalizeParams(params) {
      var newParams = {};

      for (var key in params) {
        if (params.hasOwnProperty(key) && typeof params[key] !== 'undefined' && params[key] !== null) {
          var value = params[key];

          if (Array.isArray(value)) {
            newParams[key] = value;
            continue;
          }

          newParams[key] = ApiClientUtils.paramToString(value);
        }
      }

      return newParams;
    }
    /**
     * Returns a string representation for an actual parameter.
     * @param param The actual parameter.
     * @returns {String} The string representation of param.
     */

  }, {
    key: "paramToString",
    value: function paramToString(param) {
      if (typeof param === 'undefined' || param === null) {
        return '';
      }

      if (param instanceof Date) {
        return param.toJSON();
      }

      return param.toString();
    }
  }]);

  return ApiClientUtils;
}();