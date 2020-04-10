"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _DelegationLinksReportIriTemplateMapping = _interopRequireDefault(
  require("./DelegationLinksReportIriTemplateMapping")
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
 * The FeedbackLinksReportIriTemplate model module.
 * @module model/FeedbackLinksReportIriTemplate
 */
var FeedbackLinksReportIriTemplate = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "FeedbackLinksReportIriTemplate".
   * @alias module:model/FeedbackLinksReportIriTemplate
   * @class
  
   */
  function FeedbackLinksReportIriTemplate() {
    _classCallCheck(this, FeedbackLinksReportIriTemplate);

    this.mapping = null;
    this.mappingType = _DelegationLinksReportIriTemplateMapping.default;
  }
  /**
   * Constructs a "FeedbackLinksReportIriTemplate" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/FeedbackLinksReportIriTemplate } object Optional instance to populate.
   * @return { module:model/FeedbackLinksReportIriTemplate } The populated "FeedbackLinksReportIriTemplate" instance.
   */

  _createClass(
    FeedbackLinksReportIriTemplate,
    [
      {
        key: "getMapping",

        /**
         * @return { module:model/DelegationLinksReportIriTemplateMapping }
         */
        value: function getMapping() {
          return this.mapping;
        }
        /**
         * @param { module:model/DelegationLinksReportIriTemplateMapping } mapping
         */
      },
      {
        key: "setMapping",
        value: function setMapping(mapping) {
          this.mapping = mapping;
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
            object = new FeedbackLinksReportIriTemplate();
          }

          if (data.hasOwnProperty("mapping")) {
            object.mapping = _ApiClient.default.convertToType(
              data["mapping"],
              object.mappingType
            );
          }

          return object;
        }
      }
    ]
  );

  return FeedbackLinksReportIriTemplate;
})();

exports.default = FeedbackLinksReportIriTemplate;