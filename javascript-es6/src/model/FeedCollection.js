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
import Feed from "./Feed";

/**
 * The FeedCollection model module.
 * @module model/FeedCollection
 */
export default class FeedCollection {
  /**
     * Constructs a new "FeedCollection".
     * @alias module:model/FeedCollection
     * @class
    
     */
  constructor() {
    this.items = [];

    this.itemsType = Feed;
  }

  /**
   * Constructs a "FeedCollection" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/FeedCollection } object Optional instance to populate.
   * @return { module:model/FeedCollection } The populated "FeedCollection" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new FeedCollection();
    }

    if (data.hasOwnProperty("items")) {
      object.items = ApiClient.convertToType(data["items"], [object.itemsType]);
    }

    return object;
  }
}
