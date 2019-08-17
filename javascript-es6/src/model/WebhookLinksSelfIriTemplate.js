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
import WebhookLinksSelfIriTemplateMapping from "./WebhookLinksSelfIriTemplateMapping";

/**
 * The WebhookLinksSelfIriTemplate model module.
 * @module model/WebhookLinksSelfIriTemplate
 */
export default class WebhookLinksSelfIriTemplate {
  /**
     * Constructs a new "WebhookLinksSelfIriTemplate".
     * @alias module:model/WebhookLinksSelfIriTemplate
     * @class
    
     */
  constructor() {
    this.mapping = null;

    this.mappingType = WebhookLinksSelfIriTemplateMapping;
  }

  /**
   * Constructs a "WebhookLinksSelfIriTemplate" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/WebhookLinksSelfIriTemplate } object Optional instance to populate.
   * @return { module:model/WebhookLinksSelfIriTemplate } The populated "WebhookLinksSelfIriTemplate" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new WebhookLinksSelfIriTemplate();
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