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
import MemberLinksOrganization from './MemberLinksOrganization';
import MemberLinksPerson from './MemberLinksPerson';
import MemberLinksSelf from './MemberLinksSelf';




/**
 * The MemberLinks model module.
 * @module model/MemberLinks
 * @version 1.0
 */
export default class MemberLinks  {
    /**
     * Constructs a new "MemberLinks".
     * @alias module:model/MemberLinks
     * @class

     */
    constructor(

    ) {

        this.self = null;
        this.person = null;
        this.organization = null;

        this.selfType = MemberLinksSelf;
        this.personType = MemberLinksPerson;
        this.organizationType = MemberLinksOrganization;
    }

    /**
    * Constructs a "MemberLinks" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/MemberLinks } object Optional instance to populate.
    * @return { module:model/MemberLinks } The populated "MemberLinks" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new MemberLinks();
        }

        if (data.hasOwnProperty('self')) {
            object.self = ApiClient.convertToType(data.self, object.selfType);
        }
        if (data.hasOwnProperty('person')) {
            object.person = ApiClient.convertToType(data.person, object.personType);
        }
        if (data.hasOwnProperty('organization')) {
            object.organization = ApiClient.convertToType(data.organization, object.organizationType);
        }

        return object;
    }



}



