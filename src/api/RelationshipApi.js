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

import ApiClient from '../ApiClient';
import Error from '../model/Error';
import Organization from '../model/Organization';
import OrganizationPagination from '../model/OrganizationPagination';
import RelationshipData from '../model/RelationshipData';

/**
 * Relationship service.
 * @module api/RelationshipApi
 * @version 1.19.1
 */
export default class RelationshipApi extends ApiClient {
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
     * Retrieve all Relationship resources.
     * @param { String } xKeyclicApp
     * @param { String } organization The identifier of the resource formatted as GUID string.
     * @param { Object } credentials The required credentials with good properties to use different types of authentication.
     * @param { OrganizationPagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     * @param { module:model/String } acceptLanguage   (default to fr-FR)
     * @param { String } xKeyclicAppVersion
     * @param { String } geoCoordinates
     * @param { Number } page Page of the overview.  (default to 1)
     * @param { Number } limit Page of the overview.  (default to 10)
     * @param { module:model/String } order   (default to desc)
     * @param { Date } after
     * @param { Date } before
     * @param { String } searchName
     * @param { String } searchAlternateName
     * @param { String } searchDescription
     * @param { String } searchBillingEmailAddress
     * @param { String } searchNotificationEmailAddress
     */
    cgetRelationshipsByOrganization(
        returnType = null,
        options,
        credentials,
    ) {
        if (returnType === null) {
            returnType = OrganizationPagination;
        }

        let {
            xKeyclicApp,
            organization,
            acceptLanguage,
            xKeyclicAppVersion,
            geoCoordinates,
            page,
            limit,
            order,
            after,
            before,
            searchName,
            searchAlternateName,
            searchDescription,
            searchBillingEmailAddress,
            searchNotificationEmailAddress,
        } = options;


        // verify the required parameter 'xKeyclicApp' is set
        if (typeof xKeyclicApp === 'undefined' || xKeyclicApp === null) {
            throw new window.Error('Missing the required parameter "xKeyclicApp" when calling cgetRelationshipsByOrganization');
        }

        // verify the required parameter 'organization' is set
        if (typeof organization === 'undefined' || organization === null) {
            throw new window.Error('Missing the required parameter "organization" when calling cgetRelationshipsByOrganization');
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

        // verify the null value of parameter 'geoCoordinates'
        if (typeof geoCoordinates === 'undefined') {
            geoCoordinates = null;
        }

        // verify the null value of parameter 'after'
        if (typeof after === 'undefined') {
            after = null;
        }

        // verify the null value of parameter 'before'
        if (typeof before === 'undefined') {
            before = null;
        }

        // verify the null value of parameter 'searchName'
        if (typeof searchName === 'undefined') {
            searchName = null;
        }

        // verify the null value of parameter 'searchAlternateName'
        if (typeof searchAlternateName === 'undefined') {
            searchAlternateName = null;
        }

        // verify the null value of parameter 'searchDescription'
        if (typeof searchDescription === 'undefined') {
            searchDescription = null;
        }

        // verify the null value of parameter 'searchBillingEmailAddress'
        if (typeof searchBillingEmailAddress === 'undefined') {
            searchBillingEmailAddress = null;
        }

        // verify the null value of parameter 'searchNotificationEmailAddress'
        if (typeof searchNotificationEmailAddress === 'undefined') {
            searchNotificationEmailAddress = null;
        }


        if (typeof credentials === 'undefined' || credentials === null) {
            throw new window.Error('Missing the required parameter "credentials" when calling cgetRelationshipsByOrganization');
        }

        let pathParams = {
            'organization': organization,
        };

        let bodyParam = null;

        let queryParams = {
            'geo_coordinates': geoCoordinates,
            'page': page,
            'limit': limit,
            'order': order,
            'after': after,
            'before': before,
            'search[name]': searchName,
            'search[alternateName]': searchAlternateName,
            'search[description]': searchDescription,
            'search[billingEmailAddress]': searchBillingEmailAddress,
            'search[notificationEmailAddress]': searchNotificationEmailAddress,
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
            '/organizations/{organization}/relationships',
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
     * Remove one Relationship resource.
     * @param { String } xKeyclicApp
     * @param { String } organization The identifier of the resource formatted as GUID string.
     * @param { String } relationship The identifier of the resource formatted as GUID string.
     * @param { Object } credentials The required credentials with good properties to use different types of authentication.
     * @param { Object } returnType The required type to return; can be a string for simple types or the constructor for a complex type (default to null).
     * @param { module:model/String } acceptLanguage   (default to fr-FR)
     * @param { String } xKeyclicAppVersion
     */
    deleteRelationshipByOrganizationAndRelationship(
        returnType = null,
        options,
        credentials,
    ) {

        let {
            xKeyclicApp,
            organization,
            relationship,
            acceptLanguage,
            xKeyclicAppVersion,
        } = options;


        // verify the required parameter 'xKeyclicApp' is set
        if (typeof xKeyclicApp === 'undefined' || xKeyclicApp === null) {
            throw new window.Error('Missing the required parameter "xKeyclicApp" when calling deleteRelationshipByOrganizationAndRelationship');
        }

        // verify the required parameter 'organization' is set
        if (typeof organization === 'undefined' || organization === null) {
            throw new window.Error('Missing the required parameter "organization" when calling deleteRelationshipByOrganizationAndRelationship');
        }

        // verify the required parameter 'relationship' is set
        if (typeof relationship === 'undefined' || relationship === null) {
            throw new window.Error('Missing the required parameter "relationship" when calling deleteRelationshipByOrganizationAndRelationship');
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
            throw new window.Error('Missing the required parameter "credentials" when calling deleteRelationshipByOrganizationAndRelationship');
        }

        let pathParams = {
            'organization': organization,
            'relationship': relationship,
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
            '/organizations/{organization}/relationships/{relationship}',
            'DELETE',
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
     * Create one Relationship resource.
     * @param { String } xKeyclicApp
     * @param { String } organization The identifier of the resource formatted as GUID string.
     * @param { Object } credentials The required credentials with good properties to use different types of authentication.
     * @param { Organization }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     * @param { module:model/String } acceptLanguage   (default to fr-FR)
     * @param { String } xKeyclicAppVersion
     * @param { module:model/RelationshipData } relationshipData
     */
    postRelationshipByOrganization(
        returnType = null,
        options,
        credentials,
    ) {
        if (returnType === null) {
            returnType = Organization;
        }

        let {
            xKeyclicApp,
            organization,
            acceptLanguage,
            xKeyclicAppVersion,
            relationshipData,
        } = options;


        // verify the required parameter 'xKeyclicApp' is set
        if (typeof xKeyclicApp === 'undefined' || xKeyclicApp === null) {
            throw new window.Error('Missing the required parameter "xKeyclicApp" when calling postRelationshipByOrganization');
        }

        // verify the required parameter 'organization' is set
        if (typeof organization === 'undefined' || organization === null) {
            throw new window.Error('Missing the required parameter "organization" when calling postRelationshipByOrganization');
        }



        // verify the default value of parameter 'acceptLanguage'
        if (typeof acceptLanguage === 'undefined' || acceptLanguage === null) {
            acceptLanguage = "fr-FR";  // eslint-disable-line quotes
        }



        // verify the null value of parameter 'xKeyclicAppVersion'
        if (typeof xKeyclicAppVersion === 'undefined') {
            xKeyclicAppVersion = null;
        }

        // verify the null value of parameter 'relationshipData'
        if (typeof relationshipData === 'undefined') {
            relationshipData = null;
        }


        if (typeof credentials === 'undefined' || credentials === null) {
            throw new window.Error('Missing the required parameter "credentials" when calling postRelationshipByOrganization');
        }

        let pathParams = {
            'organization': organization,
        };

        let bodyParam = relationshipData;

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
            '/organizations/{organization}/relationships',
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
