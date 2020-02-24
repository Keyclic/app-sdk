"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ApplicationLinksKnowledgeBase = _interopRequireDefault(
  require("./ApplicationLinksKnowledgeBase")
);

var _ApplicationLinksSelf = _interopRequireDefault(
  require("./ApplicationLinksSelf")
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
 * The ApplicationLinks model module.
 * @module model/ApplicationLinks
 */
var ApplicationLinks =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "ApplicationLinks".
   * @alias module:model/ApplicationLinks
   * @class
  
   */
    function ApplicationLinks() {
      _classCallCheck(this, ApplicationLinks);

      this.knowledgeBase = null;
      this.self = null;
      this.knowledgeBaseType = _ApplicationLinksKnowledgeBase.default;
      this.selfType = _ApplicationLinksSelf.default;
    }
    /**
     * Constructs a "ApplicationLinks" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/ApplicationLinks } object Optional instance to populate.
     * @return { module:model/ApplicationLinks } The populated "ApplicationLinks" instance.
     */

    _createClass(
      ApplicationLinks,
      [
        {
          key: "getKnowledgeBase",

          /**
           * @return { module:model/ApplicationLinksKnowledgeBase }
           */
          value: function getKnowledgeBase() {
            return this.knowledgeBase;
          }
          /**
           * @param { module:model/ApplicationLinksKnowledgeBase } knowledgeBase
           */
        },
        {
          key: "setKnowledgeBase",
          value: function setKnowledgeBase(knowledgeBase) {
            this.knowledgeBase = knowledgeBase;
          }
          /**
           * @return { module:model/ApplicationLinksSelf }
           */
        },
        {
          key: "getSelf",
          value: function getSelf() {
            return this.self;
          }
          /**
           * @param { module:model/ApplicationLinksSelf } self
           */
        },
        {
          key: "setSelf",
          value: function setSelf(self) {
            this.self = self;
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
              object = new ApplicationLinks();
            }

            if (data.hasOwnProperty("knowledgeBase")) {
              object.knowledgeBase = _ApiClient.default.convertToType(
                data["knowledgeBase"],
                object.knowledgeBaseType
              );
            }

            if (data.hasOwnProperty("self")) {
              object.self = _ApiClient.default.convertToType(
                data["self"],
                object.selfType
              );
            }

            return object;
          }
        }
      ]
    );

    return ApplicationLinks;
  })();

exports.default = ApplicationLinks;
