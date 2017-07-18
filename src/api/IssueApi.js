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
import Feedback from '../model/Feedback';
import FeedbackData from '../model/FeedbackData';

/**
 * Issue service.
 * @module api/IssueApi
 * @version 1.0
 */
export default class IssueApi extends ApiClient {
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
     * Create one Issue resource.
     * @param { String } xKeyclicApp 
     * @param { Object } credentials The required credentials with good properties to use different types of authentication.
     * @param { Feedback }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     * @param { module:model/String } acceptLanguage   (default to fr-FR)
     * @param { module:model/FeedbackData } feedbackData  
     */
    postIssue(
        returnType = null,
        options,
        credentials,
    ) {
        if (returnType === null) {
            returnType = Feedback;
        }

        let {
            xKeyclicApp,
            acceptLanguage,
            feedbackData,
        } = options;

        
        // verify the required parameter 'xKeyclicApp' is set
        if (typeof xKeyclicApp === 'undefined' || xKeyclicApp === null) {
            throw new window.Error('Missing the required parameter "xKeyclicApp" when calling postIssue');
        }
        

        
        // verify the default value of parameter 'acceptLanguage'
        if (typeof acceptLanguage === 'undefined' || acceptLanguage === null) {
            acceptLanguage = "fr-FR";  // eslint-disable-line quotes
        }
        

        
        // verify the null value of parameter 'feedbackData'
        if (typeof feedbackData === 'undefined') {
            feedbackData = null;
        }
        

        if (typeof credentials === 'undefined' || credentials === null) {
            throw new window.Error('Missing the required parameter "credentials" when calling postIssue');
        }

        let pathParams = {
        };

        let bodyParam = feedbackData;

        let queryParams = {
        };

        let headerParams = {
            'x-keyclic-app': xKeyclicApp,
            'accept-language': acceptLanguage,
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
            '/feedbacks/issues',
            'POST',
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
