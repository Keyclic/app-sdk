"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _Review = _interopRequireDefault(require("./Review"));

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
 * The ReviewCollection model module.
 * @module model/ReviewCollection
 */
var ReviewCollection = /*#__PURE__*/ (function() {
  /**
     * Constructs a new "ReviewCollection".
     * @alias module:model/ReviewCollection
     * @class
    
     */
  function ReviewCollection() {
    _classCallCheck(this, ReviewCollection);

    this.items = [];
    this.itemsType = _Review.default;
  }
  /**
   * Constructs a "ReviewCollection" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ReviewCollection } object Optional instance to populate.
   * @return { module:model/ReviewCollection } The populated "ReviewCollection" instance.
   */

  _createClass(
    ReviewCollection,
    [
      {
        key: "getItems",

        /**
         * @return { Array.<module:model/Review> }
         */
        value: function getItems() {
          return this.items;
        }
        /**
         * @param { Array.<module:model/Review> } items
         */
      },
      {
        key: "setItems",
        value: function setItems(items) {
          this.items = items;
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
            object = new ReviewCollection();
          }

          if (data.hasOwnProperty("items")) {
            object.items = _ApiClient.default.convertToType(data["items"], [
              object.itemsType
            ]);
          }

          return object;
        }
      }
    ]
  );

  return ReviewCollection;
})();

exports.default = ReviewCollection;
