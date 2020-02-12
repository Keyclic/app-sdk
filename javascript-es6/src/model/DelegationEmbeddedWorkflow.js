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
import State from "./State";
import Transition from "./Transition";

/**
 * The DelegationEmbeddedWorkflow model module.
 * @module model/DelegationEmbeddedWorkflow
 */
export default class DelegationEmbeddedWorkflow {
  /**
     * Constructs a new "DelegationEmbeddedWorkflow".
     * @alias module:model/DelegationEmbeddedWorkflow
     * @class
    
     */
  constructor() {
    this.state = null;
    this.transitions = [];

    this.stateType = State;
    this.transitionsType = Transition;
  }

  /**
   * Constructs a "DelegationEmbeddedWorkflow" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/DelegationEmbeddedWorkflow } object Optional instance to populate.
   * @return { module:model/DelegationEmbeddedWorkflow } The populated "DelegationEmbeddedWorkflow" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new DelegationEmbeddedWorkflow();
    }

    if (data.hasOwnProperty("state")) {
      object.state = ApiClient.convertToType(data["state"], object.stateType);
    }
    if (data.hasOwnProperty("transitions")) {
      object.transitions = ApiClient.convertToType(data["transitions"], [
        object.transitionsType
      ]);
    }

    return object;
  }

  /**
   * @return { module:model/State }
   */
  getState() {
    return this.state;
  }

  /**
   * @param { module:model/State } state
   */
  setState(state) {
    this.state = state;
  }
  /**
   * @return { Array.<module:model/Transition> }
   */
  getTransitions() {
    return this.transitions;
  }

  /**
   * @param { Array.<module:model/Transition> } transitions
   */
  setTransitions(transitions) {
    this.transitions = transitions;
  }
}
