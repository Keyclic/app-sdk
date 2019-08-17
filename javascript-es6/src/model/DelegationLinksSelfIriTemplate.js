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
import DelegationLinksSelfIriTemplateMapping from "./DelegationLinksSelfIriTemplateMapping";

/**
 * The DelegationLinksSelfIriTemplate model module.
 * @module model/DelegationLinksSelfIriTemplate
 */
export default class DelegationLinksSelfIriTemplate {
  /**
     * Constructs a new "DelegationLinksSelfIriTemplate".
     * @alias module:model/DelegationLinksSelfIriTemplate
     * @class
    
     */
  constructor() {
    this.mapping = null;

    this.mappingType = DelegationLinksSelfIriTemplateMapping;
  }

  /**
   * Constructs a "DelegationLinksSelfIriTemplate" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/DelegationLinksSelfIriTemplate } object Optional instance to populate.
   * @return { module:model/DelegationLinksSelfIriTemplate } The populated "DelegationLinksSelfIriTemplate" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new DelegationLinksSelfIriTemplate();
    }

    if (data.hasOwnProperty("mapping")) {
      object.mapping = ApiClient.convertToType(
        data["mapping"],
        object.mappingType
      );
    }

    return object;
  }
}