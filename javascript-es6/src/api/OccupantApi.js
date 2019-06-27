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
import Occupant from "../model/Occupant";
import OccupantPagination from "../model/OccupantPagination";
import Organization from "../model/Organization";
import PersonData from "../model/PersonData";

/**
 * Occupant service.
 * @module api/OccupantApi
 */
export default class OccupantApi extends ApiClient {
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
   * Retrieve all Occupant resources.
   * @param { String } xKeyclicApp
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { OccupantPagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { String } xKeyclicAppVersion
   * @param { module:model/Date } after
   * @param { module:model/Date } before
   * @param { module:model/String } order   (default to desc)
   * @param { String } person The identifier of the resource formatted as GUID string.
   * @param { Number } page Page of the overview.  (default to 1)
   * @param { Number } limit Page of the overview.  (default to 10)
   */
  cgetOccupants(returnType = null, options, credentials) {
    if (returnType === null) {
      returnType = OccupantPagination;
    }

    let {
      xKeyclicApp,
      acceptLanguage,
      xKeyclicAppVersion,
      after,
      before,
      order,
      person,
      page,
      limit
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling cgetOccupants'
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

    // verify the null value of parameter 'person'
    if (typeof person === "undefined") {
      person = null;
    }

    if (typeof credentials === "undefined" || credentials === null) {
      throw new window.Error(
        'Missing the required parameter "credentials" when calling cgetOccupants'
      );
    }

    let pathParams = {};

    let bodyParam = null;

    let queryParams = {
      after: after,
      before: before,
      order: order,
      person: person,
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
      "/occupants",
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
   * Retrieve all Occupant resources.
   * @param { String } xKeyclicApp
   * @param { String } place The identifier of the resource formatted as GUID string.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { OccupantPagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { String } xKeyclicAppVersion
   * @param { module:model/Date } after
   * @param { module:model/Date } before
   * @param { module:model/String } order   (default to desc)
   * @param { String } person The identifier of the resource formatted as GUID string.
   * @param { Number } page Page of the overview.  (default to 1)
   * @param { Number } limit Page of the overview.  (default to 10)
   */
  cgetOccupantsByPlace(returnType = null, options, credentials) {
    if (returnType === null) {
      returnType = OccupantPagination;
    }

    let {
      xKeyclicApp,
      place,
      acceptLanguage,
      xKeyclicAppVersion,
      after,
      before,
      order,
      person,
      page,
      limit
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling cgetOccupantsByPlace'
      );
    }

    // verify the required parameter 'place' is set
    if (typeof place === "undefined" || place === null) {
      throw new window.Error(
        'Missing the required parameter "place" when calling cgetOccupantsByPlace'
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

    // verify the null value of parameter 'person'
    if (typeof person === "undefined") {
      person = null;
    }

    if (typeof credentials === "undefined" || credentials === null) {
      throw new window.Error(
        'Missing the required parameter "credentials" when calling cgetOccupantsByPlace'
      );
    }

    let pathParams = {
      place: place
    };

    let bodyParam = null;

    let queryParams = {
      after: after,
      before: before,
      order: order,
      person: person,
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
      "/places/{place}/occupants",
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
   * Remove one Occupant resource.
   * @param { String } xKeyclicApp
   * @param { String } place The identifier of the resource formatted as GUID string.
   * @param { String } occupant The identifier of the resource formatted as GUID string.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { Organization }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { String } xKeyclicAppVersion
   */
  deleteOccupantByPlaceAndOccupant(returnType = null, options, credentials) {
    if (returnType === null) {
      returnType = Organization;
    }

    let {
      xKeyclicApp,
      place,
      occupant,
      acceptLanguage,
      xKeyclicAppVersion
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling deleteOccupantByPlaceAndOccupant'
      );
    }

    // verify the required parameter 'place' is set
    if (typeof place === "undefined" || place === null) {
      throw new window.Error(
        'Missing the required parameter "place" when calling deleteOccupantByPlaceAndOccupant'
      );
    }

    // verify the required parameter 'occupant' is set
    if (typeof occupant === "undefined" || occupant === null) {
      throw new window.Error(
        'Missing the required parameter "occupant" when calling deleteOccupantByPlaceAndOccupant'
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
        'Missing the required parameter "credentials" when calling deleteOccupantByPlaceAndOccupant'
      );
    }

    let pathParams = {
      place: place,
      occupant: occupant
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
      "/places/{place}/occupants/{occupant}",
      "DELETE",
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
   * Retrieve one Occupant resource.
   * @param { String } xKeyclicApp
   * @param { String } occupant The identifier of the resource formatted as GUID string.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { Occupant }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { String } xKeyclicAppVersion
   */
  getOccupant(returnType = null, options, credentials) {
    if (returnType === null) {
      returnType = Occupant;
    }

    let { xKeyclicApp, occupant, acceptLanguage, xKeyclicAppVersion } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling getOccupant'
      );
    }

    // verify the required parameter 'occupant' is set
    if (typeof occupant === "undefined" || occupant === null) {
      throw new window.Error(
        'Missing the required parameter "occupant" when calling getOccupant'
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
        'Missing the required parameter "credentials" when calling getOccupant'
      );
    }

    let pathParams = {
      occupant: occupant
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
      "/occupants/{occupant}",
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
   * Create one Occupant resource.
   * @param { String } xKeyclicApp
   * @param { module:model/PersonData } personData
   * @param { String } place The identifier of the resource formatted as GUID string.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { Occupant }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { String } xKeyclicAppVersion
   */
  postOccupantByPlace(returnType = null, options, credentials) {
    if (returnType === null) {
      returnType = Occupant;
    }

    let {
      xKeyclicApp,
      personData,
      place,
      acceptLanguage,
      xKeyclicAppVersion
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling postOccupantByPlace'
      );
    }

    // verify the required parameter 'personData' is set
    if (typeof personData === "undefined" || personData === null) {
      throw new window.Error(
        'Missing the required parameter "personData" when calling postOccupantByPlace'
      );
    }

    // verify the required parameter 'place' is set
    if (typeof place === "undefined" || place === null) {
      throw new window.Error(
        'Missing the required parameter "place" when calling postOccupantByPlace'
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
        'Missing the required parameter "credentials" when calling postOccupantByPlace'
      );
    }

    let pathParams = {
      place: place
    };

    let bodyParam = personData;

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
      "/places/{place}/occupants",
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
