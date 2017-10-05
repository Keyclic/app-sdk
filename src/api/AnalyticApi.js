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
import Chart from '../model/Chart';
import Error from '../model/Error';

/**
 * Analytic service.
 * @module api/AnalyticApi
 * @version 1.0
 */
export default class AnalyticApi extends ApiClient {
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
     * Retrieve one Analytic resource.
     * @param { String } xKeyclicApp 
     * @param { String } organization The identifier of the resource formatted as GUID string.
     * @param { Object } credentials The required credentials with good properties to use different types of authentication.
     * @param { Chart }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     * @param { module:model/String } acceptLanguage   (default to fr-FR)
     * @param { String } xKeyclicAppVersion  
     * @param { String } place The identifier of the resource formatted as GUID string. 
     * @param { String } category The identifier of the resource formatted as GUID string. 
     * @param { String } state  
     * @param { Date } before  
     * @param { Date } after  
     * @param { String } optionsProperty  
     * @param { module:model/String } optionsSort  
     */
    getAnalyticByOrganization(
        returnType = null,
        options,
        credentials,
    ) {
        if (returnType === null) {
            returnType = Chart;
        }

        let {
            xKeyclicApp,
            organization,
            acceptLanguage,
            xKeyclicAppVersion,
            place,
            category,
            state,
            before,
            after,
            optionsProperty,
            optionsSort,
        } = options;

        
        // verify the required parameter 'xKeyclicApp' is set
        if (typeof xKeyclicApp === 'undefined' || xKeyclicApp === null) {
            throw new window.Error('Missing the required parameter "xKeyclicApp" when calling getAnalyticByOrganization');
        }
        
        // verify the required parameter 'organization' is set
        if (typeof organization === 'undefined' || organization === null) {
            throw new window.Error('Missing the required parameter "organization" when calling getAnalyticByOrganization');
        }
        

        
        // verify the default value of parameter 'acceptLanguage'
        if (typeof acceptLanguage === 'undefined' || acceptLanguage === null) {
            acceptLanguage = "fr-FR";  // eslint-disable-line quotes
        }
        

        
        // verify the null value of parameter 'xKeyclicAppVersion'
        if (typeof xKeyclicAppVersion === 'undefined') {
            xKeyclicAppVersion = null;
        }
        
        // verify the null value of parameter 'place'
        if (typeof place === 'undefined') {
            place = null;
        }
        
        // verify the null value of parameter 'category'
        if (typeof category === 'undefined') {
            category = null;
        }
        
        // verify the null value of parameter 'state'
        if (typeof state === 'undefined') {
            state = null;
        }
        
        // verify the null value of parameter 'before'
        if (typeof before === 'undefined') {
            before = null;
        }
        
        // verify the null value of parameter 'after'
        if (typeof after === 'undefined') {
            after = null;
        }
        
        // verify the null value of parameter 'optionsProperty'
        if (typeof optionsProperty === 'undefined') {
            optionsProperty = null;
        }
        
        // verify the null value of parameter 'optionsSort'
        if (typeof optionsSort === 'undefined') {
            optionsSort = null;
        }
        

        if (typeof credentials === 'undefined' || credentials === null) {
            throw new window.Error('Missing the required parameter "credentials" when calling getAnalyticByOrganization');
        }

        let pathParams = {
            'organization': organization,
        };

        let bodyParam = null;

        let queryParams = {
            'place': place,
            'category': category,
            'state': state,
            'before': before,
            'after': after,
            'options[property]': optionsProperty,
            'options[sort]': optionsSort,
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
            '/organizations/{organization}/analytics',
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
