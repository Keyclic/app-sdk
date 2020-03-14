/**
 * Keyclic API
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 *  <techies@keyclic.com>
 *
 * This class is auto generated by the swagger code generator program with proper templates of Keyclic.
 * https://github.com/swagger-api/swagger-codegen.git
 * https://github.com/Keyclic/app-sdk.git
 * Do not edit the class manually.
 */

import ApiClient from "../ApiClient";
import WorkflowState from "./WorkflowState";
import WorkflowTransition from "./WorkflowTransition";

/**
 * The DelegationTypeWorkflow model module.
 * @module model/DelegationTypeWorkflow
 */
export default class DelegationTypeWorkflow {
  /**
     * Constructs a new "DelegationTypeWorkflow".
     * @alias module:model/DelegationTypeWorkflow
     * @class
    
     */
  constructor() {
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

    this.endType = WorkflowState;
    this.startType = WorkflowState;
    this.statesType = WorkflowState;
    this.transitionsType = WorkflowTransition;
  }

  /**
   * Constructs a "DelegationTypeWorkflow" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/DelegationTypeWorkflow } object Optional instance to populate.
   * @return { module:model/DelegationTypeWorkflow } The populated "DelegationTypeWorkflow" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new DelegationTypeWorkflow();
    }

    if (data.hasOwnProperty("createdAt")) {
      object.createdAt = ApiClient.convertToType(data["createdAt"], "Date");
    }
    if (data.hasOwnProperty("description")) {
      object.description = ApiClient.convertToType(
        data["description"],
        "String"
      );
    }
    if (data.hasOwnProperty("end")) {
      object.end = ApiClient.convertToType(data["end"], object.endType);
    }
    if (data.hasOwnProperty("id")) {
      object.id = ApiClient.convertToType(data["id"], "String");
    }
    if (data.hasOwnProperty("name")) {
      object.name = ApiClient.convertToType(data["name"], "String");
    }
    if (data.hasOwnProperty("start")) {
      object.start = ApiClient.convertToType(data["start"], object.startType);
    }
    if (data.hasOwnProperty("states")) {
      object.states = ApiClient.convertToType(data["states"], [
        object.statesType
      ]);
    }
    if (data.hasOwnProperty("transitions")) {
      object.transitions = ApiClient.convertToType(data["transitions"], [
        object.transitionsType
      ]);
    }
    if (data.hasOwnProperty("type")) {
      object.type = ApiClient.convertToType(data["type"], "String");
    }
    if (data.hasOwnProperty("updatedAt")) {
      object.updatedAt = ApiClient.convertToType(data["updatedAt"], "Date");
    }

    return object;
  }

  /**
   * @return { Date }
   */
  getCreatedAt() {
    return this.createdAt;
  }

  /**
   * @return { String }
   */
  getDescription() {
    return this.description;
  }

  /**
   * @param { String } description
   */
  setDescription(description) {
    this.description = description;
  }
  /**
   * @return { module:model/WorkflowState }
   */
  getEnd() {
    return this.end;
  }

  /**
   * @param { module:model/WorkflowState } end
   */
  setEnd(end) {
    this.end = end;
  }
  /**
   * @return { String }
   */
  getId() {
    return this.id;
  }

  /**
   * @return { String }
   */
  getName() {
    return this.name;
  }

  /**
   * @param { String } name
   */
  setName(name) {
    this.name = name;
  }
  /**
   * @return { module:model/WorkflowState }
   */
  getStart() {
    return this.start;
  }

  /**
   * @param { module:model/WorkflowState } start
   */
  setStart(start) {
    this.start = start;
  }
  /**
   * @return { Array.<module:model/WorkflowState> }
   */
  getStates() {
    return this.states;
  }

  /**
   * @param { Array.<module:model/WorkflowState> } states
   */
  setStates(states) {
    this.states = states;
  }
  /**
   * @return { Array.<module:model/WorkflowTransition> }
   */
  getTransitions() {
    return this.transitions;
  }

  /**
   * @param { Array.<module:model/WorkflowTransition> } transitions
   */
  setTransitions(transitions) {
    this.transitions = transitions;
  }
  /**
   * @return { String }
   */
  getType() {
    return this.type;
  }

  /**
   * @return { Date }
   */
  getUpdatedAt() {
    return this.updatedAt;
  }
}
