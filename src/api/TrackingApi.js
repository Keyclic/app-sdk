/**
 * Keyclic API
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * OpenAPI spec version: 1.0
 * Contact: techies@keyclic.com
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

import ApiClient from '../ApiClient';
import Error from '../model/Error';
import Tracking from '../model/Tracking';

/**
 * Tracking service.
 * @module api/TrackingApi
 * @version 1.0
 */
export default class TrackingApi extends ApiClient {
    /**
     * @class
     * { string } basePath To override basePath.
     * { object } headers Additional headers for the instance.
     * { int } timeout Number in seconds before timeout.
     */
    constructor(
        basePath = null,
        headers = null,
        timeout = null
    ) {
        super(basePath, headers, timeout);
    }

    /**
     * Retrieve one Tracking resource.
     * @param { String } xKeyclicApp 
     * @param { String } feedback The identifier of the resource formatted as GUID string.
     * @param { Object } credentials The required credentials with good properties to use different types of authentication.
     * @param { Tracking }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     * @param { module:model/String } acceptLanguage   (default to fr-FR)
     * @param { String } xKeyclicAppVersion  
     */
    getTrackingByFeedback(
        returnType = null,
        options,
        credentials,
    ) {
        if (returnType === null) {
            returnType = Tracking;
        }

        let {
            xKeyclicApp,
            feedback,
            acceptLanguage,
            xKeyclicAppVersion,
        } = options;

        
        // verify the required parameter 'xKeyclicApp' is set
        if (typeof xKeyclicApp === 'undefined' || xKeyclicApp === null) {
            throw new window.Error('Missing the required parameter "xKeyclicApp" when calling getTrackingByFeedback');
        }
        
        // verify the required parameter 'feedback' is set
        if (typeof feedback === 'undefined' || feedback === null) {
            throw new window.Error('Missing the required parameter "feedback" when calling getTrackingByFeedback');
        }
        

        
        // verify the default value of parameter 'acceptLanguage'
        if (typeof acceptLanguage === 'undefined' || acceptLanguage === null) {
            acceptLanguage = "fr-FR";  // eslint-disable-line quotes
        }
        

        
        // verify the null value of parameter 'xKeyclicAppVersion'
        if (typeof xKeyclicAppVersion === 'undefined') {
            xKeyclicAppVersion = null;
        }
        

        if (typeof credentials === 'undefined' || credentials === null) {
            throw new window.Error('Missing the required parameter "credentials" when calling getTrackingByFeedback');
        }

        let pathParams = {
            'feedback': feedback,
        };

        let bodyParam = null;

        let queryParams = {
        };

        let headerParams = {
            'accept-language': acceptLanguage,
            'x-keyclic-app': xKeyclicApp,
            'x-keyclic-app-version': xKeyclicAppVersion,
        };

        let credentialParams = credentials;

        let authNames = [
            'bearer',
        ];

        let contentTypes = [
            'application/json;charset=UTF-8',
        ];

        let accepts = [
            'application/hal+json;charset=UTF-8',
        ];

        return this.callApi(
            '/feedbacks/{feedback}/tracking',
            'GET',
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
     * @param { String } report The identifier of the resource formatted as GUID string.
     * @param { Object } credentials The required credentials with good properties to use different types of authentication.
     * @param { Tracking }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     * @param { module:model/String } acceptLanguage   (default to fr-FR)
     * @param { String } xKeyclicAppVersion  
     */
    getTrackingByReport(
        returnType = null,
        options,
        credentials,
    ) {
        if (returnType === null) {
            returnType = Tracking;
        }

        let {
            xKeyclicApp,
            report,
            acceptLanguage,
            xKeyclicAppVersion,
        } = options;

        
        // verify the required parameter 'xKeyclicApp' is set
        if (typeof xKeyclicApp === 'undefined' || xKeyclicApp === null) {
            throw new window.Error('Missing the required parameter "xKeyclicApp" when calling getTrackingByReport');
        }
        
        // verify the required parameter 'report' is set
        if (typeof report === 'undefined' || report === null) {
            throw new window.Error('Missing the required parameter "report" when calling getTrackingByReport');
        }
        

        
        // verify the default value of parameter 'acceptLanguage'
        if (typeof acceptLanguage === 'undefined' || acceptLanguage === null) {
            acceptLanguage = "fr-FR";  // eslint-disable-line quotes
        }
        

        
        // verify the null value of parameter 'xKeyclicAppVersion'
        if (typeof xKeyclicAppVersion === 'undefined') {
            xKeyclicAppVersion = null;
        }
        

        if (typeof credentials === 'undefined' || credentials === null) {
            throw new window.Error('Missing the required parameter "credentials" when calling getTrackingByReport');
        }

        let pathParams = {
            'report': report,
        };

        let bodyParam = null;

        let queryParams = {
        };

        let headerParams = {
            'accept-language': acceptLanguage,
            'x-keyclic-app': xKeyclicApp,
            'x-keyclic-app-version': xKeyclicAppVersion,
        };

        let credentialParams = credentials;

        let authNames = [
            'bearer',
        ];

        let contentTypes = [
            'application/json;charset=UTF-8',
        ];

        let accepts = [
            'application/hal+json;charset=UTF-8',
        ];

        return this.callApi(
            '/reports/{report}/tracking',
            'GET',
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
