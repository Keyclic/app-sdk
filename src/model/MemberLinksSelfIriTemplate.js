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
import MemberLinksSelfIriTemplateMapping from './MemberLinksSelfIriTemplateMapping';




/**
 * The MemberLinksSelfIriTemplate model module.
 * @module model/MemberLinksSelfIriTemplate
 */
export default class MemberLinksSelfIriTemplate  {
    /**
     * Constructs a new "MemberLinksSelfIriTemplate".
     * @alias module:model/MemberLinksSelfIriTemplate
     * @class

     */
    constructor(

    ) {

        this.mapping = null;

        this.mappingType = MemberLinksSelfIriTemplateMapping;
    }

    /**
    * Constructs a "MemberLinksSelfIriTemplate" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/MemberLinksSelfIriTemplate } object Optional instance to populate.
    * @return { module:model/MemberLinksSelfIriTemplate } The populated "MemberLinksSelfIriTemplate" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new MemberLinksSelfIriTemplate();
        }

        if (data.hasOwnProperty('mapping')) {
            object.mapping = ApiClient.convertToType(data.mapping, object.mappingType);
        }

        return object;
    }



}



