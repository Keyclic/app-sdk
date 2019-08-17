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

/**
 * The FeedbackStatePatch model module.
 * @module model/FeedbackStatePatch
 */
export default class FeedbackStatePatch {
  /**
     * Constructs a new "FeedbackStatePatch".
     * @alias module:model/FeedbackStatePatch
     * @class
    
     * @param transition { module:model/FeedbackStatePatch.TransitionEnum }
    
     */
  constructor(transition) {
    this.transition = transition;
  }

  /**
   * Constructs a "FeedbackStatePatch" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/FeedbackStatePatch } object Optional instance to populate.
   * @return { module:model/FeedbackStatePatch } The populated "FeedbackStatePatch" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new FeedbackStatePatch();
    }

    if (data.hasOwnProperty("transition")) {
      object.transition = ApiClient.convertToType(data["transition"], "String");
    }

    return object;
  }

  /**
   * Allowed values for the "transition" property.
   * @enum { String }
   */
  static TransitionEnum = {
    /**
     * value: "deliver"
     * @const
     * @readonly
     */
    deliver: "deliver",
    /**
     * value: "dispatch"
     * @const
     * @readonly
     */
    dispatch: "dispatch",
    /**
     * value: "fail"
     * @const
     * @readonly
     */
    fail: "fail",
    /**
     * value: "process"
     * @const
     * @readonly
     */
    process: "process",
    /**
     * value: "publish"
     * @const
     * @readonly
     */
    publish: "publish",
    /**
     * value: "success"
     * @const
     * @readonly
     */
    success: "success"
  };
}