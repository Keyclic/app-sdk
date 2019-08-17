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
import DelegationLinksCreatedBy from "./DelegationLinksCreatedBy";
import DelegationLinksFrom from "./DelegationLinksFrom";
import DelegationLinksReport from "./DelegationLinksReport";
import DelegationLinksSelf from "./DelegationLinksSelf";
import DelegationLinksTo from "./DelegationLinksTo";

/**
 * The DelegationLinks model module.
 * @module model/DelegationLinks
 */
export default class DelegationLinks {
  /**
     * Constructs a new "DelegationLinks".
     * @alias module:model/DelegationLinks
     * @class
    
     */
  constructor() {
    this.createdBy = null;
    this.from = null;
    this.report = null;
    this.self = null;
    this.to = null;

    this.createdByType = DelegationLinksCreatedBy;
    this.fromType = DelegationLinksFrom;
    this.reportType = DelegationLinksReport;
    this.selfType = DelegationLinksSelf;
    this.toType = DelegationLinksTo;
  }

  /**
   * Constructs a "DelegationLinks" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/DelegationLinks } object Optional instance to populate.
   * @return { module:model/DelegationLinks } The populated "DelegationLinks" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new DelegationLinks();
    }

    if (data.hasOwnProperty("createdBy")) {
      object.createdBy = ApiClient.convertToType(
        data["createdBy"],
        object.createdByType
      );
    }
    if (data.hasOwnProperty("from")) {
      object.from = ApiClient.convertToType(data["from"], object.fromType);
    }
    if (data.hasOwnProperty("report")) {
      object.report = ApiClient.convertToType(
        data["report"],
        object.reportType
      );
    }
    if (data.hasOwnProperty("self")) {
      object.self = ApiClient.convertToType(data["self"], object.selfType);
    }
    if (data.hasOwnProperty("to")) {
      object.to = ApiClient.convertToType(data["to"], object.toType);
    }

    return object;
  }
}