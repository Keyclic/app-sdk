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
import Error from "../model/Error";
import Feedback from "../model/Feedback";
import FeedbackPagination from "../model/FeedbackPagination";

/**
 * Feedback service.
 * @module api/FeedbackApi
 */
export default class FeedbackApi extends ApiClient {
  /**
   * @class
   * { string } basePath To override basePath.
   * { object } headers Additional headers for the instance.
   * { int } timeout Number in seconds before timeout.
   */
  constructor(basePath = null, headers = null, timeout = null) {
    super(basePath, headers, timeout);
  }

  /**
   * Retrieve all Feedback resources.
   * @param { String } xKeyclicApp
   * @param { FeedbackPagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { String } xKeyclicAppVersion
   * @param { String } state   (default to DELIVERED)
   * @param { String } category The identifier of the resource.
   * @param { module:model/Date } after
   * @param { module:model/Date } before
   * @param { String } geoHash
   * @param { module:model/String } geoNear One latitude, one longitude and one radius (in meters) serialized and separated by a plus or a minus sign.
   * @param { module:model/String } order   (default to desc)
   * @param { String } organization The identifier of the resource.
   * @param { module:model/String } visibility   (default to VISIBILITY_PUBLIC)
   * @param { Number } page Page of the overview.  (default to 1)
   * @param { Number } limit Page of the overview.  (default to 10)
   */
  cgetFeedback(returnType = null, options) {
    if (returnType === null) {
      returnType = FeedbackPagination;
    }

    let {
      xKeyclicApp,
      acceptLanguage,
      xKeyclicAppVersion,
      state,
      category,
      after,
      before,
      geoHash,
      geoNear,
      order,
      organization,
      visibility,
      page,
      limit
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling cgetFeedback'
      );
    }

    // verify the default value of parameter 'acceptLanguage'
    if (typeof acceptLanguage === "undefined" || acceptLanguage === null) {
      acceptLanguage = "fr-FR";
    }

    // verify the default value of parameter 'state'
    if (typeof state === "undefined" || state === null) {
      state = "DELIVERED";
    }

    // verify the default value of parameter 'order'
    if (typeof order === "undefined" || order === null) {
      order = "desc";
    }

    // verify the default value of parameter 'visibility'
    if (typeof visibility === "undefined" || visibility === null) {
      visibility = "VISIBILITY_PUBLIC";
    }

    // verify the default value of parameter 'page'
    if (typeof page === "undefined" || page === null) {
      page = 1;
    }

    // verify the default value of parameter 'limit'
    if (typeof limit === "undefined" || limit === null) {
      limit = 10;
    }

    // verify the null value of parameter 'xKeyclicAppVersion'
    if (typeof xKeyclicAppVersion === "undefined") {
      xKeyclicAppVersion = null;
    }

    // verify the null value of parameter 'category'
    if (typeof category === "undefined") {
      category = null;
    }

    // verify the null value of parameter 'after'
    if (typeof after === "undefined") {
      after = null;
    }

    // verify the null value of parameter 'before'
    if (typeof before === "undefined") {
      before = null;
    }

    // verify the null value of parameter 'geoHash'
    if (typeof geoHash === "undefined") {
      geoHash = null;
    }

    // verify the null value of parameter 'geoNear'
    if (typeof geoNear === "undefined") {
      geoNear = null;
    }

    // verify the null value of parameter 'organization'
    if (typeof organization === "undefined") {
      organization = null;
    }

    let pathParams = {};

    let bodyParam = null;

    let queryParams = {
      state: state,
      category: category,
      after: after,
      before: before,
      "geo_hash[]": geoHash,
      geo_near: geoNear,
      order: order,
      organization: organization,
      "visibility[]": visibility,
      page: page,
      limit: limit
    };

    let headerParams = {
      "accept-language": acceptLanguage,
      "x-keyclic-app": xKeyclicApp,
      "x-keyclic-app-version": xKeyclicAppVersion
    };

    let credentialParams = null;

    let authNames = [];

    let contentTypes = ["application/json;charset=UTF-8"];

    let accepts = ["application/hal+json;charset=UTF-8"];

