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
import ConditionListCondition from "./ConditionListCondition";

/**
 * The PropertyConditionList model module.
 * @module model/PropertyConditionList
 */
export default class PropertyConditionList {
  /**
     * Constructs a new "PropertyConditionList".
     * @alias module:model/PropertyConditionList
     * @class
    
     */
  constructor() {
    this.allOf = [];

    this.allOfType = ConditionListCondition;
  }

  /**
   * Constructs a "PropertyConditionList" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/PropertyConditionList } object Optional instance to populate.
   * @return { module:model/PropertyConditionList } The populated "PropertyConditionList" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new PropertyConditionList();
    }

    if (data.hasOwnProperty("allOf")) {
      object.allOf = ApiClient.convertToType(data["allOf"], [object.allOfType]);
    }

    return object;
  }

  /**
   * @return { Array.<module:model/ConditionListCondition> }
   */
  getAllOf() {
    return this.allOf;
  }

  /**
   * @param { Array.<module:model/ConditionListCondition> } allOf
   */
  setAllOf(allOf) {
    this.allOf = allOf;
  }
}