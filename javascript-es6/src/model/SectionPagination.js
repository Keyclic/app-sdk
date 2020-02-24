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
import Pagination from "./Pagination";
import PaginationLinks from "./PaginationLinks";
import SectionCollection from "./SectionCollection";

/**
 * The SectionPagination model module.
 * @module model/SectionPagination
 */
export default class SectionPagination extends Pagination {
  /**
     * Constructs a new "SectionPagination".
     * @alias module:model/SectionPagination
     * @class
    
     */
  constructor() {
    super();

    this.embedded = null;

    this.embeddedType = SectionCollection;
  }

  /**
   * Constructs a "SectionPagination" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/SectionPagination } object Optional instance to populate.
   * @return { module:model/SectionPagination } The populated "SectionPagination" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new SectionPagination();
    }

    object = super.constructFromData(data, object);

    if (data.hasOwnProperty("_embedded")) {
      object.embedded = ApiClient.convertToType(
        data["_embedded"],
        object.embeddedType
      );
    }

    return object;
  }

  /**
   * @return { module:model/SectionCollection }
   */
  getEmbedded() {
    return this.embedded;
  }

  /**
   * @param { module:model/SectionCollection } embedded
   */
  setEmbedded(embedded) {
    this.embedded = embedded;
  }
}
