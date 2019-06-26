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
 * The OperationSignatureSigner model module.
 * @module model/OperationSignatureSigner
 */
export default class OperationSignatureSigner {
  /**
     * Constructs a new "OperationSignatureSigner".
     * @alias module:model/OperationSignatureSigner
     * @class
    
     */
  constructor() {
    this.familyName = null;
    this.givenName = null;
  }

  /**
   * Constructs a "OperationSignatureSigner" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/OperationSignatureSigner } object Optional instance to populate.
   * @return { module:model/OperationSignatureSigner } The populated "OperationSignatureSigner" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new OperationSignatureSigner();
    }

    if (data.hasOwnProperty("familyName")) {
      object.familyName = ApiClient.convertToType(data["familyName"], "String");
    }
    if (data.hasOwnProperty("givenName")) {
      object.givenName = ApiClient.convertToType(data["givenName"], "String");
    }

    return object;
  }
}
