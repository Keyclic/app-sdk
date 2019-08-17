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
import Report from "../model/Report";

/**
 * Export service.
 * @module api/ExportApi
 */
export default class ExportApi extends ApiClient {
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
   * Retrieve all Export resources.
   * @param { String } xKeyclicApp
   * @param { String } organization The identifier of the resource.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { Report }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { String } xKeyclicAppVersion
   * @param { String } place The identifier of the resource.
   * @param { String } assignedTo The identifier of the resource.
   * @param { String } category The identifier of the resource.
   * @param { module:model/Date } after
   * @param { module:model/Date } before
   * @param { String } delegatedTo The identifier of the resource.
   * @param { module:model/String } order   (default to desc)
   * @param { String } query
   * @param { String } state
   * @param { Number } page Page of the overview.  (default to 1)
   * @param { Number } limit Page of the overview.  (default to 10)
   */
  cpostExportByOrganization(returnType = null, options, credentials) {
    if (returnType === null) {
      returnType = Report;
    }

    let {
      xKeyclicApp,
      organization,
      acceptLanguage,
      xKeyclicAppVersion,
      place,
      assignedTo,
      category,
      after,
      before,
      delegatedTo,
      order,
      query,
      state,
      page,
      limit
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling cpostExportByOrganization'
      );
    }

    // verify the required parameter 'organization' is set
    if (typeof organization === "undefined" || organization === null) {
      throw new window.Error(
        'Missing the required parameter "organization" when calling cpostExportByOrganization'
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

    // verify the null value of parameter 'place'
    if (typeof place === "undefined") {
      place = null;
    }

    // verify the null value of parameter 'assignedTo'
    if (typeof assignedTo === "undefined") {
      assignedTo = null;
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

    // verify the null value of parameter 'delegatedTo'
    if (typeof delegatedTo === "undefined") {
      delegatedTo = null;
    }

    // verify the null value of parameter 'query'
    if (typeof query === "undefined") {
      query = null;
    }

    // verify the null value of parameter 'state'
    if (typeof state === "undefined") {
      state = null;
    }

    if (typeof credentials === "undefined" || credentials === null) {
      throw new window.Error(
        'Missing the required parameter "credentials" when calling cpostExportByOrganization'
      );
    }

    let pathParams = {
      organization: organization
    };

    let bodyParam = null;

    let queryParams = {
      place: place,
      assigned_to: assignedTo,
      category: category,
      after: after,
      before: before,
      delegated_to: delegatedTo,
      order: order,
      query: query,
      state: state,
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
      "/organizations/{organization}/reports/exports",
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
   * Retrieve one Export resource.
   * @param { String } xKeyclicApp
   * @param { String } organization The identifier of the resource.
   * @param { String } token
   * @param { File }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { String } xKeyclicAppVersion
   */
  getExportByOrganizationAndToken(returnType = null, options) {
    if (returnType === null) {
      returnType = File;
    }

    let {
      xKeyclicApp,
      organization,
      token,
      acceptLanguage,
      xKeyclicAppVersion
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling getExportByOrganizationAndToken'
      );
    }

    // verify the required parameter 'organization' is set
    if (typeof organization === "undefined" || organization === null) {
      throw new window.Error(
        'Missing the required parameter "organization" when calling getExportByOrganizationAndToken'
      );
    }

    // verify the required parameter 'token' is set
    if (typeof token === "undefined" || token === null) {
      throw new window.Error(
        'Missing the required parameter "token" when calling getExportByOrganizationAndToken'
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

    let pathParams = {
      organization: organization,
      token: token
    };

    let bodyParam = null;

    let queryParams = {};

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
      "/organizations/{organization}/exports/{token}",
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