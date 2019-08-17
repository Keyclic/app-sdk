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
import Publication from "../model/Publication";
import PublicationData from "../model/PublicationData";
import PublicationPagination from "../model/PublicationPagination";

/**
 * Publication service.
 * @module api/PublicationApi
 */
export default class PublicationApi extends ApiClient {
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
   * Retrieve all Publication resources.
   * @param { String } xKeyclicApp
   * @param { String } organization The identifier of the resource.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { PublicationPagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { String } xKeyclicAppVersion
   * @param { module:model/Date } after
   * @param { module:model/Date } before
   * @param { module:model/String } order   (default to desc)
   * @param { String } place The identifier of the resource.
   * @param { Number } page Page of the overview.  (default to 1)
   * @param { Number } limit Page of the overview.  (default to 10)
   */
  cgetPublicationsByOrganization(returnType = null, options, credentials) {
    if (returnType === null) {
      returnType = PublicationPagination;
    }

    let {
      xKeyclicApp,
      organization,
      acceptLanguage,
      xKeyclicAppVersion,
      after,
      before,
      order,
      place,
      page,
      limit
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling cgetPublicationsByOrganization'
      );
    }

    // verify the required parameter 'organization' is set
    if (typeof organization === "undefined" || organization === null) {
      throw new window.Error(
        'Missing the required parameter "organization" when calling cgetPublicationsByOrganization'
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

    // verify the null value of parameter 'place'
    if (typeof place === "undefined") {
      place = null;
    }

    if (typeof credentials === "undefined" || credentials === null) {
      throw new window.Error(
        'Missing the required parameter "credentials" when calling cgetPublicationsByOrganization'
      );
    }

    let pathParams = {
      organization: organization
    };

    let bodyParam = null;

    let queryParams = {
      after: after,
      before: before,
      order: order,
      place: place,
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
      "/organizations/{organization}/publications",
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
   * Retrieve one Publication resource.
   * @param { String } xKeyclicApp
   * @param { String } organization The identifier of the resource.
   * @param { String } publication The identifier of the resource.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { Publication }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { String } xKeyclicAppVersion
   */
  getPublicationByOrganizationAndPublication(
    returnType = null,
    options,
    credentials
  ) {
    if (returnType === null) {
      returnType = Publication;
    }

    let {
      xKeyclicApp,
      organization,
      publication,
      acceptLanguage,
      xKeyclicAppVersion
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling getPublicationByOrganizationAndPublication'
      );
    }

    // verify the required parameter 'organization' is set
    if (typeof organization === "undefined" || organization === null) {
      throw new window.Error(
        'Missing the required parameter "organization" when calling getPublicationByOrganizationAndPublication'
      );
    }

    // verify the required parameter 'publication' is set
    if (typeof publication === "undefined" || publication === null) {
      throw new window.Error(
        'Missing the required parameter "publication" when calling getPublicationByOrganizationAndPublication'
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
        'Missing the required parameter "credentials" when calling getPublicationByOrganizationAndPublication'
      );
    }

    let pathParams = {
      organization: organization,
      publication: publication
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
      "/organizations/{organization}/publications/{publication}",
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
   * Create one Publication resource.
   * @param { String } xKeyclicApp
   * @param { module:model/PublicationData } publicationData
   * @param { String } organization The identifier of the resource.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { Publication }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { String } xKeyclicAppVersion
   */
  postPublicationByOrganization(returnType = null, options, credentials) {
    if (returnType === null) {
      returnType = Publication;
    }

    let {
      xKeyclicApp,
      publicationData,
      organization,
      acceptLanguage,
      xKeyclicAppVersion
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling postPublicationByOrganization'
      );
    }

    // verify the required parameter 'publicationData' is set
    if (typeof publicationData === "undefined" || publicationData === null) {
      throw new window.Error(
        'Missing the required parameter "publicationData" when calling postPublicationByOrganization'
      );
    }

    // verify the required parameter 'organization' is set
    if (typeof organization === "undefined" || organization === null) {
      throw new window.Error(
        'Missing the required parameter "organization" when calling postPublicationByOrganization'
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
        'Missing the required parameter "credentials" when calling postPublicationByOrganization'
      );
    }

    let pathParams = {
      organization: organization
    };

    let bodyParam = publicationData;

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
      "/organizations/{organization}/publications",
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