/**
 * Keyclic API Reference
 * The Keyclic API is build around [REST](https://en.wikipedia.org/wiki/Representational_State_Transfer). <br/> Our API has resource oriented URLs and uses HTTP response codes to indicate API errors. We support CQRS and all API accesses are performed over HTTPS, allowing you to interact securely with our API from a client-side web application.<br/><br/> **Authentication** <br/> Authentication is performed thought [JSON Web Tokens](https://jwt.io). <br/> JSON Web Tokens are an open industry standard RFC 7519 method for representing claims securely between two parties.<br/>There are many [open source projects](https://auth0.com/opensource) built around JWT in several programming languages that you can use in your application.<br/><br/>**Errors** <br/>We uses conventional HTTP response codes to indicate the success or failure of an API request, errors are represented as JSON objects following the [vnd.error](https://github.com/blongden/vnd.error) standard.<br/><br/>**Integration**<br/>To make the API integration easy as possible we have a sandbox environment to interact securely with our API.
 *
 * OpenAPI spec version: 1.12.1
 * Contact: techies@keyclic.com
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 *
 */


import ApiClient from "../ApiClient";
import DelegateBody from '../model/DelegateBody';
import Error from '../model/Error';
import Report from '../model/Report';
import ReportPagination from '../model/ReportPagination';
import ReportPatchDocument from '../model/ReportPatchDocument';
import ReportStatePatchDocument from '../model/ReportStatePatchDocument';

/**
 * Report service.
 * @module api/ReportApi
 * @version 1.12.1
 */
export default class ReportApi extends ApiClient {
    /**
     * Constructs a new ReportApi.
     * 
     * @alias module:api/ReportApi
     * @class
     * @param {module:ApiClient} apiClient Optional API client implementation to use,
     * default to {@link module:ApiClient#instance} if unspecified.
     */
    constructor(
        basePath = null,
        headers = null,
        timeout = null
    ) {
        super(basePath, headers, timeout);
    }


    /**
     * Retrieve all reports for the given organization.
     * @param {String} organization 
     * @param {Object} credentials The required credentials with good properties to use different types of authentication.
     * @param {ReportPagination} returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     * @param {Number} page The page number of the overview.  (default to 1)
     * @param {Number} limit The number of items per page.  (default to 20)
     * @param {String} before  
     * @param {String} after  
     * @param {String} place  
     */
    cgetByOrganization(
        organization,
        credentials,
        returnType = ReportPagination,
        page = 1,
        limit = 20,
        before = null,
        after = null,
        place = null,
    ) {
        // verify the required parameter 'organization' is set
        if (typeof organization === 'undefined' || organization === null) {
            throw new Error('Missing the required parameter "organization" when calling cgetByOrganization');
        }

        if (typeof credentials === 'undefined' || credentials === null) {
            throw new Error('Missing the required parameter "credentials" when calling cgetByOrganization');
        }

        let pathParams = {
            'organization': organization,
        };

        let bodyParam = null;

        let queryParams = {
            'page': page,
            'limit': limit,
            'before': before,
            'after': after,
            'place': place,
        };

        let headerParams = {
        };

        let formParams = {
        };

        let credentialParams = credentials;

        let authNames = [
            'JWT',
        ];

        let contentTypes = [
            'application/json',
        ];

        let accepts = [
            'application/json',
        ];

        return this.callApi(
            '/organizations/{organization}/reports',
            'GET',
            pathParams,
            queryParams,
            headerParams,
            formParams,
            bodyParam,
            authNames,
            credentialParams,
            contentTypes,
            accepts,
            returnType
        );
    }

    /**
     * Export all reports for the given organization.
     * The export is a CSV file send by email.
     * @param {String} organization 
     * @param {Object} credentials The required credentials with good properties to use different types of authentication.
     * @param {Object} returnType The required type to return; can be a string for simple types or the constructor for a complex type (default to null).
     * @param {String} before  
     * @param {String} after  
     * @param {String} place  
     */
    exportByOrganization(
        organization,
        credentials,
        returnType = null,
        before = null,
        after = null,
        place = null,
    ) {
        // verify the required parameter 'organization' is set
        if (typeof organization === 'undefined' || organization === null) {
            throw new Error('Missing the required parameter "organization" when calling exportByOrganization');
        }

        if (typeof credentials === 'undefined' || credentials === null) {
            throw new Error('Missing the required parameter "credentials" when calling exportByOrganization');
        }

        let pathParams = {
            'organization': organization,
        };

        let bodyParam = null;

        let queryParams = {
            'before': before,
            'after': after,
            'place': place,
        };

        let headerParams = {
        };

        let formParams = {
        };

        let credentialParams = credentials;

        let authNames = [
            'JWT',
        ];

        let contentTypes = [
            'application/json',
        ];

        let accepts = [
            'application/json',
        ];

        return this.callApi(
            '/organizations/{organization}/reports/exports',
            'POST',
            pathParams,
            queryParams,
            headerParams,
            formParams,
            bodyParam,
            authNames,
            credentialParams,
            contentTypes,
            accepts,
            returnType
        );
    }

