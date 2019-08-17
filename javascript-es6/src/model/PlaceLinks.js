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
import PlaceLinksContainedInPlace from "./PlaceLinksContainedInPlace";
import PlaceLinksContainsPlaces from "./PlaceLinksContainsPlaces";
import PlaceLinksOrganization from "./PlaceLinksOrganization";
import PlaceLinksSelf from "./PlaceLinksSelf";

/**
 * The PlaceLinks model module.
 * @module model/PlaceLinks
 */
export default class PlaceLinks {
  /**
     * Constructs a new "PlaceLinks".
     * @alias module:model/PlaceLinks
     * @class
    
     */
  constructor() {
    this.containedInPlace = null;
    this.containsPlaces = null;
    this.organization = null;
    this.self = null;

    this.containedInPlaceType = PlaceLinksContainedInPlace;
    this.containsPlacesType = PlaceLinksContainsPlaces;
    this.organizationType = PlaceLinksOrganization;
    this.selfType = PlaceLinksSelf;
  }

  /**
   * Constructs a "PlaceLinks" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/PlaceLinks } object Optional instance to populate.
   * @return { module:model/PlaceLinks } The populated "PlaceLinks" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new PlaceLinks();
    }

    if (data.hasOwnProperty("containedInPlace")) {
      object.containedInPlace = ApiClient.convertToType(
        data["containedInPlace"],
        object.containedInPlaceType
      );
    }
    if (data.hasOwnProperty("containsPlaces")) {
      object.containsPlaces = ApiClient.convertToType(
        data["containsPlaces"],
        object.containsPlacesType
      );
    }
    if (data.hasOwnProperty("organization")) {
      object.organization = ApiClient.convertToType(
        data["organization"],
        object.organizationType
      );
    }
    if (data.hasOwnProperty("self")) {
      object.self = ApiClient.convertToType(data["self"], object.selfType);
    }

    return object;
  }
}