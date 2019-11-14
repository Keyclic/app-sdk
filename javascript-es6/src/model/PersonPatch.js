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
import PersonPatchAgreement from "./PersonPatchAgreement";
import PersonPatchPreferences from "./PersonPatchPreferences";

/**
 * The PersonPatch model module.
 * @module model/PersonPatch
 */
export default class PersonPatch {
  /**
     * Constructs a new "PersonPatch".
     * @alias module:model/PersonPatch
     * @class
    
     */
  constructor() {
    this.agreement = null;
    this.givenName = null;
    this.familyName = null;
    this.email = null;
    this.jobTitle = null;
    this.image = null;
    this.optIn = null;
    this.preferences = null;
    this.telephone = null;

    this.agreementType = PersonPatchAgreement;
    this.preferencesType = PersonPatchPreferences;
  }

  /**
   * Constructs a "PersonPatch" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/PersonPatch } object Optional instance to populate.
   * @return { module:model/PersonPatch } The populated "PersonPatch" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new PersonPatch();
    }

    if (data.hasOwnProperty("agreement")) {
      object.agreement = ApiClient.convertToType(
        data["agreement"],
        object.agreementType
      );
    }
    if (data.hasOwnProperty("givenName")) {
      object.givenName = ApiClient.convertToType(data["givenName"], "String");
    }
    if (data.hasOwnProperty("familyName")) {
      object.familyName = ApiClient.convertToType(data["familyName"], "String");
    }
    if (data.hasOwnProperty("email")) {
      object.email = ApiClient.convertToType(data["email"], "String");
    }
    if (data.hasOwnProperty("jobTitle")) {
      object.jobTitle = ApiClient.convertToType(data["jobTitle"], "String");
    }
    if (data.hasOwnProperty("image")) {
      object.image = ApiClient.convertToType(data["image"], "String");
    }
    if (data.hasOwnProperty("optIn")) {
      object.optIn = ApiClient.convertToType(data["optIn"], "Boolean");
    }
    if (data.hasOwnProperty("preferences")) {
      object.preferences = ApiClient.convertToType(
        data["preferences"],
        object.preferencesType
      );
    }
    if (data.hasOwnProperty("telephone")) {
      object.telephone = ApiClient.convertToType(data["telephone"], "String");
    }

    return object;
  }

  /**
   * @return { module:model/PersonPatchAgreement }
   */
  getAgreement() {
    return this.agreement;
  }

  /**
   * @param { module:model/PersonPatchAgreement } agreement
   */
  setAgreement(agreement) {
    this.agreement = agreement;
  }
  /**
   * @return { String }
   */
  getGivenName() {
    return this.givenName;
  }

  /**
   * @param { String } givenName
   */
  setGivenName(givenName) {
    this.givenName = givenName;
  }
  /**
   * @return { String }
   */
  getFamilyName() {
    return this.familyName;
  }

  /**
   * @param { String } familyName
   */
  setFamilyName(familyName) {
    this.familyName = familyName;
  }
  /**
   * @return { String }
   */
  getEmail() {
    return this.email;
  }

  /**
   * @param { String } email
   */
  setEmail(email) {
    this.email = email;
  }
  /**
   * @return { String }
   */
  getJobTitle() {
    return this.jobTitle;
  }

  /**
   * @param { String } jobTitle
   */
  setJobTitle(jobTitle) {
    this.jobTitle = jobTitle;
  }
  /**
   * @return { String }
   */
  getImage() {
    return this.image;
  }

  /**
   * @param { String } image
   */
  setImage(image) {
    this.image = image;
  }
  /**
   * @return { Boolean }
   */
  getOptIn() {
    return this.optIn;
  }

  /**
   * @param { Boolean } optIn
   */
  setOptIn(optIn) {
    this.optIn = optIn;
  }
  /**
   * @return { module:model/PersonPatchPreferences }
   */
  getPreferences() {
    return this.preferences;
  }

  /**
   * @param { module:model/PersonPatchPreferences } preferences
   */
  setPreferences(preferences) {
    this.preferences = preferences;
  }
  /**
   * @return { String }
   */
  getTelephone() {
    return this.telephone;
  }

  /**
   * @param { String } telephone
   */
  setTelephone(telephone) {
    this.telephone = telephone;
  }
}
