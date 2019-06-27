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
import Review from "../model/Review";
import ReviewData from "../model/ReviewData";
import ReviewPagination from "../model/ReviewPagination";

/**
 * Review service.
 * @module api/ReviewApi
 */
export default class ReviewApi extends ApiClient {
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
   * Retrieve all Review resources.
   * @param { String } xKeyclicApp
   * @param { String } feedback The identifier of the resource formatted as GUID string.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { ReviewPagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { String } xKeyclicAppVersion
   * @param { module:model/Date } after
   * @param { module:model/Date } before
   * @param { module:model/String } order   (default to desc)
   * @param { Number } page Page of the overview.  (default to 1)
   * @param { Number } limit Page of the overview.  (default to 10)
   */
  cgetReviewsByFeedback(returnType = null, options, credentials) {
    if (returnType === null) {
      returnType = ReviewPagination;
    }

    let {
      xKeyclicApp,
      feedback,
      acceptLanguage,
      xKeyclicAppVersion,
      after,
      before,
      order,
      page,
      limit
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling cgetReviewsByFeedback'
      );
    }

    // verify the required parameter 'feedback' is set
    if (typeof feedback === "undefined" || feedback === null) {
      throw new window.Error(
        'Missing the required parameter "feedback" when calling cgetReviewsByFeedback'
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

    // verify the null value of parameter 'after'
    if (typeof after === "undefined") {
      after = null;
    }

    // verify the null value of parameter 'before'
    if (typeof before === "undefined") {
      before = null;
    }

    if (typeof credentials === "undefined" || credentials === null) {
      throw new window.Error(
        'Missing the required parameter "credentials" when calling cgetReviewsByFeedback'
      );
    }

    let pathParams = {
      feedback: feedback
    };

    let bodyParam = null;

    let queryParams = {
      after: after,
      before: before,
      order: order,
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
      "/feedbacks/{feedback}/reviews",
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
   * Retrieve one Review resource.
   * @param { String } xKeyclicApp
   * @param { String } review The identifier of the resource formatted as GUID string.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { Review }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { String } xKeyclicAppVersion
   */
  getReview(returnType = null, options, credentials) {
    if (returnType === null) {
      returnType = Review;
    }

    let { xKeyclicApp, review, acceptLanguage, xKeyclicAppVersion } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling getReview'
      );
    }

    // verify the required parameter 'review' is set
    if (typeof review === "undefined" || review === null) {
      throw new window.Error(
        'Missing the required parameter "review" when calling getReview'
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
        'Missing the required parameter "credentials" when calling getReview'
      );
    }

    let pathParams = {
      review: review
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
      "/reviews/{review}",
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
   * Create one Review resource.
   * @param { String } xKeyclicApp
   * @param { module:model/ReviewData } reviewData
   * @param { String } reviewRequest The identifier of the resource formatted as GUID string.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { Review }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { String } xKeyclicAppVersion
   */
  postReviewByReviewRequest(returnType = null, options, credentials) {
    if (returnType === null) {
      returnType = Review;
    }

    let {
      xKeyclicApp,
      reviewData,
      reviewRequest,
      acceptLanguage,
      xKeyclicAppVersion
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling postReviewByReviewRequest'
      );
    }

    // verify the required parameter 'reviewData' is set
    if (typeof reviewData === "undefined" || reviewData === null) {
      throw new window.Error(
        'Missing the required parameter "reviewData" when calling postReviewByReviewRequest'
      );
    }

    // verify the required parameter 'reviewRequest' is set
    if (typeof reviewRequest === "undefined" || reviewRequest === null) {
      throw new window.Error(
        'Missing the required parameter "reviewRequest" when calling postReviewByReviewRequest'
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
        'Missing the required parameter "credentials" when calling postReviewByReviewRequest'
      );
    }

    let pathParams = {
      reviewRequest: reviewRequest
    };

    let bodyParam = reviewData;

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
      "/review-requests/{reviewRequest}/reviews",
      "POST",
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
