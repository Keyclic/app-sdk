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

/**
 * The FeedbackGeoCoordinatesPoint model module.
 * @module model/FeedbackGeoCoordinatesPoint
 */
export default class FeedbackGeoCoordinatesPoint {
  /**
     * Constructs a new "FeedbackGeoCoordinatesPoint".
     * @alias module:model/FeedbackGeoCoordinatesPoint
     * @class
    
     * @param latitude { Number }
    
     * @param longitude { Number }
    
     * @param srid { Number }
    
     */
  constructor(
    latitude,

    longitude,

    srid
  ) {
    this.latitude = latitude;
    this.longitude = longitude;
    this.srid = srid;
  }

  /**
   * Constructs a "FeedbackGeoCoordinatesPoint" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/FeedbackGeoCoordinatesPoint } object Optional instance to populate.
   * @return { module:model/FeedbackGeoCoordinatesPoint } The populated "FeedbackGeoCoordinatesPoint" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new FeedbackGeoCoordinatesPoint();
    }

    if (data.hasOwnProperty("latitude")) {
      object.latitude = ApiClient.convertToType(data["latitude"], "Number");
    }
    if (data.hasOwnProperty("longitude")) {
      object.longitude = ApiClient.convertToType(data["longitude"], "Number");
    }
    if (data.hasOwnProperty("srid")) {
      object.srid = ApiClient.convertToType(data["srid"], "Number");
    }

    return object;
  }
}