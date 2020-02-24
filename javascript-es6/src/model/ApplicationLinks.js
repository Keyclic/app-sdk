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
import ApplicationLinksKnowledgeBase from "./ApplicationLinksKnowledgeBase";
import ApplicationLinksSelf from "./ApplicationLinksSelf";

/**
 * The ApplicationLinks model module.
 * @module model/ApplicationLinks
 */
export default class ApplicationLinks {
  /**
     * Constructs a new "ApplicationLinks".
     * @alias module:model/ApplicationLinks
     * @class
    
     */
  constructor() {
    this.knowledgeBase = null;
    this.self = null;

    this.knowledgeBaseType = ApplicationLinksKnowledgeBase;
    this.selfType = ApplicationLinksSelf;
  }

  /**
   * Constructs a "ApplicationLinks" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ApplicationLinks } object Optional instance to populate.
   * @return { module:model/ApplicationLinks } The populated "ApplicationLinks" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new ApplicationLinks();
    }

    if (data.hasOwnProperty("knowledgeBase")) {
      object.knowledgeBase = ApiClient.convertToType(
        data["knowledgeBase"],
        object.knowledgeBaseType
      );
    }
    if (data.hasOwnProperty("self")) {
      object.self = ApiClient.convertToType(data["self"], object.selfType);
    }

    return object;
  }

  /**
   * @return { module:model/ApplicationLinksKnowledgeBase }
   */
  getKnowledgeBase() {
    return this.knowledgeBase;
  }

  /**
   * @param { module:model/ApplicationLinksKnowledgeBase } knowledgeBase
   */
  setKnowledgeBase(knowledgeBase) {
    this.knowledgeBase = knowledgeBase;
  }
  /**
   * @return { module:model/ApplicationLinksSelf }
   */
  getSelf() {
    return this.self;
  }

  /**
   * @param { module:model/ApplicationLinksSelf } self
   */
  setSelf(self) {
    this.self = self;
  }
}
