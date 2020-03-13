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
import ActivityPagination from "../model/ActivityPagination";
import CommentData from "../model/CommentData";
import Error from "../model/Error";
import Feedback from "../model/Feedback";
import FeedbackData from "../model/FeedbackData";
import FeedbackPagination from "../model/FeedbackPagination";
import FeedbackWorkflowTransitionData from "../model/FeedbackWorkflowTransitionData";
import ImageData from "../model/ImageData";
import ReviewPagination from "../model/ReviewPagination";
import Tracking from "../model/Tracking";

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
   * Retrieve all Comment resources.
   * @param { String } xKeyclicApp
   * @param { String } feedback The identifier of the resource.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { ActivityPagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { Date } xDateTime
   * @param { String } xKeyclicAppVersion
   * @param { Number } page Page of the overview.  (default to 1)
   * @param { Number } limit Page of the overview.  (default to 10)
   */
  cgetCommentsByFeedback(returnType = null, options, credentials = null) {
    if (returnType === null) {
      returnType = ActivityPagination;
    }

    let {
      xKeyclicApp,
      feedback,
      acceptLanguage,
      xDateTime,
      xKeyclicAppVersion,
      page,
      limit
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling cgetCommentsByFeedback'
      );
    }

    // verify the required parameter 'feedback' is set
    if (typeof feedback === "undefined" || feedback === null) {
      throw new window.Error(
        'Missing the required parameter "feedback" when calling cgetCommentsByFeedback'
      );
    }

    // verify the default value of parameter 'acceptLanguage'
    if (typeof acceptLanguage === "undefined" || acceptLanguage === null) {
      acceptLanguage = "fr-FR";
    }

    // verify the default value of parameter 'page'
    if (typeof page === "undefined" || page === null) {
      page = 1;
    }

    // verify the default value of parameter 'limit'
    if (typeof limit === "undefined" || limit === null) {
      limit = 10;
    }

    // verify the null value of parameter 'xDateTime'
    if (typeof xDateTime === "undefined") {
      xDateTime = null;
    }

    // verify the null value of parameter 'xKeyclicAppVersion'
    if (typeof xKeyclicAppVersion === "undefined") {
      xKeyclicAppVersion = null;
    }

    const pathParams = {
      feedback: feedback
    };

    const bodyParam = null;

    const queryParams = {
      page: page,
      limit: limit
    };

    let headerParams = {
      "accept-language": acceptLanguage,
      "x-date-time": xDateTime,
      "x-keyclic-app": xKeyclicApp,
      "x-keyclic-app-version": xKeyclicAppVersion
    };

    const credentialParams = credentials;

    let authNames = ["bearer"];

    let contentTypes = ["application/json;charset=UTF-8"];

    let accepts = ["application/hal+json;charset=UTF-8"];

    return this.callApi(
      "/feedbacks/{feedback}/comments",
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
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { FeedbackPagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { Date } xDateTime
   * @param { String } xKeyclicAppVersion
   * @param { String } state   (default to DELIVERED)
   * @param { String } category The identifier of the resource.
   * @param { module:model/Date } after
   * @param { module:model/Date } before
   * @param { Array.<String> } geoHash
   * @param { module:model/String } order   (default to desc)
   * @param { String } organization The identifier of the resource.
   * @param { module:model/String } visibility   (default to VISIBILITY_PUBLIC)
   * @param { Number } page Page of the overview.  (default to 1)
   * @param { Number } limit Page of the overview.  (default to 10)
   */
  cgetFeedback(returnType = null, options, credentials = null) {
    if (returnType === null) {
      returnType = FeedbackPagination;
    }

    let {
      xKeyclicApp,
      acceptLanguage,
      xDateTime,
      xKeyclicAppVersion,
      state,
      category,
      after,
      before,
      geoHash,
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

    // verify the null value of parameter 'xDateTime'
    if (typeof xDateTime === "undefined") {
      xDateTime = null;
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

    // verify the null value of parameter 'organization'
    if (typeof organization === "undefined") {
      organization = null;
    }

    const pathParams = {};

    const bodyParam = null;

    const queryParams = {
      state: state,
      category: category,
      after: after,
      before: before,
      "geo_hash[]": geoHash,
      order: order,
      organization: organization,
      "visibility[]": visibility,
      page: page,
      limit: limit
    };

    let headerParams = {
      "accept-language": acceptLanguage,
      "x-date-time": xDateTime,
      "x-keyclic-app": xKeyclicApp,
      "x-keyclic-app-version": xKeyclicAppVersion
    };

    const credentialParams = credentials;

    let authNames = ["bearer"];

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
   * Retrieve all Review resources.
   * @param { String } xKeyclicApp
   * @param { String } feedback The identifier of the resource.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { ReviewPagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { Date } xDateTime
   * @param { String } xKeyclicAppVersion
   * @param { module:model/Date } after
   * @param { module:model/Date } before
   * @param { module:model/String } order   (default to desc)
   * @param { Number } page Page of the overview.  (default to 1)
   * @param { Number } limit Page of the overview.  (default to 10)
   */
  cgetReviewsByFeedback(returnType = null, options, credentials = null) {
    if (returnType === null) {
      returnType = ReviewPagination;
    }

    let {
      xKeyclicApp,
      feedback,
      acceptLanguage,
      xDateTime,
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

    // verify the null value of parameter 'xDateTime'
    if (typeof xDateTime === "undefined") {
      xDateTime = null;
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

    const pathParams = {
      feedback: feedback
    };

    const bodyParam = null;

    const queryParams = {
      after: after,
      before: before,
      order: order,
      page: page,
      limit: limit
    };

    let headerParams = {
      "accept-language": acceptLanguage,
      "x-date-time": xDateTime,
      "x-keyclic-app": xKeyclicApp,
      "x-keyclic-app-version": xKeyclicAppVersion
    };

    const credentialParams = credentials;

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
   * Retrieve one Feedback resource.
   * @param { String } xKeyclicApp
   * @param { String } feedback The identifier of the resource.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { Feedback }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { Date } xDateTime
   * @param { String } xKeyclicAppVersion
   */
  getFeedback(returnType = null, options, credentials = null) {
    if (returnType === null) {
      returnType = Feedback;
    }

    let {
      xKeyclicApp,
      feedback,
      acceptLanguage,
      xDateTime,
      xKeyclicAppVersion
    } = options;

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

    // verify the null value of parameter 'xDateTime'
    if (typeof xDateTime === "undefined") {
      xDateTime = null;
    }

    // verify the null value of parameter 'xKeyclicAppVersion'
    if (typeof xKeyclicAppVersion === "undefined") {
      xKeyclicAppVersion = null;
    }

    const pathParams = {
      feedback: feedback
    };

    const bodyParam = null;

    const queryParams = {};

    let headerParams = {
      "accept-language": acceptLanguage,
      "x-date-time": xDateTime,
      "x-keyclic-app": xKeyclicApp,
      "x-keyclic-app-version": xKeyclicAppVersion
    };

    const credentialParams = credentials;

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

  /**
   * Retrieve one Tracking resource.
   * @param { String } xKeyclicApp
   * @param { String } feedback The identifier of the resource.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { Tracking }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { Date } xDateTime
   * @param { String } xKeyclicAppVersion
   */
  getTrackingByFeedback(returnType = null, options, credentials = null) {
    if (returnType === null) {
      returnType = Tracking;
    }

    let {
      xKeyclicApp,
      feedback,
      acceptLanguage,
      xDateTime,
      xKeyclicAppVersion
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling getTrackingByFeedback'
      );
    }

    // verify the required parameter 'feedback' is set
    if (typeof feedback === "undefined" || feedback === null) {
      throw new window.Error(
        'Missing the required parameter "feedback" when calling getTrackingByFeedback'
      );
    }

    // verify the default value of parameter 'acceptLanguage'
    if (typeof acceptLanguage === "undefined" || acceptLanguage === null) {
      acceptLanguage = "fr-FR";
    }

    // verify the null value of parameter 'xDateTime'
    if (typeof xDateTime === "undefined") {
      xDateTime = null;
    }

    // verify the null value of parameter 'xKeyclicAppVersion'
    if (typeof xKeyclicAppVersion === "undefined") {
      xKeyclicAppVersion = null;
    }

    const pathParams = {
      feedback: feedback
    };

    const bodyParam = null;

    const queryParams = {};

    let headerParams = {
      "accept-language": acceptLanguage,
      "x-date-time": xDateTime,
      "x-keyclic-app": xKeyclicApp,
      "x-keyclic-app-version": xKeyclicAppVersion
    };

    const credentialParams = credentials;

    let authNames = ["bearer"];

    let contentTypes = ["application/json;charset=UTF-8"];

    let accepts = ["application/hal+json;charset=UTF-8"];

    return this.callApi(
      "/feedbacks/{feedback}/tracking",
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
   * Create one Comment resource.
   * @param { String } xKeyclicApp
   * @param { module:model/CommentData } commentData
   * @param { String } feedback The identifier of the resource.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { Feedback }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { Date } xDateTime
   * @param { String } xKeyclicAppVersion
   */
  postCommentByFeedback(returnType = null, options, credentials = null) {
    if (returnType === null) {
      returnType = Feedback;
    }

    let {
      xKeyclicApp,
      commentData,
      feedback,
      acceptLanguage,
      xDateTime,
      xKeyclicAppVersion
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling postCommentByFeedback'
      );
    }

    // verify the required parameter 'commentData' is set
    if (typeof commentData === "undefined" || commentData === null) {
      throw new window.Error(
        'Missing the required parameter "commentData" when calling postCommentByFeedback'
      );
    }

    // verify the required parameter 'feedback' is set
    if (typeof feedback === "undefined" || feedback === null) {
      throw new window.Error(
        'Missing the required parameter "feedback" when calling postCommentByFeedback'
      );
    }

    // verify the default value of parameter 'acceptLanguage'
    if (typeof acceptLanguage === "undefined" || acceptLanguage === null) {
      acceptLanguage = "fr-FR";
    }

    // verify the null value of parameter 'xDateTime'
    if (typeof xDateTime === "undefined") {
      xDateTime = null;
    }

    // verify the null value of parameter 'xKeyclicAppVersion'
    if (typeof xKeyclicAppVersion === "undefined") {
      xKeyclicAppVersion = null;
    }

    const pathParams = {
      feedback: feedback
    };

    const bodyParam = commentData;

    const queryParams = {};

    let headerParams = {
      "accept-language": acceptLanguage,
      "x-date-time": xDateTime,
      "x-keyclic-app": xKeyclicApp,
      "x-keyclic-app-version": xKeyclicAppVersion
    };

    const credentialParams = credentials;

    let authNames = ["bearer"];

    let contentTypes = ["application/json;charset=UTF-8"];

    let accepts = ["application/hal+json;charset=UTF-8"];

    return this.callApi(
      "/feedbacks/{feedback}/comments",
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

  /**
   * Create one Image resource.
   * @param { String } xKeyclicApp
   * @param { module:model/ImageData } imageData
   * @param { String } feedback The identifier of the resource.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { Feedback }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { Date } xDateTime
   * @param { String } xKeyclicAppVersion
   */
  postImageByFeedback(returnType = null, options, credentials = null) {
    if (returnType === null) {
      returnType = Feedback;
    }

    let {
      xKeyclicApp,
      imageData,
      feedback,
      acceptLanguage,
      xDateTime,
      xKeyclicAppVersion
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling postImageByFeedback'
      );
    }

    // verify the required parameter 'imageData' is set
    if (typeof imageData === "undefined" || imageData === null) {
      throw new window.Error(
        'Missing the required parameter "imageData" when calling postImageByFeedback'
      );
    }

    // verify the required parameter 'feedback' is set
    if (typeof feedback === "undefined" || feedback === null) {
      throw new window.Error(
        'Missing the required parameter "feedback" when calling postImageByFeedback'
      );
    }

    // verify the default value of parameter 'acceptLanguage'
    if (typeof acceptLanguage === "undefined" || acceptLanguage === null) {
      acceptLanguage = "fr-FR";
    }

    // verify the null value of parameter 'xDateTime'
    if (typeof xDateTime === "undefined") {
      xDateTime = null;
    }

    // verify the null value of parameter 'xKeyclicAppVersion'
    if (typeof xKeyclicAppVersion === "undefined") {
      xKeyclicAppVersion = null;
    }

    const pathParams = {
      feedback: feedback
    };

    const bodyParam = imageData;

    const queryParams = {};

    let headerParams = {
      "accept-language": acceptLanguage,
      "x-date-time": xDateTime,
      "x-keyclic-app": xKeyclicApp,
      "x-keyclic-app-version": xKeyclicAppVersion
    };

    const credentialParams = credentials;

    let authNames = ["bearer"];

    let contentTypes = ["application/json;charset=UTF-8"];

    let accepts = ["application/hal+json;charset=UTF-8"];

    return this.callApi(
      "/feedbacks/{feedback}/images",
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

  /**
   * Create one Issue resource.
   * @param { String } xKeyclicApp
   * @param { module:model/FeedbackData } feedbackData
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { Feedback }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { Date } xDateTime
   * @param { String } xKeyclicAppVersion
   */
  postIssue(returnType = null, options, credentials = null) {
    if (returnType === null) {
      returnType = Feedback;
    }

    let {
      xKeyclicApp,
      feedbackData,
      acceptLanguage,
      xDateTime,
      xKeyclicAppVersion
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling postIssue'
      );
    }

    // verify the required parameter 'feedbackData' is set
    if (typeof feedbackData === "undefined" || feedbackData === null) {
      throw new window.Error(
        'Missing the required parameter "feedbackData" when calling postIssue'
      );
    }

    // verify the default value of parameter 'acceptLanguage'
    if (typeof acceptLanguage === "undefined" || acceptLanguage === null) {
      acceptLanguage = "fr-FR";
    }

    // verify the null value of parameter 'xDateTime'
    if (typeof xDateTime === "undefined") {
      xDateTime = null;
    }

    // verify the null value of parameter 'xKeyclicAppVersion'
    if (typeof xKeyclicAppVersion === "undefined") {
      xKeyclicAppVersion = null;
    }

    const pathParams = {};

    const bodyParam = feedbackData;

    const queryParams = {};

    let headerParams = {
      "accept-language": acceptLanguage,
      "x-date-time": xDateTime,
      "x-keyclic-app": xKeyclicApp,
      "x-keyclic-app-version": xKeyclicAppVersion
    };

    const credentialParams = credentials;

    let authNames = ["bearer"];

    let contentTypes = ["application/json;charset=UTF-8"];

    let accepts = ["application/hal+json;charset=UTF-8"];

    return this.callApi(
      "/feedbacks/issues",
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

  /**
   * Create one Workflow resource.
   * @param { String } xKeyclicApp
   * @param { module:model/FeedbackWorkflowTransitionData } feedbackWorkflowTransitionData
   * @param { String } feedback The identifier of the resource.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { Feedback }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { Date } xDateTime
   * @param { String } xKeyclicAppVersion
   */
  postWorkflowByFeedback(returnType = null, options, credentials = null) {
    if (returnType === null) {
      returnType = Feedback;
    }

    let {
      xKeyclicApp,
      feedbackWorkflowTransitionData,
      feedback,
      acceptLanguage,
      xDateTime,
      xKeyclicAppVersion
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling postWorkflowByFeedback'
      );
    }

    // verify the required parameter 'feedbackWorkflowTransitionData' is set
    if (
      typeof feedbackWorkflowTransitionData === "undefined" ||
      feedbackWorkflowTransitionData === null
    ) {
      throw new window.Error(
        'Missing the required parameter "feedbackWorkflowTransitionData" when calling postWorkflowByFeedback'
      );
    }

    // verify the required parameter 'feedback' is set
    if (typeof feedback === "undefined" || feedback === null) {
      throw new window.Error(
        'Missing the required parameter "feedback" when calling postWorkflowByFeedback'
      );
    }

    // verify the default value of parameter 'acceptLanguage'
    if (typeof acceptLanguage === "undefined" || acceptLanguage === null) {
      acceptLanguage = "fr-FR";
    }

    // verify the null value of parameter 'xDateTime'
    if (typeof xDateTime === "undefined") {
      xDateTime = null;
    }

    // verify the null value of parameter 'xKeyclicAppVersion'
    if (typeof xKeyclicAppVersion === "undefined") {
      xKeyclicAppVersion = null;
    }

    const pathParams = {
      feedback: feedback
    };

    const bodyParam = feedbackWorkflowTransitionData;

    const queryParams = {};

    let headerParams = {
      "accept-language": acceptLanguage,
      "x-date-time": xDateTime,
      "x-keyclic-app": xKeyclicApp,
      "x-keyclic-app-version": xKeyclicAppVersion
    };

    const credentialParams = credentials;

    let authNames = ["bearer"];

    let contentTypes = ["application/json;charset=UTF-8"];

    let accepts = ["application/hal+json;charset=UTF-8"];

    return this.callApi(
      "/feedbacks/{feedback}/workflow",
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
