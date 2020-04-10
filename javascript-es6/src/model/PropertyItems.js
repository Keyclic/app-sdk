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
import ItemsChoice from "./ItemsChoice";

/**
 * The PropertyItems model module.
 * @module model/PropertyItems
 */
export default class PropertyItems {
  /**
     * Constructs a new "PropertyItems".
     * @alias module:model/PropertyItems
     * @class
    
     */
  constructor() {
    this.oneOf = [];

    this.oneOfType = ItemsChoice;
  }

  /**
   * Constructs a "PropertyItems" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/PropertyItems } object Optional instance to populate.
   * @return { module:model/PropertyItems } The populated "PropertyItems" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new PropertyItems();
    }

    if (data.hasOwnProperty("oneOf")) {
      object.oneOf = ApiClient.convertToType(data["oneOf"], [object.oneOfType]);
    }

    return object;
  }

  /**
   * @return { Array.<module:model/ItemsChoice> }
   */
  getOneOf() {
    return this.oneOf;
  }

  /**
   * @param { Array.<module:model/ItemsChoice> } oneOf
   */
  setOneOf(oneOf) {
    this.oneOf = oneOf;
  }
}