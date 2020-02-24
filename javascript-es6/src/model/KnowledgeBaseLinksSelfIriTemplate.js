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
import ApplicationLinksKnowledgeBaseIriTemplateMapping from "./ApplicationLinksKnowledgeBaseIriTemplateMapping";

/**
 * The KnowledgeBaseLinksSelfIriTemplate model module.
 * @module model/KnowledgeBaseLinksSelfIriTemplate
 */
export default class KnowledgeBaseLinksSelfIriTemplate {
  /**
     * Constructs a new "KnowledgeBaseLinksSelfIriTemplate".
     * @alias module:model/KnowledgeBaseLinksSelfIriTemplate
     * @class
    
     */
  constructor() {
    this.mapping = null;

    this.mappingType = ApplicationLinksKnowledgeBaseIriTemplateMapping;
  }

  /**
   * Constructs a "KnowledgeBaseLinksSelfIriTemplate" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/KnowledgeBaseLinksSelfIriTemplate } object Optional instance to populate.
   * @return { module:model/KnowledgeBaseLinksSelfIriTemplate } The populated "KnowledgeBaseLinksSelfIriTemplate" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new KnowledgeBaseLinksSelfIriTemplate();
    }

    if (data.hasOwnProperty("mapping")) {
      object.mapping = ApiClient.convertToType(
        data["mapping"],
        object.mappingType
      );
    }

    return object;
  }

  /**
   * @return { module:model/ApplicationLinksKnowledgeBaseIriTemplateMapping }
   */
  getMapping() {
    return this.mapping;
  }

  /**
   * @param { module:model/ApplicationLinksKnowledgeBaseIriTemplateMapping } mapping
   */
  setMapping(mapping) {
    this.mapping = mapping;
  }
}
