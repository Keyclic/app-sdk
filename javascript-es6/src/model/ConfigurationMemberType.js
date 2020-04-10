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
import MemberTypeRole from "./MemberTypeRole";

/**
 * The ConfigurationMemberType model module.
 * @module model/ConfigurationMemberType
 */
export default class ConfigurationMemberType {
  /**
     * Constructs a new "ConfigurationMemberType".
     * @alias module:model/ConfigurationMemberType
     * @class
    
     */
  constructor() {
    this.id = null;
    this.roles = [];
    this.type = null;

    this.rolesType = MemberTypeRole;
  }

  /**
   * Constructs a "ConfigurationMemberType" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ConfigurationMemberType } object Optional instance to populate.
   * @return { module:model/ConfigurationMemberType } The populated "ConfigurationMemberType" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new ConfigurationMemberType();
    }

    if (data.hasOwnProperty("id")) {
      object.id = ApiClient.convertToType(data["id"], "String");
    }
    if (data.hasOwnProperty("roles")) {
      object.roles = ApiClient.convertToType(data["roles"], [object.rolesType]);
    }
    if (data.hasOwnProperty("type")) {
      object.type = ApiClient.convertToType(data["type"], "String");
    }

    return object;
  }

  /**
   * @return { String }
   */
  getId() {
    return this.id;
  }

  /**
   * @return { Array.<module:model/MemberTypeRole> }
   */
  getRoles() {
    return this.roles;
  }

  /**
   * @param { Array.<module:model/MemberTypeRole> } roles
   */
  setRoles(roles) {
    this.roles = roles;
  }
  /**
   * @return { String }
   */
  getType() {
    return this.type;
  }
}