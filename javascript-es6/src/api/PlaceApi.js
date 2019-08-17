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
import Place from "../model/Place";
import PlaceData from "../model/PlaceData";
import PlacePagination from "../model/PlacePagination";
import PlacePatch from "../model/PlacePatch";

/**
 * Place service.
 * @module api/PlaceApi
 */
export default class PlaceApi extends ApiClient {
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
   * Retrieve all Place resources.
   * @param { String } xKeyclicApp
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { PlacePagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { String } xKeyclicAppVersion
   * @param { String } businessActivity The identifier of the resource.
   * @param { module:model/Date } after
   * @param { module:model/Date } before
   * @param { String } geoElevation
   * @param { String } geoHash
   * @param { String } geoPoint One latitude and one longitude serialized and separated by a plus or a minus sign.
   * @param { String } geoCoordinates One latitude and one longitude serialized and separated by a plus or a minus sign.
   * @param { module:model/String } order   (default to desc)
   * @param { String } organization The identifier of the resource.
   * @param { String } parent The identifier of the resource.
   * @param { String } parents The identifier of the resource.
   * @param { String } query
   * @param { Number } page Page of the overview.  (default to 1)
   * @param { Number } limit Page of the overview.  (default to 10)
   */
  cgetPlaces(returnType = null, options, credentials) {
    if (returnType === null) {
      returnType = PlacePagination;
    }

    let {
      xKeyclicApp,
      acceptLanguage,
      xKeyclicAppVersion,
      businessActivity,
      after,
      before,
      geoElevation,
      geoHash,
      geoPoint,
      geoCoordinates,
      order,
      organization,
      parent,
      parents,
      query,
      page,
      limit
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling cgetPlaces'
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

    // verify the null value of parameter 'businessActivity'
    if (typeof businessActivity === "undefined") {
      businessActivity = null;
    }

    // verify the null value of parameter 'after'
    if (typeof after === "undefined") {
      after = null;
    }

    // verify the null value of parameter 'before'
    if (typeof before === "undefined") {
      before = null;
    }

    // verify the null value of parameter 'geoElevation'
    if (typeof geoElevation === "undefined") {
      geoElevation = null;
    }

    // verify the null value of parameter 'geoHash'
    if (typeof geoHash === "undefined") {
      geoHash = null;
    }

    // verify the null value of parameter 'geoPoint'
    if (typeof geoPoint === "undefined") {
      geoPoint = null;
    }

    // verify the null value of parameter 'geoCoordinates'
    if (typeof geoCoordinates === "undefined") {
      geoCoordinates = null;
    }

    // verify the null value of parameter 'organization'
    if (typeof organization === "undefined") {
      organization = null;
    }

    // verify the null value of parameter 'parent'
    if (typeof parent === "undefined") {
      parent = null;
    }

    // verify the null value of parameter 'parents'
    if (typeof parents === "undefined") {
      parents = null;
    }

    // verify the null value of parameter 'query'
    if (typeof query === "undefined") {
      query = null;
    }

    if (typeof credentials === "undefined" || credentials === null) {
      throw new window.Error(
        'Missing the required parameter "credentials" when calling cgetPlaces'
      );
    }

    let pathParams = {};

    let bodyParam = null;

    let queryParams = {
      business_activity: businessActivity,
      after: after,
      before: before,
      geo_elevation: geoElevation,
      "geo_hash[]": geoHash,
      geo_point: geoPoint,
      geo_coordinates: geoCoordinates,
      order: order,
      organization: organization,
      parent: parent,
      "parents[]": parents,
      query: query,
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
      "/places",
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
   * Retrieve all Place resources.
   * @param { String } xKeyclicApp
   * @param { String } organization The identifier of the resource.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { PlacePagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { String } xKeyclicAppVersion
   * @param { String } businessActivity The identifier of the resource.
   * @param { module:model/Date } after
   * @param { module:model/Date } before
   * @param { String } geoElevation
   * @param { String } geoHash
   * @param { String } geoPoint One latitude and one longitude serialized and separated by a plus or a minus sign.
   * @param { String } geoCoordinates One latitude and one longitude serialized and separated by a plus or a minus sign.
   * @param { module:model/String } order   (default to desc)
   * @param { String } parent The identifier of the resource.
   * @param { String } parents The identifier of the resource.
   * @param { String } query
   * @param { Number } page Page of the overview.  (default to 1)
   * @param { Number } limit Page of the overview.  (default to 10)
   */
  cgetPlacesByOrganization(returnType = null, options, credentials) {
    if (returnType === null) {
      returnType = PlacePagination;
    }

    let {
      xKeyclicApp,
      organization,
      acceptLanguage,
      xKeyclicAppVersion,
      businessActivity,
      after,
      before,
      geoElevation,
      geoHash,
      geoPoint,
      geoCoordinates,
      order,
      parent,
      parents,
      query,
      page,
      limit
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling cgetPlacesByOrganization'
      );
    }

    // verify the required parameter 'organization' is set
    if (typeof organization === "undefined" || organization === null) {
      throw new window.Error(
        'Missing the required parameter "organization" when calling cgetPlacesByOrganization'
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

    // verify the null value of parameter 'businessActivity'
    if (typeof businessActivity === "undefined") {
      businessActivity = null;
    }

    // verify the null value of parameter 'after'
    if (typeof after === "undefined") {
      after = null;
    }

    // verify the null value of parameter 'before'
    if (typeof before === "undefined") {
      before = null;
    }

    // verify the null value of parameter 'geoElevation'
    if (typeof geoElevation === "undefined") {
      geoElevation = null;
    }

    // verify the null value of parameter 'geoHash'
    if (typeof geoHash === "undefined") {
      geoHash = null;
    }

    // verify the null value of parameter 'geoPoint'
    if (typeof geoPoint === "undefined") {
      geoPoint = null;
    }

    // verify the null value of parameter 'geoCoordinates'
    if (typeof geoCoordinates === "undefined") {
      geoCoordinates = null;
    }

    // verify the null value of parameter 'parent'
    if (typeof parent === "undefined") {
      parent = null;
    }

    // verify the null value of parameter 'parents'
    if (typeof parents === "undefined") {
      parents = null;
    }

    // verify the null value of parameter 'query'
    if (typeof query === "undefined") {
      query = null;
    }

    if (typeof credentials === "undefined" || credentials === null) {
      throw new window.Error(
        'Missing the required parameter "credentials" when calling cgetPlacesByOrganization'
      );
    }

    let pathParams = {
      organization: organization
    };

    let bodyParam = null;

    let queryParams = {
      business_activity: businessActivity,
      after: after,
      before: before,
      geo_elevation: geoElevation,
      "geo_hash[]": geoHash,
      geo_point: geoPoint,
      geo_coordinates: geoCoordinates,
      order: order,
      parent: parent,
      "parents[]": parents,
      query: query,
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
      "/organizations/{organization}/places",
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
   * Retrieve one Place resource.
   * @param { String } xKeyclicApp
   * @param { String } place The identifier of the resource.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { Place }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { String } xKeyclicAppVersion
   */
  getPlace(returnType = null, options, credentials) {
    if (returnType === null) {
      returnType = Place;
    }

    let { xKeyclicApp, place, acceptLanguage, xKeyclicAppVersion } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling getPlace'
      );
    }

    // verify the required parameter 'place' is set
    if (typeof place === "undefined" || place === null) {
      throw new window.Error(
        'Missing the required parameter "place" when calling getPlace'
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
        'Missing the required parameter "credentials" when calling getPlace'
      );
    }

    let pathParams = {
      place: place
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
      "/places/{place}",
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
   * Edit one Place resource.
   * @param { String } xKeyclicApp
   * @param { module:model/PlacePatch } placePatch
   * @param { String } place The identifier of the resource.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { Place }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { String } xKeyclicAppVersion
   */
  patchPlace(returnType = null, options, credentials) {
    if (returnType === null) {
      returnType = Place;
    }

    let {
      xKeyclicApp,
      placePatch,
      place,
      acceptLanguage,
      xKeyclicAppVersion
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling patchPlace'
      );
    }

    // verify the required parameter 'placePatch' is set
    if (typeof placePatch === "undefined" || placePatch === null) {
      throw new window.Error(
        'Missing the required parameter "placePatch" when calling patchPlace'
      );
    }

    // verify the required parameter 'place' is set
    if (typeof place === "undefined" || place === null) {
      throw new window.Error(
        'Missing the required parameter "place" when calling patchPlace'
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
        'Missing the required parameter "credentials" when calling patchPlace'
      );
    }

    let pathParams = {
      place: place
    };

    let bodyParam = placePatch;

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
      "/places/{place}",
      "PATCH",
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
   * Create one Place resource.
   * @param { String } xKeyclicApp
   * @param { module:model/PlaceData } placeData
   * @param { String } organization The identifier of the resource.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { Place }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { String } xKeyclicAppVersion
   */
  postPlaceByOrganization(returnType = null, options, credentials) {
    if (returnType === null) {
      returnType = Place;
    }

    let {
      xKeyclicApp,
      placeData,
      organization,
      acceptLanguage,
      xKeyclicAppVersion
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling postPlaceByOrganization'
      );
    }

    // verify the required parameter 'placeData' is set
    if (typeof placeData === "undefined" || placeData === null) {
      throw new window.Error(
        'Missing the required parameter "placeData" when calling postPlaceByOrganization'
      );
    }

    // verify the required parameter 'organization' is set
    if (typeof organization === "undefined" || organization === null) {
      throw new window.Error(
        'Missing the required parameter "organization" when calling postPlaceByOrganization'
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
        'Missing the required parameter "credentials" when calling postPlaceByOrganization'
      );
    }

    let pathParams = {
      organization: organization
    };

    let bodyParam = placeData;

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
      "/organizations/{organization}/places",
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