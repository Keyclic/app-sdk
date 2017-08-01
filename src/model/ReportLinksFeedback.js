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
import FeedbackLinksSelfIriTemplate from './FeedbackLinksSelfIriTemplate';


    

/**
 * The ReportLinksFeedback model module.
 * @module model/ReportLinksFeedback
 * @version 1.0
 */
export default class ReportLinksFeedback  {
    /**
     * Constructs a new "ReportLinksFeedback".
     * @alias module:model/ReportLinksFeedback
     * @class
    
     */
    constructor(
    
    ) {

        this.href = null;
        this.iriTemplate = null;

        this.iriTemplateType = FeedbackLinksSelfIriTemplate;
    }

    /**
    * Constructs a "ReportLinksFeedback" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/ReportLinksFeedback } object Optional instance to populate.
    * @return { module:model/ReportLinksFeedback } The populated "ReportLinksFeedback" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new ReportLinksFeedback();
        }

        if (data.hasOwnProperty('href')) {
            object.href = ApiClient.convertToType(data['href'], 'String');
        }
        if (data.hasOwnProperty('iriTemplate')) {
            object.iriTemplate = ApiClient.convertToType(data['iriTemplate'], object.iriTemplateType);
        }

        return object;
    }

    

}



