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
 * The PersonData model module.
 * @module model/PersonData
 */
var PersonData =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "PersonData".
   * @alias module:model/PersonData
   * @class
  
   * @param person { String }
  
   */
    function PersonData(person) {
      _classCallCheck(this, PersonData);

      this.person = person;
    }
    /**
     * Constructs a "PersonData" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/PersonData } object Optional instance to populate.
     * @return { module:model/PersonData } The populated "PersonData" instance.
     */

    _createClass(PersonData, null, [
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
            object = new PersonData();
          }

          if (data.hasOwnProperty("person")) {
            object.person = _ApiClient.default.convertToType(
              data["person"],
              "String"
            );
          }

          return object;
        }
      }
    ]);

    return PersonData;
  })();

exports.default = PersonData;