    /**
     * Retrieve a report.
     * @param {String} report 
     * @param {Object} credentials The required credentials with good properties to use different types of authentication.
     * @param {Report} returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     */
    get(
        report,
        credentials,
        returnType = Report,
    ) {
        // verify the required parameter 'report' is set
        if (typeof report === 'undefined' || report === null) {
            throw new Error('Missing the required parameter "report" when calling get');
        }

        if (typeof credentials === 'undefined' || credentials === null) {
            throw new Error('Missing the required parameter "credentials" when calling get');
        }

        let pathParams = {
            'report': report,
        };

        let bodyParam = null;

        let queryParams = {
        };

        let headerParams = {
        };

        let formParams = {
        };

        let credentialParams = credentials;

        let authNames = [
            'JWT',
        ];

        let contentTypes = [
            'application/json',
        ];

        let accepts = [
            'application/json',
        ];

        return this.callApi(
            '/reports/{report}',
            'GET',
            pathParams,
            queryParams,
            headerParams,
            formParams,
            bodyParam,
            authNames,
            credentialParams,
            contentTypes,
            accepts,
            returnType
        );
    }

    /**
     * Edit a report.
     * @param {String} report 
     * @param {Array.<module:model/ReportPatchDocument>} body A JSON document according the rfc5789 specification.
     * @param {Object} credentials The required credentials with good properties to use different types of authentication.
     * @param {Report} returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     */
    patch(
        report,
        body,
        credentials,
        returnType = Report,
    ) {
        // verify the required parameter 'report' is set
        if (typeof report === 'undefined' || report === null) {
            throw new Error('Missing the required parameter "report" when calling patch');
        }
        // verify the required parameter 'body' is set
        if (typeof body === 'undefined' || body === null) {
            throw new Error('Missing the required parameter "body" when calling patch');
        }

        if (typeof credentials === 'undefined' || credentials === null) {
            throw new Error('Missing the required parameter "credentials" when calling patch');
        }

        let pathParams = {
            'report': report,
        };

        let bodyParam = body;

        let queryParams = {
        };

        let headerParams = {
        };

        let formParams = {
        };

        let credentialParams = credentials;

        let authNames = [
            'JWT',
        ];

        let contentTypes = [
            'application/json',
        ];

        let accepts = [
            'application/json',
        ];

        return this.callApi(
            '/reports/{report}',
            'PATCH',
            pathParams,
            queryParams,
            headerParams,
            formParams,
            bodyParam,
            authNames,
            credentialParams,
            contentTypes,
            accepts,
            returnType
        );
    }

    /**
     * Apply a state transition on the given report.
     * Apply transition for an organization.  For more informations about PATCH implementation, please refer to the RFC.  • https://tools.ietf.org/html/rfc5789
     * @param {String} report 
     * @param {Array.<module:model/ReportStatePatchDocument>} body A JSON document according the rfc5789 specification.
     * @param {Object} credentials The required credentials with good properties to use different types of authentication.
     * @param {Report} returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     */
    patchState(
        report,
        body,
        credentials,
        returnType = Report,
    ) {
        // verify the required parameter 'report' is set
        if (typeof report === 'undefined' || report === null) {
            throw new Error('Missing the required parameter "report" when calling patchState');
        }
        // verify the required parameter 'body' is set
        if (typeof body === 'undefined' || body === null) {
            throw new Error('Missing the required parameter "body" when calling patchState');
        }

        if (typeof credentials === 'undefined' || credentials === null) {
            throw new Error('Missing the required parameter "credentials" when calling patchState');
        }

        let pathParams = {
            'report': report,
        };

        let bodyParam = body;

        let queryParams = {
        };

        let headerParams = {
        };

        let formParams = {
        };

        let credentialParams = credentials;

        let authNames = [
            'JWT',
        ];

        let contentTypes = [
            'application/json',
        ];

        let accepts = [
            'application/json',
        ];

        return this.callApi(
            '/reports/{report}/state',
            'PATCH',
            pathParams,
            queryParams,
            headerParams,
            formParams,
            bodyParam,
            authNames,
            credentialParams,
            contentTypes,
            accepts,
            returnType
        );
    }

    /**
     * Delegate a report to an other organization.
     * @param {String} organization The organization id
     * @param {module:model/DelegateBody} delegateObject The body object for delegate a report to an other organization
     * @param {Object} credentials The required credentials with good properties to use different types of authentication.
     * @param {Report} returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     */
    postDelegate(
        organization,
        delegateObject,
        credentials,
        returnType = Report,
    ) {
        // verify the required parameter 'organization' is set
        if (typeof organization === 'undefined' || organization === null) {
            throw new Error('Missing the required parameter "organization" when calling postDelegate');
        }
        // verify the required parameter 'delegateObject' is set
        if (typeof delegateObject === 'undefined' || delegateObject === null) {
            throw new Error('Missing the required parameter "delegateObject" when calling postDelegate');
        }

        if (typeof credentials === 'undefined' || credentials === null) {
            throw new Error('Missing the required parameter "credentials" when calling postDelegate');
        }

        let pathParams = {
            'organization': organization,
        };

        let bodyParam = delegateObject;

        let queryParams = {
        };

        let headerParams = {
        };

        let formParams = {
        };

        let credentialParams = credentials;

        let authNames = [
            'JWT',
        ];

        let contentTypes = [
            'application/json',
        ];

        let accepts = [
            'application/json',
        ];

        return this.callApi(
            '/organizations/{organization}/delegates',
            'POST',
            pathParams,
            queryParams,
            headerParams,
            formParams,
            bodyParam,
            authNames,
            credentialParams,
            contentTypes,
            accepts,
            returnType
        );
    }

}
