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
import OperationLinksSelfIriTemplateMapping from './OperationLinksSelfIriTemplateMapping';




/**
 * The OperationLinksSelfIriTemplate model module.
 * @module model/OperationLinksSelfIriTemplate
 */
export default class OperationLinksSelfIriTemplate  {
    /**
     * Constructs a new "OperationLinksSelfIriTemplate".
     * @alias module:model/OperationLinksSelfIriTemplate
     * @class

     */
    constructor(

    ) {

        this.mapping = null;

        this.mappingType = OperationLinksSelfIriTemplateMapping;
    }

    /**
    * Constructs a "OperationLinksSelfIriTemplate" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/OperationLinksSelfIriTemplate } object Optional instance to populate.
    * @return { module:model/OperationLinksSelfIriTemplate } The populated "OperationLinksSelfIriTemplate" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new OperationLinksSelfIriTemplate();
        }

        if (data.hasOwnProperty('mapping')) {
            object.mapping = ApiClient.convertToType(data.mapping, object.mappingType);
        }

        return object;
    }



}



