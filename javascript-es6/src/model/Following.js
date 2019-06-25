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
 * The Following model module.
 * @module model/Following
 */
export default class Following {
  /**
     * Constructs a new "Following".
     * @alias module:model/Following
     * @class
    
     */
  constructor() {
    this.createdAt = null;
    this.feedId = null;
    this.targetId = null;
    this.updatedAt = null;
  }

  /**
   * Constructs a "Following" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/Following } object Optional instance to populate.
   * @return { module:model/Following } The populated "Following" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new Following();
    }

    if (data.hasOwnProperty("created_at")) {
      object.createdAt = ApiClient.convertToType(data["created_at"], "String");
    }
    if (data.hasOwnProperty("feed_id")) {
      object.feedId = ApiClient.convertToType(data["feed_id"], "String");
    }
    if (data.hasOwnProperty("target_id")) {
      object.targetId = ApiClient.convertToType(data["target_id"], "String");
    }
    if (data.hasOwnProperty("updated_at")) {
      object.updatedAt = ApiClient.convertToType(data["updated_at"], "String");
    }

    return object;
  }
}
