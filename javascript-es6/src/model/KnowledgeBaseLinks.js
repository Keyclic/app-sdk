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
import KnowledgeBaseLinksSelf from "./KnowledgeBaseLinksSelf";

/**
 * The KnowledgeBaseLinks model module.
 * @module model/KnowledgeBaseLinks
 */
export default class KnowledgeBaseLinks {
  /**
     * Constructs a new "KnowledgeBaseLinks".
     * @alias module:model/KnowledgeBaseLinks
     * @class
    
     */
  constructor() {
    this.self = null;

    this.selfType = KnowledgeBaseLinksSelf;
  }

  /**
   * Constructs a "KnowledgeBaseLinks" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/KnowledgeBaseLinks } object Optional instance to populate.
   * @return { module:model/KnowledgeBaseLinks } The populated "KnowledgeBaseLinks" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new KnowledgeBaseLinks();
    }

    if (data.hasOwnProperty("self")) {
      object.self = ApiClient.convertToType(data["self"], object.selfType);
    }

    return object;
  }

  /**
   * @return { module:model/KnowledgeBaseLinksSelf }
   */
  getSelf() {
    return this.self;
  }

  /**
   * @param { module:model/KnowledgeBaseLinksSelf } self
   */
  setSelf(self) {
    this.self = self;
  }
}
