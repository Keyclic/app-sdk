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
 * The Signer model module.
 * @module model/Signer
 */
var Signer =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "Signer".
   * @alias module:model/Signer
   * @class
  
   */
    function Signer() {
      _classCallCheck(this, Signer);

      this.familyName = null;
      this.givenName = null;
    }
    /**
     * Constructs a "Signer" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Signer } object Optional instance to populate.
     * @return { module:model/Signer } The populated "Signer" instance.
     */

    _createClass(
      Signer,
      [
        {
          key: "getFamilyName",

          /**
           * @return { String }
           */
          value: function getFamilyName() {
            return this.familyName;
          }
          /**
           * @param { String } familyName
           */
        },
        {
          key: "setFamilyName",
          value: function setFamilyName(familyName) {
            this.familyName = familyName;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getGivenName",
          value: function getGivenName() {
            return this.givenName;
          }
          /**
           * @param { String } givenName
           */
        },
        {
          key: "setGivenName",
          value: function setGivenName(givenName) {
            this.givenName = givenName;
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
              object = new Signer();
            }

            if (data.hasOwnProperty("familyName")) {
              object.familyName = _ApiClient.default.convertToType(
                data["familyName"],
                "String"
              );
            }

            if (data.hasOwnProperty("givenName")) {
              object.givenName = _ApiClient.default.convertToType(
                data["givenName"],
                "String"
              );
            }

            return object;
          }
        }
      ]
    );

    return Signer;
  })();

exports.default = Signer;