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

/**
 * The GeoCoordinates model module.
 * @module model/GeoCoordinates
 */
var GeoCoordinates =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "GeoCoordinates".
   * @alias module:model/GeoCoordinates
   * @class
  
   */
    function GeoCoordinates() {
      _classCallCheck(this, GeoCoordinates);

      this.elevation = null;
      this.point = null;
    }
    /**
     * Constructs a "GeoCoordinates" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/GeoCoordinates } object Optional instance to populate.
     * @return { module:model/GeoCoordinates } The populated "GeoCoordinates" instance.
     */

    _createClass(
      GeoCoordinates,
      [
        {
          key: "getElevation",

          /**
           * minimum: -10000
           * maximum: 8000
           * @return { Number }
           */
          value: function getElevation() {
            return this.elevation;
          }
          /**
           * @param { Number } elevation
           */
        },
        {
          key: "setElevation",
          value: function setElevation(elevation) {
            this.elevation = elevation;
          }
          /**
           * @return { Object }
           */
        },
        {
          key: "getPoint",
          value: function getPoint() {
            return this.point;
          }
          /**
           * @param { Object } point
           */
        },
        {
          key: "setPoint",
          value: function setPoint(point) {
            this.point = point;
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
              object = new GeoCoordinates();
            }

            if (data.hasOwnProperty("elevation")) {
              object.elevation = _ApiClient.default.convertToType(
                data["elevation"],
                "Number"
              );
            }

            if (data.hasOwnProperty("point")) {
              object.point = _ApiClient.default.convertToType(
                data["point"],
                "Object"
              );
            }

            return object;
          }
        }
      ]
    );

    return GeoCoordinates;
  })();

exports.default = GeoCoordinates;