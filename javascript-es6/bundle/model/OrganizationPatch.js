"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _OrganizationPatchPreferences = _interopRequireDefault(
  require("./OrganizationPatchPreferences")
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
 * The OrganizationPatch model module.
 * @module model/OrganizationPatch
 */
var OrganizationPatch =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "OrganizationPatch".
   * @alias module:model/OrganizationPatch
   * @class
  
   */
    function OrganizationPatch() {
      _classCallCheck(this, OrganizationPatch);

      this.name = null;
      this.alternateName = null;
      this.description = null;
      this.logo = null;
      this.billingEmailAddress = null;
      this.notificationEmailAddress = null;
      this.preferences = null;
      this.preferencesType = _OrganizationPatchPreferences.default;
    }
    /**
     * Constructs a "OrganizationPatch" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/OrganizationPatch } object Optional instance to populate.
     * @return { module:model/OrganizationPatch } The populated "OrganizationPatch" instance.
     */

    _createClass(OrganizationPatch, null, [
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
            object = new OrganizationPatch();
          }

          if (data.hasOwnProperty("name")) {
            object.name = _ApiClient.default.convertToType(
              data["name"],
              "String"
            );
          }

          if (data.hasOwnProperty("alternateName")) {
            object.alternateName = _ApiClient.default.convertToType(
              data["alternateName"],
              "String"
            );
          }

          if (data.hasOwnProperty("description")) {
            object.description = _ApiClient.default.convertToType(
              data["description"],
              "String"
            );
          }

          if (data.hasOwnProperty("logo")) {
            object.logo = _ApiClient.default.convertToType(
              data["logo"],
              "String"
            );
          }

          if (data.hasOwnProperty("billingEmailAddress")) {
            object.billingEmailAddress = _ApiClient.default.convertToType(
              data["billingEmailAddress"],
              "String"
            );
          }

          if (data.hasOwnProperty("notificationEmailAddress")) {
            object.notificationEmailAddress = _ApiClient.default.convertToType(
              data["notificationEmailAddress"],
              "String"
            );
          }

          if (data.hasOwnProperty("preferences")) {
            object.preferences = _ApiClient.default.convertToType(
              data["preferences"],
              object.preferencesType
            );
          }

          return object;
        }
      }
    ]);

    return OrganizationPatch;
  })();

exports.default = OrganizationPatch;