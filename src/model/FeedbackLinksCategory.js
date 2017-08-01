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
import CategoryLinksSelfIriTemplate from './CategoryLinksSelfIriTemplate';


    

/**
 * The FeedbackLinksCategory model module.
 * @module model/FeedbackLinksCategory
 * @version 1.0
 */
export default class FeedbackLinksCategory  {
    /**
     * Constructs a new "FeedbackLinksCategory".
     * @alias module:model/FeedbackLinksCategory
     * @class
    
     */
    constructor(
    
    ) {

        this.href = null;
        this.iriTemplate = null;

        this.iriTemplateType = CategoryLinksSelfIriTemplate;
    }

    /**
    * Constructs a "FeedbackLinksCategory" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/FeedbackLinksCategory } object Optional instance to populate.
    * @return { module:model/FeedbackLinksCategory } The populated "FeedbackLinksCategory" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new FeedbackLinksCategory();
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



