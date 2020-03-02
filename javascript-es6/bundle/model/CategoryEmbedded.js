"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _Node = _interopRequireDefault(require("./Node"));

var _NodePath = _interopRequireDefault(require("./NodePath"));

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
 * The CategoryEmbedded model module.
 * @module model/CategoryEmbedded
 */
var CategoryEmbedded = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "CategoryEmbedded".
   * @alias module:model/CategoryEmbedded
   * @class
  
   */
  function CategoryEmbedded() {
    _classCallCheck(this, CategoryEmbedded);

    this.children = [];
    this.path = [];
    this.childrenType = _Node.default;
    this.pathType = _NodePath.default;
  }
  /**
   * Constructs a "CategoryEmbedded" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/CategoryEmbedded } object Optional instance to populate.
   * @return { module:model/CategoryEmbedded } The populated "CategoryEmbedded" instance.
   */

  _createClass(
    CategoryEmbedded,
    [
      {
        key: "getChildren",

        /**
         * @return { Array.<module:model/Node> }
         */
        value: function getChildren() {
          return this.children;
        }
        /**
         * @param { Array.<module:model/Node> } children
         */
      },
      {
        key: "setChildren",
        value: function setChildren(children) {
          this.children = children;
        }
        /**
         * @return { Array.<module:model/NodePath> }
         */
      },
      {
        key: "getPath",
        value: function getPath() {
          return this.path;
        }
        /**
         * @param { Array.<module:model/NodePath> } path
         */
      },
      {
        key: "setPath",
        value: function setPath(path) {
          this.path = path;
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
            object = new CategoryEmbedded();
          }

          if (data.hasOwnProperty("children")) {
            object.children = _ApiClient.default.convertToType(
              data["children"],
              [object.childrenType]
            );
          }

          if (data.hasOwnProperty("path")) {
            object.path = _ApiClient.default.convertToType(data["path"], [
              object.pathType
            ]);
          }

          return object;
        }
      }
    ]
  );

  return CategoryEmbedded;
})();

exports.default = CategoryEmbedded;
