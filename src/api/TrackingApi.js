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
import Error from '../model/Error';
import Tracking from '../model/Tracking';

/**
 * Tracking service.
 * @module api/TrackingApi
 * @version 1.12.1
 */
export default class TrackingApi extends ApiClient {
    /**
     * Constructs a new TrackingApi.
     * 
     * @alias module:api/TrackingApi
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
     * Retrieve a tracking for the given feedback.
     * @param {String} feedback 
     * @param {Object} credentials The required credentials with good properties to use different types of authentication.
     * @param {Tracking} returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     */
    cgetByFeedback(
        feedback,
        credentials,
        returnType = Tracking,
    ) {
        // verify the required parameter 'feedback' is set
        if (typeof feedback === 'undefined' || feedback === null) {
            throw new Error('Missing the required parameter "feedback" when calling cgetByFeedback');
        }

        if (typeof credentials === 'undefined' || credentials === null) {
            throw new Error('Missing the required parameter "credentials" when calling cgetByFeedback');
        }

        let pathParams = {
            'feedback': feedback,
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
            '/feedbacks/{feedback}/tracking',
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
     * Retrieve a tracking for the given report.
     * @param {String} report 
     * @param {Object} credentials The required credentials with good properties to use different types of authentication.
     * @param {Tracking} returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     */
    cgetByReport(
        report,
        credentials,
        returnType = Tracking,
    ) {
        // verify the required parameter 'report' is set
        if (typeof report === 'undefined' || report === null) {
            throw new Error('Missing the required parameter "report" when calling cgetByReport');
        }

        if (typeof credentials === 'undefined' || credentials === null) {
            throw new Error('Missing the required parameter "credentials" when calling cgetByReport');
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
            '/reports/{report}/tracking',
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

}
