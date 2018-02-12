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




/**
 * The MemberPatch model module.
 * @module model/MemberPatch
 * @version 1.19.1
 */
export default class MemberPatch  {
    /**
     * Constructs a new "MemberPatch".
     * @alias module:model/MemberPatch
     * @class

     */
    constructor(

    ) {

        this.roles = [];

    }

    /**
    * Constructs a "MemberPatch" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/MemberPatch } object Optional instance to populate.
    * @return { module:model/MemberPatch } The populated "MemberPatch" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new MemberPatch();
        }

        if (data.hasOwnProperty('roles')) {
            object.roles = ApiClient.convertToType(data.roles, '[\'String\']');
        }

        return object;
    }



}



