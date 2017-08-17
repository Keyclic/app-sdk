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


    

/**
 * The ApplicationLinksSelfIriTemplateMapping model module.
 * @module model/ApplicationLinksSelfIriTemplateMapping
 * @version 1.0
 */
export default class ApplicationLinksSelfIriTemplateMapping  {
    /**
     * Constructs a new "ApplicationLinksSelfIriTemplateMapping".
     * @alias module:model/ApplicationLinksSelfIriTemplateMapping
     * @class
    
     */
    constructor(
    
    ) {

        this.token = null;

    }

    /**
    * Constructs a "ApplicationLinksSelfIriTemplateMapping" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/ApplicationLinksSelfIriTemplateMapping } object Optional instance to populate.
    * @return { module:model/ApplicationLinksSelfIriTemplateMapping } The populated "ApplicationLinksSelfIriTemplateMapping" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new ApplicationLinksSelfIriTemplateMapping();
        }

        if (data.hasOwnProperty('token')) {
            object.token = ApiClient.convertToType(data['token'], 'String');
        }

        return object;
    }

    

}



