"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _FeedbackReviewRequest = _interopRequireDefault(
  require("./FeedbackReviewRequest")
);

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
 * The FeedbackReviewRequestCollection model module.
 * @module model/FeedbackReviewRequestCollection
 */
var FeedbackReviewRequestCollection =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "FeedbackReviewRequestCollection".
   * @alias module:model/FeedbackReviewRequestCollection
   * @class
  
   */
    function FeedbackReviewRequestCollection() {
      _classCallCheck(this, FeedbackReviewRequestCollection);

      this.items = [];
      this.itemsType = _FeedbackReviewRequest.default;
    }
    /**
     * Constructs a "FeedbackReviewRequestCollection" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/FeedbackReviewRequestCollection } object Optional instance to populate.
     * @return { module:model/FeedbackReviewRequestCollection } The populated "FeedbackReviewRequestCollection" instance.
     */

    _createClass(FeedbackReviewRequestCollection, null, [
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
            object = new FeedbackReviewRequestCollection();
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

    return FeedbackReviewRequestCollection;
  })();

exports.default = FeedbackReviewRequestCollection;