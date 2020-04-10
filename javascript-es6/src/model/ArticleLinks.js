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
import ArticleLinksSection from "./ArticleLinksSection";
import ArticleLinksSelf from "./ArticleLinksSelf";

/**
 * The ArticleLinks model module.
 * @module model/ArticleLinks
 */
export default class ArticleLinks {
  /**
     * Constructs a new "ArticleLinks".
     * @alias module:model/ArticleLinks
     * @class
    
     */
  constructor() {
    this.section = null;
    this.self = null;

    this.sectionType = ArticleLinksSection;
    this.selfType = ArticleLinksSelf;
  }

  /**
   * Constructs a "ArticleLinks" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ArticleLinks } object Optional instance to populate.
   * @return { module:model/ArticleLinks } The populated "ArticleLinks" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new ArticleLinks();
    }

    if (data.hasOwnProperty("section")) {
      object.section = ApiClient.convertToType(
        data["section"],
        object.sectionType
      );
    }
    if (data.hasOwnProperty("self")) {
      object.self = ApiClient.convertToType(data["self"], object.selfType);
    }

    return object;
  }

  /**
   * @return { module:model/ArticleLinksSection }
   */
  getSection() {
    return this.section;
  }

  /**
   * @param { module:model/ArticleLinksSection } section
   */
  setSection(section) {
    this.section = section;
  }
  /**
   * @return { module:model/ArticleLinksSelf }
   */
  getSelf() {
    return this.self;
  }

  /**
   * @param { module:model/ArticleLinksSelf } self
   */
  setSelf(self) {
    this.self = self;
  }
}