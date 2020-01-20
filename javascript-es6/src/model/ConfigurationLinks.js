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
import ConfigurationLinksSelf from "./ConfigurationLinksSelf";

/**
 * The ConfigurationLinks model module.
 * @module model/ConfigurationLinks
 */
export default class ConfigurationLinks {
  /**
     * Constructs a new "ConfigurationLinks".
     * @alias module:model/ConfigurationLinks
     * @class
    
     */
  constructor() {
    this.self = null;

    this.selfType = ConfigurationLinksSelf;
  }

  /**
   * Constructs a "ConfigurationLinks" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ConfigurationLinks } object Optional instance to populate.
   * @return { module:model/ConfigurationLinks } The populated "ConfigurationLinks" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new ConfigurationLinks();
    }

    if (data.hasOwnProperty("self")) {
      object.self = ApiClient.convertToType(data["self"], object.selfType);
    }

    return object;
  }

  /**
   * @return { module:model/ConfigurationLinksSelf }
   */
  getSelf() {
    return this.self;
  }

  /**
   * @param { module:model/ConfigurationLinksSelf } self
   */
  setSelf(self) {
    this.self = self;
  }
}
