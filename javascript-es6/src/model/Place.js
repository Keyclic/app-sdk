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
import PlaceEmbedded from "./PlaceEmbedded";
import PlaceGeoShape from "./PlaceGeoShape";
import PlaceLinks from "./PlaceLinks";
import PlacePreferences from "./PlacePreferences";

/**
 * The Place model module.
 * @module model/Place
 */
export default class Place {
  /**
     * Constructs a new "Place".
     * @alias module:model/Place
     * @class
    
     * @param name { String }
    
     */
  constructor(name) {
    this.embedded = null;
    this.links = null;
    this.branchCode = null;
    this.createdAt = null;
    this.description = null;
    this.geo = null;
    this.id = null;
    this.name = name;
    this.preferences = null;
    this.type = null;
    this.updatedAt = null;

    this.embeddedType = PlaceEmbedded;
    this.linksType = PlaceLinks;
    this.geoType = PlaceGeoShape;
    this.preferencesType = PlacePreferences;
  }

  /**
   * Constructs a "Place" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/Place } object Optional instance to populate.
   * @return { module:model/Place } The populated "Place" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new Place();
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
    if (data.hasOwnProperty("branchCode")) {
      object.branchCode = ApiClient.convertToType(data["branchCode"], "String");
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
    if (data.hasOwnProperty("geo")) {
      object.geo = ApiClient.convertToType(data["geo"], object.geoType);
    }
    if (data.hasOwnProperty("id")) {
      object.id = ApiClient.convertToType(data["id"], "String");
    }
    if (data.hasOwnProperty("name")) {
      object.name = ApiClient.convertToType(data["name"], "String");
    }
    if (data.hasOwnProperty("preferences")) {
      object.preferences = ApiClient.convertToType(
        data["preferences"],
        object.preferencesType
      );
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
   * @return { module:model/PlaceEmbedded }
   */
  getEmbedded() {
    return this.embedded;
  }

  /**
   * @param { module:model/PlaceEmbedded } embedded
   */
  setEmbedded(embedded) {
    this.embedded = embedded;
  }
  /**
   * @return { module:model/PlaceLinks }
   */
  getLinks() {
    return this.links;
  }

  /**
   * @param { module:model/PlaceLinks } links
   */
  setLinks(links) {
    this.links = links;
  }
  /**
   * @return { String }
   */
  getBranchCode() {
    return this.branchCode;
  }

  /**
   * @param { String } branchCode
   */
  setBranchCode(branchCode) {
    this.branchCode = branchCode;
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
   * @return { module:model/PlaceGeoShape }
   */
  getGeo() {
    return this.geo;
  }

  /**
   * @param { module:model/PlaceGeoShape } geo
   */
  setGeo(geo) {
    this.geo = geo;
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
  getName() {
    return this.name;
  }

  /**
   * @param { String } name
   */
  setName(name) {
    this.name = name;
  }
  /**
   * @return { module:model/PlacePreferences }
   */
  getPreferences() {
    return this.preferences;
  }

  /**
   * @param { module:model/PlacePreferences } preferences
   */
  setPreferences(preferences) {
    this.preferences = preferences;
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
