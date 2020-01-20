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
 * The OrganizationPatchPreferencesNotificationReport model module.
 * @module model/OrganizationPatchPreferencesNotificationReport
 */
export default class OrganizationPatchPreferencesNotificationReport {
  /**
     * Constructs a new "OrganizationPatchPreferencesNotificationReport".
     * @alias module:model/OrganizationPatchPreferencesNotificationReport
     * @class
    
     */
  constructor() {
    this.accepted = null;
    this.refused = null;
  }

  /**
   * Constructs a "OrganizationPatchPreferencesNotificationReport" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/OrganizationPatchPreferencesNotificationReport } object Optional instance to populate.
   * @return { module:model/OrganizationPatchPreferencesNotificationReport } The populated "OrganizationPatchPreferencesNotificationReport" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new OrganizationPatchPreferencesNotificationReport();
    }

    if (data.hasOwnProperty("accepted")) {
      object.accepted = ApiClient.convertToType(data["accepted"], "String");
    }
    if (data.hasOwnProperty("refused")) {
      object.refused = ApiClient.convertToType(data["refused"], "String");
    }

    return object;
  }

  /**
   * @return { String }
   */
  getAccepted() {
    return this.accepted;
  }

  /**
   * @param { String } accepted
   */
  setAccepted(accepted) {
    this.accepted = accepted;
  }
  /**
   * @return { String }
   */
  getRefused() {
    return this.refused;
  }

  /**
   * @param { String } refused
   */
  setRefused(refused) {
    this.refused = refused;
  }
}
