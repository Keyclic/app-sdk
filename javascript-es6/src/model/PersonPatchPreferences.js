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
import PersonPatchPreferencesNotification from "./PersonPatchPreferencesNotification";

/**
 * The PersonPatchPreferences model module.
 * @module model/PersonPatchPreferences
 */
export default class PersonPatchPreferences {
  /**
     * Constructs a new "PersonPatchPreferences".
     * @alias module:model/PersonPatchPreferences
     * @class
    
     */
  constructor() {
    this.notification = null;

    this.notificationType = PersonPatchPreferencesNotification;
  }

  /**
   * Constructs a "PersonPatchPreferences" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/PersonPatchPreferences } object Optional instance to populate.
   * @return { module:model/PersonPatchPreferences } The populated "PersonPatchPreferences" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new PersonPatchPreferences();
    }

    if (data.hasOwnProperty("notification")) {
      object.notification = ApiClient.convertToType(
        data["notification"],
        object.notificationType
      );
    }

    return object;
  }

  /**
   * @return { module:model/PersonPatchPreferencesNotification }
   */
  getNotification() {
    return this.notification;
  }

  /**
   * @param { module:model/PersonPatchPreferencesNotification } notification
   */
  setNotification(notification) {
    this.notification = notification;
  }
}