    return this.callApi(
      "/feedbacks",
      "GET",
      pathParams,
      queryParams,
      headerParams,
      bodyParam,
      authNames,
      credentialParams,
      contentTypes,
      accepts,
      returnType
    );
  }

  /**
   * Retrieve all Feedback resources.
   * @param { String } xKeyclicApp
   * @param { String } person The identifier of the resource.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { FeedbackPagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { String } xKeyclicAppVersion
   * @param { String } category The identifier of the resource.
   * @param { module:model/Date } after
   * @param { module:model/Date } before
   * @param { String } geoHash
   * @param { module:model/String } geoNear One latitude, one longitude and one radius (in meters) serialized and separated by a plus or a minus sign.
   * @param { module:model/String } order   (default to desc)
   * @param { String } organization The identifier of the resource.
   * @param { String } state
   * @param { module:model/String } visibility   (default to VISIBILITY_PUBLIC)
   * @param { Number } page Page of the overview.  (default to 1)
   * @param { Number } limit Page of the overview.  (default to 10)
   */
  cgetFeedbackByPerson(returnType = null, options, credentials) {
    if (returnType === null) {
      returnType = FeedbackPagination;
    }

    let {
      xKeyclicApp,
      person,
      acceptLanguage,
      xKeyclicAppVersion,
      category,
      after,
      before,
      geoHash,
      geoNear,
      order,
      organization,
      state,
      visibility,
      page,
      limit
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling cgetFeedbackByPerson'
      );
    }

    // verify the required parameter 'person' is set
    if (typeof person === "undefined" || person === null) {
      throw new window.Error(
        'Missing the required parameter "person" when calling cgetFeedbackByPerson'
      );
    }

    // verify the default value of parameter 'acceptLanguage'
    if (typeof acceptLanguage === "undefined" || acceptLanguage === null) {
      acceptLanguage = "fr-FR";
    }

    // verify the default value of parameter 'order'
    if (typeof order === "undefined" || order === null) {
      order = "desc";
    }

    // verify the default value of parameter 'visibility'
    if (typeof visibility === "undefined" || visibility === null) {
      visibility = "VISIBILITY_PUBLIC";
    }

    // verify the default value of parameter 'page'
    if (typeof page === "undefined" || page === null) {
      page = 1;
    }

    // verify the default value of parameter 'limit'
    if (typeof limit === "undefined" || limit === null) {
      limit = 10;
    }

    // verify the null value of parameter 'xKeyclicAppVersion'
    if (typeof xKeyclicAppVersion === "undefined") {
      xKeyclicAppVersion = null;
    }

    // verify the null value of parameter 'category'
    if (typeof category === "undefined") {
      category = null;
    }

    // verify the null value of parameter 'after'
    if (typeof after === "undefined") {
      after = null;
    }

    // verify the null value of parameter 'before'
    if (typeof before === "undefined") {
      before = null;
    }

    // verify the null value of parameter 'geoHash'
    if (typeof geoHash === "undefined") {
      geoHash = null;
    }

    // verify the null value of parameter 'geoNear'
    if (typeof geoNear === "undefined") {
      geoNear = null;
    }

    // verify the null value of parameter 'organization'
    if (typeof organization === "undefined") {
      organization = null;
    }

    // verify the null value of parameter 'state'
    if (typeof state === "undefined") {
      state = null;
    }

    if (typeof credentials === "undefined" || credentials === null) {
      throw new window.Error(
        'Missing the required parameter "credentials" when calling cgetFeedbackByPerson'
      );
    }

    let pathParams = {
      person: person
    };

    let bodyParam = null;

    let queryParams = {
      category: category,
      after: after,
      before: before,
      "geo_hash[]": geoHash,
      geo_near: geoNear,
      order: order,
      organization: organization,
      state: state,
      "visibility[]": visibility,
      page: page,
      limit: limit
    };

    let headerParams = {
      "accept-language": acceptLanguage,
      "x-keyclic-app": xKeyclicApp,
      "x-keyclic-app-version": xKeyclicAppVersion
    };

    let credentialParams = credentials;

    let authNames = ["bearer"];

    let contentTypes = ["application/json;charset=UTF-8"];

    let accepts = ["application/hal+json;charset=UTF-8"];

    return this.callApi(
      "/people/{person}/feedbacks",
      "GET",
      pathParams,
      queryParams,
      headerParams,
      bodyParam,
      authNames,
      credentialParams,
      contentTypes,
      accepts,
      returnType
    );
  }

  /**
   * Retrieve one Feedback resource.
   * @param { String } xKeyclicApp
   * @param { String } feedback The identifier of the resource.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { Feedback }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { String } xKeyclicAppVersion
   */
  getFeedback(returnType = null, options, credentials) {
    if (returnType === null) {
      returnType = Feedback;
    }

    let { xKeyclicApp, feedback, acceptLanguage, xKeyclicAppVersion } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling getFeedback'
      );
    }

    // verify the required parameter 'feedback' is set
    if (typeof feedback === "undefined" || feedback === null) {
      throw new window.Error(
        'Missing the required parameter "feedback" when calling getFeedback'
      );
    }

    // verify the default value of parameter 'acceptLanguage'
    if (typeof acceptLanguage === "undefined" || acceptLanguage === null) {
      acceptLanguage = "fr-FR";
    }

    // verify the null value of parameter 'xKeyclicAppVersion'
    if (typeof xKeyclicAppVersion === "undefined") {
      xKeyclicAppVersion = null;
    }

    if (typeof credentials === "undefined" || credentials === null) {
      throw new window.Error(
        'Missing the required parameter "credentials" when calling getFeedback'
      );
    }

    let pathParams = {
      feedback: feedback
    };

    let bodyParam = null;

    let queryParams = {};

    let headerParams = {
      "accept-language": acceptLanguage,
      "x-keyclic-app": xKeyclicApp,
      "x-keyclic-app-version": xKeyclicAppVersion
    };

    let credentialParams = credentials;

    let authNames = ["bearer"];

    let contentTypes = ["application/json;charset=UTF-8"];

    let accepts = ["application/hal+json;charset=UTF-8"];

    return this.callApi(
      "/feedbacks/{feedback}",
      "GET",
      pathParams,
      queryParams,
      headerParams,
      bodyParam,
      authNames,
      credentialParams,
      contentTypes,
      accepts,
      returnType
    );
  }
}