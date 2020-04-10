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
import KnowledgeBaseLinksSelfIriTemplate from "./KnowledgeBaseLinksSelfIriTemplate";

/**
 * The KnowledgeBaseLinksSelf model module.
 * @module model/KnowledgeBaseLinksSelf
 */
export default class KnowledgeBaseLinksSelf {
  /**
     * Constructs a new "KnowledgeBaseLinksSelf".
     * @alias module:model/KnowledgeBaseLinksSelf
     * @class
    
     */
  constructor() {
    this.href = null;
    this.iriTemplate = null;

    this.iriTemplateType = KnowledgeBaseLinksSelfIriTemplate;
  }

  /**
   * Constructs a "KnowledgeBaseLinksSelf" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/KnowledgeBaseLinksSelf } object Optional instance to populate.
   * @return { module:model/KnowledgeBaseLinksSelf } The populated "KnowledgeBaseLinksSelf" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new KnowledgeBaseLinksSelf();
    }

    if (data.hasOwnProperty("href")) {
      object.href = ApiClient.convertToType(data["href"], "String");
    }
    if (data.hasOwnProperty("iriTemplate")) {
      object.iriTemplate = ApiClient.convertToType(
        data["iriTemplate"],
        object.iriTemplateType
      );
    }

    return object;
  }

  /**
   * Gets The URI of the self associated to the given knowledgebase.
   * @return { String }
   */
  getHref() {
    return this.href;
  }

  /**
   * Sets The URI of the self associated to the given knowledgebase.
   * @param { String } href The URI of the self associated to the given knowledgebase.
   */
  setHref(href) {
    this.href = href;
  }
  /**
   * @return { module:model/KnowledgeBaseLinksSelfIriTemplate }
   */
  getIriTemplate() {
    return this.iriTemplate;
  }

  /**
   * @param { module:model/KnowledgeBaseLinksSelfIriTemplate } iriTemplate
   */
  setIriTemplate(iriTemplate) {
    this.iriTemplate = iriTemplate;
  }
}