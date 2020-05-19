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
import Organization from "./Organization";

/**
 * The ExternalServiceEmbedded model module.
 * @module model/ExternalServiceEmbedded
 */
export default class ExternalServiceEmbedded {
  /**
     * Constructs a new "ExternalServiceEmbedded".
     * @alias module:model/ExternalServiceEmbedded
     * @class
    
     */
  constructor() {
    this.provider = null;

    this.providerType = Organization;
  }

  /**
   * Constructs a "ExternalServiceEmbedded" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ExternalServiceEmbedded } object Optional instance to populate.
   * @return { module:model/ExternalServiceEmbedded } The populated "ExternalServiceEmbedded" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new ExternalServiceEmbedded();
    }

    if (data.hasOwnProperty("provider")) {
      object.provider = ApiClient.convertToType(
        data["provider"],
        object.providerType
      );
    }

    return object;
  }

  /**
   * @return { module:model/Organization }
   */
  getProvider() {
    return this.provider;
  }

  /**
   * @param { module:model/Organization } provider
   */
  setProvider(provider) {
    this.provider = provider;
  }
}