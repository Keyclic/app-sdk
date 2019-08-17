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
import ApplicationLinks from "./ApplicationLinks";

/**
 * The Application model module.
 * @module model/Application
 */
export default class Application {
  /**
     * Constructs a new "Application".
     * @alias module:model/Application
     * @class
    
     * @param name { String }
    
     * @param token { String }
    
     */
  constructor(
    name,

    token
  ) {
    this.links = null;
    this.id = null;
    this.name = name;
    this.token = token;
    this.type = null;
    this.version = null;

    this.linksType = ApplicationLinks;
  }

  /**
   * Constructs a "Application" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/Application } object Optional instance to populate.
   * @return { module:model/Application } The populated "Application" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new Application();
    }

    if (data.hasOwnProperty("_links")) {
      object.links = ApiClient.convertToType(data["_links"], object.linksType);
    }
    if (data.hasOwnProperty("id")) {
      object.id = ApiClient.convertToType(data["id"], "String");
    }
    if (data.hasOwnProperty("name")) {
      object.name = ApiClient.convertToType(data["name"], "String");
    }
    if (data.hasOwnProperty("token")) {
      object.token = ApiClient.convertToType(data["token"], "String");
    }
    if (data.hasOwnProperty("type")) {
      object.type = ApiClient.convertToType(data["type"], "String");
    }
    if (data.hasOwnProperty("version")) {
      object.version = ApiClient.convertToType(data["version"], "String");
    }

    return object;
  }
}