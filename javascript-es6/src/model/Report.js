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
import ReportEmbedded from "./ReportEmbedded";
import ReportLinks from "./ReportLinks";

/**
 * The Report model module.
 * @module model/Report
 */
export default class Report {
  /**
     * Constructs a new "Report".
     * @alias module:model/Report
     * @class
    
     * @param priority { Number }
    
     * @param state { Array.<String> }
    
     */
  constructor(
    priority,

    state
  ) {
    this.embedded = null;
    this.links = null;
    this.createdAt = null;
    this.description = null;
    this.dueAt = null;
    this.id = null;
    this.identificationNumber = null;
    this.priority = priority;
    this.reference = null;
    this.state = state;
    this.tags = [];
    this.type = null;
    this.updatedAt = null;

    this.embeddedType = ReportEmbedded;
    this.linksType = ReportLinks;
  }

  /**
   * Constructs a "Report" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/Report } object Optional instance to populate.
   * @return { module:model/Report } The populated "Report" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new Report();
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
    if (data.hasOwnProperty("description")) {
      object.description = ApiClient.convertToType(
        data["description"],
        "String"
      );
    }
    if (data.hasOwnProperty("dueAt")) {
      object.dueAt = ApiClient.convertToType(data["dueAt"], "Date");
    }
    if (data.hasOwnProperty("id")) {
      object.id = ApiClient.convertToType(data["id"], "String");
    }
    if (data.hasOwnProperty("identificationNumber")) {
      object.identificationNumber = ApiClient.convertToType(
        data["identificationNumber"],
        "String"
      );
    }
    if (data.hasOwnProperty("priority")) {
      object.priority = ApiClient.convertToType(data["priority"], "Number");
    }
    if (data.hasOwnProperty("reference")) {
      object.reference = ApiClient.convertToType(data["reference"], "String");
    }
    if (data.hasOwnProperty("state")) {
      object.state = ApiClient.convertToType(data["state"], "['String']");
    }
    if (data.hasOwnProperty("tags")) {
      object.tags = ApiClient.convertToType(data["tags"], "['String']");
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
   * @return { module:model/ReportEmbedded }
   */
  getEmbedded() {
    return this.embedded;
  }

  /**
   * @param { module:model/ReportEmbedded } embedded
   */
  setEmbedded(embedded) {
    this.embedded = embedded;
  }
  /**
   * @return { module:model/ReportLinks }
   */
  getLinks() {
    return this.links;
  }

  /**
   * @param { module:model/ReportLinks } links
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
  getDescription() {
    return this.description;
  }

  /**
   * @param { String } description
   */
  setDescription(description) {
    this.description = description;
  }
  /**
   * @return { Date }
   */
  getDueAt() {
    return this.dueAt;
  }

  /**
   * @param { Date } dueAt
   */
  setDueAt(dueAt) {
    this.dueAt = dueAt;
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
  getIdentificationNumber() {
    return this.identificationNumber;
  }

  /**
   * @param { String } identificationNumber
   */
  setIdentificationNumber(identificationNumber) {
    this.identificationNumber = identificationNumber;
  }
  /**
   * @return { Number }
   */
  getPriority() {
    return this.priority;
  }

  /**
   * @param { Number } priority
   */
  setPriority(priority) {
    this.priority = priority;
  }
  /**
   * @return { String }
   */
  getReference() {
    return this.reference;
  }

  /**
   * @param { String } reference
   */
  setReference(reference) {
    this.reference = reference;
  }
  /**
   * @return { Array.<String> }
   */
  getState() {
    return this.state;
  }

  /**
   * @param { Array.<String> } state
   */
  setState(state) {
    this.state = state;
  }
  /**
   * @return { Array.<String> }
   */
  getTags() {
    return this.tags;
  }

  /**
   * @param { Array.<String> } tags
   */
  setTags(tags) {
    this.tags = tags;
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
