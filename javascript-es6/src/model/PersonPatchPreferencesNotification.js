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
 * The PersonPatchPreferencesNotification model module.
 * @module model/PersonPatchPreferencesNotification
 */
export default class PersonPatchPreferencesNotification {
  /**
     * Constructs a new "PersonPatchPreferencesNotification".
     * @alias module:model/PersonPatchPreferencesNotification
     * @class
    
     */
  constructor() {
    this.mail = null;
    this.push = null;
  }

  /**
   * Constructs a "PersonPatchPreferencesNotification" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/PersonPatchPreferencesNotification } object Optional instance to populate.
   * @return { module:model/PersonPatchPreferencesNotification } The populated "PersonPatchPreferencesNotification" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new PersonPatchPreferencesNotification();
    }

    if (data.hasOwnProperty("mail")) {
      object.mail = ApiClient.convertToType(data["mail"], "String");
    }
    if (data.hasOwnProperty("push")) {
      object.push = ApiClient.convertToType(data["push"], "String");
    }

    return object;
  }

  /**
   * @return { String }
   */
  getMail() {
    return this.mail;
  }

  /**
   * @param { String } mail
   */
  setMail(mail) {
    this.mail = mail;
  }
  /**
   * @return { String }
   */
  getPush() {
    return this.push;
  }

  /**
   * @param { String } push
   */
  setPush(push) {
    this.push = push;
  }
}
