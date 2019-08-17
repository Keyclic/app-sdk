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
import Person from "./Person";

/**
 * The PersonCollection model module.
 * @module model/PersonCollection
 */
export default class PersonCollection {
  /**
     * Constructs a new "PersonCollection".
     * @alias module:model/PersonCollection
     * @class
    
     */
  constructor() {
    this.items = [];

    this.itemsType = Person;
  }

  /**
   * Constructs a "PersonCollection" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/PersonCollection } object Optional instance to populate.
   * @return { module:model/PersonCollection } The populated "PersonCollection" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new PersonCollection();
    }

    if (data.hasOwnProperty("items")) {
      object.items = ApiClient.convertToType(data["items"], [object.itemsType]);
    }

    return object;
  }
}