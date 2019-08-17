"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _BusinessActivityLinks = _interopRequireDefault(
  require("./BusinessActivityLinks")
);

var _BusinessActivityMetadataSchema = _interopRequireDefault(
  require("./BusinessActivityMetadataSchema")
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
 * The BusinessActivity model module.
 * @module model/BusinessActivity
 */
var BusinessActivity =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "BusinessActivity".
   * @alias module:model/BusinessActivity
   * @class
  
   * @param name { String }
  
   */
    function BusinessActivity(name) {
      _classCallCheck(this, BusinessActivity);

      this.links = null;
      this.alternateName = null;
      this.id = null;
      this.metadataSchema = null;
      this.name = name;
      this.type = null;
      this.linksType = _BusinessActivityLinks.default;
      this.metadataSchemaType = _BusinessActivityMetadataSchema.default;
    }
    /**
     * Constructs a "BusinessActivity" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/BusinessActivity } object Optional instance to populate.
     * @return { module:model/BusinessActivity } The populated "BusinessActivity" instance.
     */

    _createClass(BusinessActivity, null, [
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
            object = new BusinessActivity();
          }

          if (data.hasOwnProperty("_links")) {
            object.links = _ApiClient.default.convertToType(
              data["_links"],
              object.linksType
            );
          }

          if (data.hasOwnProperty("alternateName")) {
            object.alternateName = _ApiClient.default.convertToType(
              data["alternateName"],
              "String"
            );
          }

          if (data.hasOwnProperty("id")) {
            object.id = _ApiClient.default.convertToType(data["id"], "String");
          }

          if (data.hasOwnProperty("metadataSchema")) {
            object.metadataSchema = _ApiClient.default.convertToType(
              data["metadataSchema"],
              object.metadataSchemaType
            );
          }

          if (data.hasOwnProperty("name")) {
            object.name = _ApiClient.default.convertToType(
              data["name"],
              "String"
            );
          }

          if (data.hasOwnProperty("type")) {
            object.type = _ApiClient.default.convertToType(
              data["type"],
              "String"
            );
          }

          return object;
        }
      }
    ]);

    return BusinessActivity;
  })();

exports.default = BusinessActivity;