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
import OperationEmbeddedDuration from "./OperationEmbeddedDuration";

/**
 * The OperationEmbedded model module.
 * @module model/OperationEmbedded
 */
export default class OperationEmbedded {
  /**
     * Constructs a new "OperationEmbedded".
     * @alias module:model/OperationEmbedded
     * @class
    
     */
  constructor() {
    this.duration = null;
    this.stateTransitions = [];
    this.tracking = null;

    this.durationType = OperationEmbeddedDuration;
  }

  /**
   * Constructs a "OperationEmbedded" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/OperationEmbedded } object Optional instance to populate.
   * @return { module:model/OperationEmbedded } The populated "OperationEmbedded" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new OperationEmbedded();
    }

    if (data.hasOwnProperty("duration")) {
      object.duration = ApiClient.convertToType(
        data["duration"],
        object.durationType
      );
    }
    if (data.hasOwnProperty("stateTransitions")) {
      object.stateTransitions = ApiClient.convertToType(
        data["stateTransitions"],
        "['String']"
      );
    }
    if (data.hasOwnProperty("tracking")) {
      object.tracking = ApiClient.convertToType(data["tracking"], "String");
    }

    return object;
  }
}