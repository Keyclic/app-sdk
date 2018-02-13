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
import CategoryLinksOrganizationIriTemplate from './CategoryLinksOrganizationIriTemplate';




/**
 * The ReportLinksOrganization model module.
 * @module model/ReportLinksOrganization
 */
export default class ReportLinksOrganization  {
    /**
     * Constructs a new "ReportLinksOrganization".
     * @alias module:model/ReportLinksOrganization
     * @class

     */
    constructor(

    ) {

        this.href = null;
        this.iriTemplate = null;

        this.iriTemplateType = CategoryLinksOrganizationIriTemplate;
    }

    /**
    * Constructs a "ReportLinksOrganization" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/ReportLinksOrganization } object Optional instance to populate.
    * @return { module:model/ReportLinksOrganization } The populated "ReportLinksOrganization" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new ReportLinksOrganization();
        }

        if (data.hasOwnProperty('href')) {
            object.href = ApiClient.convertToType(data.href, 'String');
        }
        if (data.hasOwnProperty('iriTemplate')) {
            object.iriTemplate = ApiClient.convertToType(data.iriTemplate, object.iriTemplateType);
        }

        return object;
    }



}



