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
import Node from "./Node";
import NodePath from "./NodePath";

/**
 * The NodeEmbedded model module.
 * @module model/NodeEmbedded
 */
export default class NodeEmbedded {
  /**
     * Constructs a new "NodeEmbedded".
     * @alias module:model/NodeEmbedded
     * @class
    
     */
  constructor() {
    this.path = [];
    this.children = [];

    this.pathType = NodePath;
    this.childrenType = Node;
  }

  /**
   * Constructs a "NodeEmbedded" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/NodeEmbedded } object Optional instance to populate.
   * @return { module:model/NodeEmbedded } The populated "NodeEmbedded" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new NodeEmbedded();
    }

    if (data.hasOwnProperty("path")) {
      object.path = ApiClient.convertToType(data["path"], [object.pathType]);
    }
    if (data.hasOwnProperty("children")) {
      object.children = ApiClient.convertToType(data["children"], [
        object.childrenType
      ]);
    }

    return object;
  }
}