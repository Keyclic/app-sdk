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
 * The RegisterData model module.
 * @module model/RegisterData
 */
export default class RegisterData {
  /**
     * Constructs a new "RegisterData".
     * @alias module:model/RegisterData
     * @class
    
     * @param email { String }
    
     * @param password { String }
    
     */
  constructor(
    email,

    password
  ) {
    this.email = email;
    this.password = password;
  }

  /**
   * Constructs a "RegisterData" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/RegisterData } object Optional instance to populate.
   * @return { module:model/RegisterData } The populated "RegisterData" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new RegisterData();
    }

    if (data.hasOwnProperty("email")) {
      object.email = ApiClient.convertToType(data["email"], "String");
    }
    if (data.hasOwnProperty("password")) {
      object.password = ApiClient.convertToType(data["password"], "String");
    }

    return object;
  }
}