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
import OperationLinksCreatedBy from "./OperationLinksCreatedBy";
import OperationLinksFeedback from "./OperationLinksFeedback";
import OperationLinksImage from "./OperationLinksImage";
import OperationLinksImages from "./OperationLinksImages";
import OperationLinksOperator from "./OperationLinksOperator";
import OperationLinksReport from "./OperationLinksReport";
import OperationLinksSelf from "./OperationLinksSelf";
import OperationLinksTracking from "./OperationLinksTracking";

/**
 * The OperationLinks model module.
 * @module model/OperationLinks
 */
export default class OperationLinks {
  /**
     * Constructs a new "OperationLinks".
     * @alias module:model/OperationLinks
     * @class
    
     */
  constructor() {
    this.createdBy = null;
    this.feedback = null;
    this.image = null;
    this.images = [];
    this.operator = null;
    this.report = null;
    this.self = null;
    this.tracking = null;

    this.createdByType = OperationLinksCreatedBy;
    this.feedbackType = OperationLinksFeedback;
    this.imageType = OperationLinksImage;
    this.imagesType = OperationLinksImages;
    this.operatorType = OperationLinksOperator;
    this.reportType = OperationLinksReport;
    this.selfType = OperationLinksSelf;
    this.trackingType = OperationLinksTracking;
  }

  /**
   * Constructs a "OperationLinks" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/OperationLinks } object Optional instance to populate.
   * @return { module:model/OperationLinks } The populated "OperationLinks" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new OperationLinks();
    }

    if (data.hasOwnProperty("createdBy")) {
      object.createdBy = ApiClient.convertToType(
        data["createdBy"],
        object.createdByType
      );
    }
    if (data.hasOwnProperty("feedback")) {
      object.feedback = ApiClient.convertToType(
        data["feedback"],
        object.feedbackType
      );
    }
    if (data.hasOwnProperty("image")) {
      object.image = ApiClient.convertToType(data["image"], object.imageType);
    }
    if (data.hasOwnProperty("images")) {
      object.images = ApiClient.convertToType(data["images"], [
        object.imagesType
      ]);
    }
    if (data.hasOwnProperty("operator")) {
      object.operator = ApiClient.convertToType(
        data["operator"],
        object.operatorType
      );
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
    if (data.hasOwnProperty("tracking")) {
      object.tracking = ApiClient.convertToType(
        data["tracking"],
        object.trackingType
      );
    }

    return object;
  }
}