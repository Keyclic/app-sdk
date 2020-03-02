"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _MemberPatchContactPoint = _interopRequireDefault(
  require("./MemberPatchContactPoint")
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
 * The MemberPatch model module.
 * @module model/MemberPatch
 */
var MemberPatch = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "MemberPatch".
   * @alias module:model/MemberPatch
   * @class
  
   */
  function MemberPatch() {
    _classCallCheck(this, MemberPatch);

    this.contactPoint = null;
    this.roles = [];
    this.contactPointType = _MemberPatchContactPoint.default;
  }
  /**
   * Constructs a "MemberPatch" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/MemberPatch } object Optional instance to populate.
   * @return { module:model/MemberPatch } The populated "MemberPatch" instance.
   */

  _createClass(
    MemberPatch,
    [
      {
        key: "getContactPoint",

        /**
         * @return { module:model/MemberPatchContactPoint }
         */
        value: function getContactPoint() {
          return this.contactPoint;
        }
        /**
         * @param { module:model/MemberPatchContactPoint } contactPoint
         */
      },
      {
        key: "setContactPoint",
        value: function setContactPoint(contactPoint) {
          this.contactPoint = contactPoint;
        }
        /**
         * @return { Array.<String> }
         */
      },
      {
        key: "getRoles",
        value: function getRoles() {
          return this.roles;
        }
        /**
         * @param { Array.<String> } roles
         */
      },
      {
        key: "setRoles",
        value: function setRoles(roles) {
          this.roles = roles;
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
            object = new MemberPatch();
          }

          if (data.hasOwnProperty("contactPoint")) {
            object.contactPoint = _ApiClient.default.convertToType(
              data["contactPoint"],
              object.contactPointType
            );
          }

          if (data.hasOwnProperty("roles")) {
            object.roles = _ApiClient.default.convertToType(
              data["roles"],
              "['String']"
            );
          }

          return object;
        }
      }
    ]
  );

  return MemberPatch;
})();

exports.default = MemberPatch;
