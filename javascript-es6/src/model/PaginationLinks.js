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
import PaginationLink from "./PaginationLink";

/**
 * The PaginationLinks model module.
 * @module model/PaginationLinks
 */
export default class PaginationLinks {
  /**
     * Constructs a new "PaginationLinks".
     * @alias module:model/PaginationLinks
     * @class
    
     */
  constructor() {
    this.first = null;
    this.last = null;
    this.next = null;
    this.self = null;

    this.firstType = PaginationLink;
    this.lastType = PaginationLink;
    this.nextType = PaginationLink;
    this.selfType = PaginationLink;
  }

  /**
   * Constructs a "PaginationLinks" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/PaginationLinks } object Optional instance to populate.
   * @return { module:model/PaginationLinks } The populated "PaginationLinks" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new PaginationLinks();
    }

    if (data.hasOwnProperty("first")) {
      object.first = ApiClient.convertToType(data["first"], object.firstType);
    }
    if (data.hasOwnProperty("last")) {
      object.last = ApiClient.convertToType(data["last"], object.lastType);
    }
    if (data.hasOwnProperty("next")) {
      object.next = ApiClient.convertToType(data["next"], object.nextType);
    }
    if (data.hasOwnProperty("self")) {
      object.self = ApiClient.convertToType(data["self"], object.selfType);
    }

    return object;
  }
}