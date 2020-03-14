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
 * The Role model module.
 * @module model/Role
 */
export default class Role {
  /**
     * Constructs a new "Role".
     * @alias module:model/Role
     * @class
    
     * @param key { String }
    
     * @param name { String }
    
     */
  constructor(
    key,

    name
  ) {
    this.createdAt = null;
    this.description = null;
    this.id = null;
    this.key = key;
    this.name = name;
    this.permissions = [];
    this.type = null;
    this.updatedAt = null;
  }

  /**
   * Constructs a "Role" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/Role } object Optional instance to populate.
   * @return { module:model/Role } The populated "Role" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new Role();
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
    if (data.hasOwnProperty("id")) {
      object.id = ApiClient.convertToType(data["id"], "String");
    }
    if (data.hasOwnProperty("key")) {
      object.key = ApiClient.convertToType(data["key"], "String");
    }
    if (data.hasOwnProperty("name")) {
      object.name = ApiClient.convertToType(data["name"], "String");
    }
    if (data.hasOwnProperty("permissions")) {
      object.permissions = ApiClient.convertToType(
        data["permissions"],
        "['String']"
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
   * @return { String }
   */
  getId() {
    return this.id;
  }

  /**
   * @return { String }
   */
  getKey() {
    return this.key;
  }

  /**
   * @param { String } key
   */
  setKey(key) {
    this.key = key;
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
   * @return { Array.<String> }
   */
  getPermissions() {
    return this.permissions;
  }

  /**
   * @param { Array.<String> } permissions
   */
  setPermissions(permissions) {
    this.permissions = permissions;
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
