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
import TransitionState from "./TransitionState";

/**
 * The WorkflowTransition model module.
 * @module model/WorkflowTransition
 */
export default class WorkflowTransition {
  /**
     * Constructs a new "WorkflowTransition".
     * @alias module:model/WorkflowTransition
     * @class
    
     */
  constructor() {
    this.commentRequired = null;
    this.description = null;
    this.from = null;
    this.id = null;
    this.name = null;
    this.to = null;
    this.type = null;

    this.fromType = TransitionState;
    this.toType = TransitionState;
  }

  /**
   * Constructs a "WorkflowTransition" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/WorkflowTransition } object Optional instance to populate.
   * @return { module:model/WorkflowTransition } The populated "WorkflowTransition" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new WorkflowTransition();
    }

    if (data.hasOwnProperty("commentRequired")) {
      object.commentRequired = ApiClient.convertToType(
        data["commentRequired"],
        "Boolean"
      );
    }
    if (data.hasOwnProperty("description")) {
      object.description = ApiClient.convertToType(
        data["description"],
        "String"
      );
    }
    if (data.hasOwnProperty("from")) {
      object.from = ApiClient.convertToType(data["from"], object.fromType);
    }
    if (data.hasOwnProperty("id")) {
      object.id = ApiClient.convertToType(data["id"], "String");
    }
    if (data.hasOwnProperty("name")) {
      object.name = ApiClient.convertToType(data["name"], "String");
    }
    if (data.hasOwnProperty("to")) {
      object.to = ApiClient.convertToType(data["to"], object.toType);
    }
    if (data.hasOwnProperty("type")) {
      object.type = ApiClient.convertToType(data["type"], "String");
    }

    return object;
  }

  /**
   * @return { Boolean }
   */
  getCommentRequired() {
    return this.commentRequired;
  }

  /**
   * @param { Boolean } commentRequired
   */
  setCommentRequired(commentRequired) {
    this.commentRequired = commentRequired;
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
   * @return { module:model/TransitionState }
   */
  getFrom() {
    return this.from;
  }

  /**
   * @param { module:model/TransitionState } from
   */
  setFrom(from) {
    this.from = from;
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
   * @return { module:model/TransitionState }
   */
  getTo() {
    return this.to;
  }

  /**
   * @param { module:model/TransitionState } to
   */
  setTo(to) {
    this.to = to;
  }
  /**
   * @return { String }
   */
  getType() {
    return this.type;
  }
}
