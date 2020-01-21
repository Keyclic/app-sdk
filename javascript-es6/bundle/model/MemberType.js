"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _Role = _interopRequireDefault(require("./Role"));

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
 * The MemberType model module.
 * @module model/MemberType
 */
var MemberType =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "MemberType".
   * @alias module:model/MemberType
   * @class
  
   */
    function MemberType() {
      _classCallCheck(this, MemberType);

      this.id = null;
      this.roles = [];
      this.type = null;
      this.rolesType = _Role.default;
    }
    /**
     * Constructs a "MemberType" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/MemberType } object Optional instance to populate.
     * @return { module:model/MemberType } The populated "MemberType" instance.
     */

    _createClass(
      MemberType,
      [
        {
          key: "getId",

          /**
           * @return { String }
           */
          value: function getId() {
            return this.id;
          }
          /**
           * @return { Array.<module:model/Role> }
           */
        },
        {
          key: "getRoles",
          value: function getRoles() {
            return this.roles;
          }
          /**
           * @param { Array.<module:model/Role> } roles
           */
        },
        {
          key: "setRoles",
          value: function setRoles(roles) {
            this.roles = roles;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getType",
          value: function getType() {
            return this.type;
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
              object = new MemberType();
            }

            if (data.hasOwnProperty("id")) {
              object.id = _ApiClient.default.convertToType(
                data["id"],
                "String"
              );
            }

            if (data.hasOwnProperty("roles")) {
              object.roles = _ApiClient.default.convertToType(data["roles"], [
                object.rolesType
              ]);
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
      ]
    );

    return MemberType;
  })();

exports.default = MemberType;