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
import Person from '../model/Person';
import PersonPagination from '../model/PersonPagination';
import PersonPatch from '../model/PersonPatch';

/**
 * Person service.
 * @module api/PersonApi
 * @version 1.0
 */
export default class PersonApi extends ApiClient {
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
     * Retrieve all Person resources.
     * @param { String } xKeyclicApp
     * @param { Object } credentials The required credentials with good properties to use different types of authentication.
     * @param { PersonPagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     * @param { module:model/String } acceptLanguage   (default to fr-FR)
     * @param { String } xKeyclicAppVersion
     * @param { Number } page Page of the overview.  (default to 1)
     * @param { Number } limit Page of the overview.  (default to 10)
     * @param { module:model/String } order   (default to desc)
     * @param { Date } after
     * @param { Date } before
     * @param { String } searchFamilyName
     * @param { String } searchGivenName
     * @param { String } searchJobTitle
     * @param { String } searchUsername
     * @param { String } searchEmail
     */
    cgetPeople(
        returnType = null,
        options,
        credentials,
    ) {
        if (returnType === null) {
            returnType = PersonPagination;
        }

        let {
            xKeyclicApp,
            acceptLanguage,
            xKeyclicAppVersion,
            page,
            limit,
            order,
            after,
            before,
            searchFamilyName,
            searchGivenName,
            searchJobTitle,
            searchUsername,
            searchEmail,
        } = options;


        // verify the required parameter 'xKeyclicApp' is set
        if (typeof xKeyclicApp === 'undefined' || xKeyclicApp === null) {
            throw new window.Error('Missing the required parameter "xKeyclicApp" when calling cgetPeople');
        }



        // verify the default value of parameter 'acceptLanguage'
        if (typeof acceptLanguage === 'undefined' || acceptLanguage === null) {
            acceptLanguage = "fr-FR";  // eslint-disable-line quotes
        }

        // verify the default value of parameter 'page'
        if (typeof page === 'undefined' || page === null) {
            page = 1;  // eslint-disable-line quotes
        }

        // verify the default value of parameter 'limit'
        if (typeof limit === 'undefined' || limit === null) {
            limit = 10;  // eslint-disable-line quotes
        }

        // verify the default value of parameter 'order'
        if (typeof order === 'undefined' || order === null) {
            order = "desc";  // eslint-disable-line quotes
        }



        // verify the null value of parameter 'xKeyclicAppVersion'
        if (typeof xKeyclicAppVersion === 'undefined') {
            xKeyclicAppVersion = null;
        }

        // verify the null value of parameter 'after'
        if (typeof after === 'undefined') {
            after = null;
        }

        // verify the null value of parameter 'before'
        if (typeof before === 'undefined') {
            before = null;
        }

        // verify the null value of parameter 'searchFamilyName'
        if (typeof searchFamilyName === 'undefined') {
            searchFamilyName = null;
        }

        // verify the null value of parameter 'searchGivenName'
        if (typeof searchGivenName === 'undefined') {
            searchGivenName = null;
        }

        // verify the null value of parameter 'searchJobTitle'
        if (typeof searchJobTitle === 'undefined') {
            searchJobTitle = null;
        }

        // verify the null value of parameter 'searchUsername'
        if (typeof searchUsername === 'undefined') {
            searchUsername = null;
        }

        // verify the null value of parameter 'searchEmail'
        if (typeof searchEmail === 'undefined') {
            searchEmail = null;
        }


        if (typeof credentials === 'undefined' || credentials === null) {
            throw new window.Error('Missing the required parameter "credentials" when calling cgetPeople');
        }

        let pathParams = {
        };

        let bodyParam = null;

        let queryParams = {
            'page': page,
            'limit': limit,
            'order': order,
            'after': after,
            'before': before,
            'search[familyName]': searchFamilyName,
            'search[givenName]': searchGivenName,
            'search[jobTitle]': searchJobTitle,
            'search[username]': searchUsername,
            'search[email]': searchEmail,
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
            '/people',
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
     * Retrieve one Person resource.
     * @param { String } xKeyclicApp
     * @param { String } person The identifier of the resource formatted as GUID string.
     * @param { Object } credentials The required credentials with good properties to use different types of authentication.
     * @param { Person }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     * @param { module:model/String } acceptLanguage   (default to fr-FR)
     * @param { String } xKeyclicAppVersion
     */
    getPerson(
        returnType = null,
        options,
        credentials,
    ) {
        if (returnType === null) {
            returnType = Person;
        }

        let {
            xKeyclicApp,
            person,
            acceptLanguage,
            xKeyclicAppVersion,
        } = options;


        // verify the required parameter 'xKeyclicApp' is set
        if (typeof xKeyclicApp === 'undefined' || xKeyclicApp === null) {
            throw new window.Error('Missing the required parameter "xKeyclicApp" when calling getPerson');
        }

        // verify the required parameter 'person' is set
        if (typeof person === 'undefined' || person === null) {
            throw new window.Error('Missing the required parameter "person" when calling getPerson');
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
            throw new window.Error('Missing the required parameter "credentials" when calling getPerson');
        }

        let pathParams = {
            'person': person,
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
            '/people/{person}',
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
     * Edit one Person resource.
     * @param { String } xKeyclicApp
     * @param { String } person The identifier of the resource formatted as GUID string.
     * @param { Object } credentials The required credentials with good properties to use different types of authentication.
     * @param { Person }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     * @param { module:model/String } acceptLanguage   (default to fr-FR)
     * @param { String } xKeyclicAppVersion
     * @param { module:model/PersonPatch } personPatch
     */
    patchPerson(
        returnType = null,
        options,
        credentials,
    ) {
        if (returnType === null) {
            returnType = Person;
        }

        let {
            xKeyclicApp,
            person,
            acceptLanguage,
            xKeyclicAppVersion,
            personPatch,
        } = options;


        // verify the required parameter 'xKeyclicApp' is set
        if (typeof xKeyclicApp === 'undefined' || xKeyclicApp === null) {
            throw new window.Error('Missing the required parameter "xKeyclicApp" when calling patchPerson');
        }

        // verify the required parameter 'person' is set
        if (typeof person === 'undefined' || person === null) {
            throw new window.Error('Missing the required parameter "person" when calling patchPerson');
        }



        // verify the default value of parameter 'acceptLanguage'
        if (typeof acceptLanguage === 'undefined' || acceptLanguage === null) {
            acceptLanguage = "fr-FR";  // eslint-disable-line quotes
        }



        // verify the null value of parameter 'xKeyclicAppVersion'
        if (typeof xKeyclicAppVersion === 'undefined') {
            xKeyclicAppVersion = null;
        }

        // verify the null value of parameter 'personPatch'
        if (typeof personPatch === 'undefined') {
            personPatch = null;
        }


        if (typeof credentials === 'undefined' || credentials === null) {
            throw new window.Error('Missing the required parameter "credentials" when calling patchPerson');
        }

        let pathParams = {
            'person': person,
        };

        let bodyParam = personPatch;

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
            '/people/{person}',
            'PATCH',
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
