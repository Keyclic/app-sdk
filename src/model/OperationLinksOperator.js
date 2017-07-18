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
import ApplicationLinksSelfIriTemplate from './ApplicationLinksSelfIriTemplate';


    

/**
 * The OperationLinksOperator model module.
 * @module model/OperationLinksOperator
 * @version 1.0
 */
export default class OperationLinksOperator  {
    /**
     * Constructs a new "OperationLinksOperator".
     * @alias module:model/OperationLinksOperator
     * @class
    
     */
    constructor(
    
    ) {

        this.href = null;
        this.iriTemplate = null;

        this.iriTemplateType = ApplicationLinksSelfIriTemplate;
    }

    /**
    * Constructs a "OperationLinksOperator" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/OperationLinksOperator } type Optional instance to populate.
    * @return { module:model/OperationLinksOperator } The populated "OperationLinksOperator" instance.
    */
    static constructFromObject(
        data,
        type = OperationLinksOperator,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }


        let object = new type();

        if (data.hasOwnProperty('href')) {
            object.href = ApiClient.convertToType(data['href'], 'String');
        }
        if (data.hasOwnProperty('iriTemplate')) {
            object.iriTemplate = ApiClient.convertToType(data['iriTemplate'], object.iriTemplateType);
        }

        return object;

    }

    

}



