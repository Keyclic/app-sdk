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

function _defineProperty(obj, key, value) {
  if (key in obj) {
    Object.defineProperty(obj, key, {
      value: value,
      enumerable: true,
      configurable: true,
      writable: true
    });
  } else {
    obj[key] = value;
  }
  return obj;
}

/**
 * The OperationStatePatch model module.
 * @module model/OperationStatePatch
 */
var OperationStatePatch =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "OperationStatePatch".
   * @alias module:model/OperationStatePatch
   * @class
  
   * @param transition { module:model/OperationStatePatch.TransitionEnum }
  
   */
    function OperationStatePatch(transition) {
      _classCallCheck(this, OperationStatePatch);

      this.transition = transition;
    }
    /**
     * Constructs a "OperationStatePatch" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/OperationStatePatch } object Optional instance to populate.
     * @return { module:model/OperationStatePatch } The populated "OperationStatePatch" instance.
     */

    _createClass(OperationStatePatch, null, [
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
            object = new OperationStatePatch();
          }

          if (data.hasOwnProperty("transition")) {
            object.transition = _ApiClient.default.convertToType(
              data["transition"],
              "String"
            );
          }

          return object;
        }
        /**
         * Allowed values for the "transition" property.
         * @enum { String }
         */
      }
    ]);

    return OperationStatePatch;
  })();

exports.default = OperationStatePatch;

_defineProperty(OperationStatePatch, "TransitionEnum", {
  /**
   * value: "accept"
   * @const
   * @readonly
   */
  accept: "accept",

  /**
   * value: "assign"
   * @const
   * @readonly
   */
  assign: "assign",

  /**
   * value: "progress"
   * @const
   * @readonly
   */
  progress: "progress",

  /**
   * value: "refuse"
   * @const
   * @readonly
   */
  refuse: "refuse",

  /**
   * value: "reset"
   * @const
   * @readonly
   */
  reset: "reset",

  /**
   * value: "resolve"
   * @const
   * @readonly
   */
  resolve: "resolve"
});