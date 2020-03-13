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
 * The CheckpointState model module.
 * @module model/CheckpointState
 */
export default class CheckpointState {
  /**
     * Constructs a new "CheckpointState".
     * @alias module:model/CheckpointState
     * @class
    
     */
  constructor() {
    this.allowAdd = null;
    this.allowDispatch = null;
    this.color = null;
    this.description = null;
    this.id = null;
    this.name = null;
    this.progression = null;
    this.type = null;
  }

  /**
   * Constructs a "CheckpointState" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/CheckpointState } object Optional instance to populate.
   * @return { module:model/CheckpointState } The populated "CheckpointState" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new CheckpointState();
    }

    if (data.hasOwnProperty("allowAdd")) {
      object.allowAdd = ApiClient.convertToType(data["allowAdd"], "Boolean");
    }
    if (data.hasOwnProperty("allowDispatch")) {
      object.allowDispatch = ApiClient.convertToType(
        data["allowDispatch"],
        "Boolean"
      );
    }
    if (data.hasOwnProperty("color")) {
      object.color = ApiClient.convertToType(data["color"], "String");
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
    if (data.hasOwnProperty("name")) {
      object.name = ApiClient.convertToType(data["name"], "String");
    }
    if (data.hasOwnProperty("progression")) {
      object.progression = ApiClient.convertToType(
        data["progression"],
        "Number"
      );
    }
    if (data.hasOwnProperty("type")) {
      object.type = ApiClient.convertToType(data["type"], "String");
    }

    return object;
  }

  /**
   * @return { Boolean }
   */
  getAllowAdd() {
    return this.allowAdd;
  }

  /**
   * @param { Boolean } allowAdd
   */
  setAllowAdd(allowAdd) {
    this.allowAdd = allowAdd;
  }
  /**
   * @return { Boolean }
   */
  getAllowDispatch() {
    return this.allowDispatch;
  }

  /**
   * @param { Boolean } allowDispatch
   */
  setAllowDispatch(allowDispatch) {
    this.allowDispatch = allowDispatch;
  }
  /**
   * @return { String }
   */
  getColor() {
    return this.color;
  }

  /**
   * @param { String } color
   */
  setColor(color) {
    this.color = color;
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
   * @return { Number }
   */
  getProgression() {
    return this.progression;
  }

  /**
   * @param { Number } progression
   */
  setProgression(progression) {
    this.progression = progression;
  }
  /**
   * @return { String }
   */
  getType() {
    return this.type;
  }
}
