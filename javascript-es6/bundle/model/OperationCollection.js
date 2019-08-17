"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _Operation = _interopRequireDefault(require("./Operation"));

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
 * The OperationCollection model module.
 * @module model/OperationCollection
 */
var OperationCollection =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "OperationCollection".
   * @alias module:model/OperationCollection
   * @class
  
   */
    function OperationCollection() {
      _classCallCheck(this, OperationCollection);

      this.items = [];
      this.itemsType = _Operation.default;
    }
    /**
     * Constructs a "OperationCollection" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/OperationCollection } object Optional instance to populate.
     * @return { module:model/OperationCollection } The populated "OperationCollection" instance.
     */

    _createClass(OperationCollection, null, [
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
            object = new OperationCollection();
          }

          if (data.hasOwnProperty("items")) {
            object.items = _ApiClient.default.convertToType(data["items"], [
              object.itemsType
            ]);
          }

          return object;
        }
      }
    ]);

    return OperationCollection;
  })();

exports.default = OperationCollection;