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
import InvitationLinks from "./InvitationLinks";

/**
 * The Invitation model module.
 * @module model/Invitation
 */
export default class Invitation {
  /**
     * Constructs a new "Invitation".
     * @alias module:model/Invitation
     * @class
    
     */
  constructor() {
    this.links = null;
    this.createdAt = null;
    this.expiredAt = null;
    this.id = null;
    this.type = null;
    this.updatedAt = null;

    this.linksType = InvitationLinks;
  }

  /**
   * Constructs a "Invitation" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/Invitation } object Optional instance to populate.
   * @return { module:model/Invitation } The populated "Invitation" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new Invitation();
    }

    if (data.hasOwnProperty("_links")) {
      object.links = ApiClient.convertToType(data["_links"], object.linksType);
    }
    if (data.hasOwnProperty("createdAt")) {
      object.createdAt = ApiClient.convertToType(data["createdAt"], "Date");
    }
    if (data.hasOwnProperty("expiredAt")) {
      object.expiredAt = ApiClient.convertToType(data["expiredAt"], "Date");
    }
    if (data.hasOwnProperty("id")) {
      object.id = ApiClient.convertToType(data["id"], "String");
    }
    if (data.hasOwnProperty("type")) {
      object.type = ApiClient.convertToType(data["type"], "String");
    }
    if (data.hasOwnProperty("updatedAt")) {
      object.updatedAt = ApiClient.convertToType(data["updatedAt"], "Date");
    }

    return object;
  }

  /**
   * @return { module:model/InvitationLinks }
   */
  getLinks() {
    return this.links;
  }

  /**
   * @param { module:model/InvitationLinks } links
   */
  setLinks(links) {
    this.links = links;
  }
  /**
   * @return { Date }
   */
  getCreatedAt() {
    return this.createdAt;
  }

  /**
   * @return { Date }
   */
  getExpiredAt() {
    return this.expiredAt;
  }

  /**
   * @param { Date } expiredAt
   */
  setExpiredAt(expiredAt) {
    this.expiredAt = expiredAt;
  }
  /**
   * @return { String }
   */
  getId() {
    return this.id;
  }

  /**
   * @return { String }
   */
  getType() {
    return this.type;
  }

  /**
   * @return { Date }
   */
  getUpdatedAt() {
    return this.updatedAt;
  }
}
