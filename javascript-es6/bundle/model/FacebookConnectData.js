"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

function _interopRequireDefault(obj) {
  return obj && obj.__esModule ? obj : { default: obj };
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

/**
 * The FacebookConnectData model module.
 * @module model/FacebookConnectData
 */
var FacebookConnectData = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "FacebookConnectData".
   * @alias module:model/FacebookConnectData
   * @class
  
   * @param accessToken { String }
  
   */
  function FacebookConnectData(accessToken) {
    _classCallCheck(this, FacebookConnectData);

    this.accessToken = accessToken;
  }
  /**
   * Constructs a "FacebookConnectData" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/FacebookConnectData } object Optional instance to populate.
   * @return { module:model/FacebookConnectData } The populated "FacebookConnectData" instance.
   */

  _createClass(
    FacebookConnectData,
    [
      {
        key: "getAccessToken",

        /**
         * @return { String }
         */
        value: function getAccessToken() {
          return this.accessToken;
        }
        /**
         * @param { String } accessToken
         */
      },
      {
        key: "setAccessToken",
        value: function setAccessToken(accessToken) {
          this.accessToken = accessToken;
        }
      }
    ],
    [
      {
        key: "constructFromData",
        value: function constructFromData(data) {
          var object =
            arguments.length > 1 && arguments[1] !== undefined
              ? arguments[1]
              : null;

          if (data === null) {
            throw new Error("No data to build object");
          }

          if (object === null) {
            object = new FacebookConnectData();
          }

          if (data.hasOwnProperty("accessToken")) {
            object.accessToken = _ApiClient.default.convertToType(
              data["accessToken"],
              "String"
            );
          }

          return object;
        }
      }
    ]
  );

  return FacebookConnectData;
})();

exports.default = FacebookConnectData;
