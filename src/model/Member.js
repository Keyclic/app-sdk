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
import MemberEmbedded from './MemberEmbedded';
import MemberLinks from './MemberLinks';




/**
 * The Member model module.
 * @module model/Member
 */
export default class Member  {
    /**
     * Constructs a new "Member".
     * @alias module:model/Member
     * @class

     * @param id { String }

     * @param createdAt { Date }

     */
    constructor(

        id,

        createdAt,

    ) {

        this.roles = [];
        this.id = id;
        this.createdAt = createdAt;
        this.type = null;
        this.links = null;
        this.embedded = null;

        this.linksType = MemberLinks;
        this.embeddedType = MemberEmbedded;
    }

    /**
    * Constructs a "Member" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/Member } object Optional instance to populate.
    * @return { module:model/Member } The populated "Member" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new Member();
        }

        if (data.hasOwnProperty('roles')) {
            object.roles = ApiClient.convertToType(data.roles, '[\'String\']');
        }
        if (data.hasOwnProperty('id')) {
            object.id = ApiClient.convertToType(data.id, 'String');
        }
        if (data.hasOwnProperty('createdAt')) {
            object.createdAt = ApiClient.convertToType(data.createdAt, 'Date');
        }
        if (data.hasOwnProperty('type')) {
            object.type = ApiClient.convertToType(data.type, 'String');
        }
        if (data.hasOwnProperty('_links')) {
            object.links = ApiClient.convertToType(data._links, object.linksType);
        }
        if (data.hasOwnProperty('_embedded')) {
            object.embedded = ApiClient.convertToType(data._embedded, object.embeddedType);
        }

        return object;
    }



}



