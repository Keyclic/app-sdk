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
 * The FeedbackLinksSelf model module.
 * @module model/FeedbackLinksSelf
 * @version 1.0
 */
export default class FeedbackLinksSelf  {
    /**
     * Constructs a new "FeedbackLinksSelf".
     * @alias module:model/FeedbackLinksSelf
     * @class

     */
    constructor(

    ) {

        this.href = null;
        this.iriTemplate = null;

        this.iriTemplateType = FeedbackLinksSelfIriTemplate;
    }

    /**
    * Constructs a "FeedbackLinksSelf" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/FeedbackLinksSelf } object Optional instance to populate.
    * @return { module:model/FeedbackLinksSelf } The populated "FeedbackLinksSelf" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new FeedbackLinksSelf();
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



