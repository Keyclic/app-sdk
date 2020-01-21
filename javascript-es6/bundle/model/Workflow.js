"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _State = _interopRequireDefault(require("./State"));

var _Transition = _interopRequireDefault(require("./Transition"));

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
 * The Workflow model module.
 * @module model/Workflow
 */
var Workflow =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "Workflow".
   * @alias module:model/Workflow
   * @class
  
   */
    function Workflow() {
      _classCallCheck(this, Workflow);

      this.createdAt = null;
      this.description = null;
      this.end = null;
      this.id = null;
      this.name = null;
      this.start = null;
      this.states = [];
      this.transitions = [];
      this.type = null;
      this.updatedAt = null;
      this.endType = _State.default;
      this.startType = _State.default;
      this.statesType = _State.default;
      this.transitionsType = _Transition.default;
    }
    /**
     * Constructs a "Workflow" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Workflow } object Optional instance to populate.
     * @return { module:model/Workflow } The populated "Workflow" instance.
     */

    _createClass(
      Workflow,
      [
        {
          key: "getCreatedAt",

          /**
           * @return { String }
           */
          value: function getCreatedAt() {
            return this.createdAt;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getDescription",
          value: function getDescription() {
            return this.description;
          }
          /**
           * @param { String } description
           */
        },
        {
          key: "setDescription",
          value: function setDescription(description) {
            this.description = description;
          }
          /**
           * @return { module:model/State }
           */
        },
        {
          key: "getEnd",
          value: function getEnd() {
            return this.end;
          }
          /**
           * @param { module:model/State } end
           */
        },
        {
          key: "setEnd",
          value: function setEnd(end) {
            this.end = end;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getId",
          value: function getId() {
            return this.id;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getName",
          value: function getName() {
            return this.name;
          }
          /**
           * @param { String } name
           */
        },
        {
          key: "setName",
          value: function setName(name) {
            this.name = name;
          }
          /**
           * @return { module:model/State }
           */
        },
        {
          key: "getStart",
          value: function getStart() {
            return this.start;
          }
          /**
           * @param { module:model/State } start
           */
        },
        {
          key: "setStart",
          value: function setStart(start) {
            this.start = start;
          }
          /**
           * @return { Array.<module:model/State> }
           */
        },
        {
          key: "getStates",
          value: function getStates() {
            return this.states;
          }
          /**
           * @param { Array.<module:model/State> } states
           */
        },
        {
          key: "setStates",
          value: function setStates(states) {
            this.states = states;
          }
          /**
           * @return { Array.<module:model/Transition> }
           */
        },
        {
          key: "getTransitions",
          value: function getTransitions() {
            return this.transitions;
          }
          /**
           * @param { Array.<module:model/Transition> } transitions
           */
        },
        {
          key: "setTransitions",
          value: function setTransitions(transitions) {
            this.transitions = transitions;
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
          /**
           * @return { String }
           */
        },
        {
          key: "getUpdatedAt",
          value: function getUpdatedAt() {
            return this.updatedAt;
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
              object = new Workflow();
            }

            if (data.hasOwnProperty("createdAt")) {
              object.createdAt = _ApiClient.default.convertToType(
                data["createdAt"],
                "String"
              );
            }

            if (data.hasOwnProperty("description")) {
              object.description = _ApiClient.default.convertToType(
                data["description"],
                "String"
              );
            }

            if (data.hasOwnProperty("end")) {
              object.end = _ApiClient.default.convertToType(
                data["end"],
                object.endType
              );
            }

            if (data.hasOwnProperty("id")) {
              object.id = _ApiClient.default.convertToType(
                data["id"],
                "String"
              );
            }

            if (data.hasOwnProperty("name")) {
              object.name = _ApiClient.default.convertToType(
                data["name"],
                "String"
              );
            }

            if (data.hasOwnProperty("start")) {
              object.start = _ApiClient.default.convertToType(
                data["start"],
                object.startType
              );
            }

            if (data.hasOwnProperty("states")) {
              object.states = _ApiClient.default.convertToType(data["states"], [
                object.statesType
              ]);
            }

            if (data.hasOwnProperty("transitions")) {
              object.transitions = _ApiClient.default.convertToType(
                data["transitions"],
                [object.transitionsType]
              );
            }

            if (data.hasOwnProperty("type")) {
              object.type = _ApiClient.default.convertToType(
                data["type"],
                "String"
              );
            }

            if (data.hasOwnProperty("updatedAt")) {
              object.updatedAt = _ApiClient.default.convertToType(
                data["updatedAt"],
                "String"
              );
            }

            return object;
          }
        }
      ]
    );

    return Workflow;
  })();

exports.default = Workflow;