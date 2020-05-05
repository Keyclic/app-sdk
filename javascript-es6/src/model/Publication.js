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
import PublicationEmbedded from "./PublicationEmbedded";
import PublicationLinks from "./PublicationLinks";

/**
 * The Publication model module.
 * @module model/Publication
 */
export default class Publication {
  /**
     * Constructs a new "Publication".
     * @alias module:model/Publication
     * @class
    
     * @param message { String }
    
     * @param read { Number }
    
     * @param title { String }
    
     */
  constructor(
    message,

    read,

    title
  ) {
    this.embedded = null;
    this.links = null;
    this.createdAt = null;
    this.id = null;
    this.message = message;
    this.read = read;
    this.title = title;
    this.type = null;
    this.updatedAt = null;

    this.embeddedType = PublicationEmbedded;
    this.linksType = PublicationLinks;
  }

  /**
   * Constructs a "Publication" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/Publication } object Optional instance to populate.
   * @return { module:model/Publication } The populated "Publication" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new Publication();
    }

    if (data.hasOwnProperty("_embedded")) {
      object.embedded = ApiClient.convertToType(
        data["_embedded"],
        object.embeddedType
      );
    }
    if (data.hasOwnProperty("_links")) {
      object.links = ApiClient.convertToType(data["_links"], object.linksType);
    }
    if (data.hasOwnProperty("createdAt")) {
      object.createdAt = ApiClient.convertToType(data["createdAt"], "Date");
    }
    if (data.hasOwnProperty("id")) {
      object.id = ApiClient.convertToType(data["id"], "String");
    }
    if (data.hasOwnProperty("message")) {
      object.message = ApiClient.convertToType(data["message"], "String");
    }
    if (data.hasOwnProperty("read")) {
      object.read = ApiClient.convertToType(data["read"], "Number");
    }
    if (data.hasOwnProperty("title")) {
      object.title = ApiClient.convertToType(data["title"], "String");
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
   * @return { module:model/PublicationEmbedded }
   */
  getEmbedded() {
    return this.embedded;
  }

  /**
   * @param { module:model/PublicationEmbedded } embedded
   */
  setEmbedded(embedded) {
    this.embedded = embedded;
  }
  /**
   * @return { module:model/PublicationLinks }
   */
  getLinks() {
    return this.links;
  }

  /**
   * @param { module:model/PublicationLinks } links
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
   * @return { String }
   */
  getId() {
    return this.id;
  }

  /**
   * @return { String }
   */
  getMessage() {
    return this.message;
  }

  /**
   * @param { String } message
   */
  setMessage(message) {
    this.message = message;
  }
  /**
   * @return { Number }
   */
  getRead() {
    return this.read;
  }

  /**
   * @param { Number } read
   */
  setRead(read) {
    this.read = read;
  }
  /**
   * @return { String }
   */
  getTitle() {
    return this.title;
  }

  /**
   * @param { String } title
   */
  setTitle(title) {
    this.title = title;
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
