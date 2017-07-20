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
 * The MemberData model module.
 * @module model/MemberData
 * @version 1.0
 */
export default class MemberData  {
    /**
     * Constructs a new "MemberData".
     * @alias module:model/MemberData
     * @class
    
     * @param member { String } 
    
     */
    constructor(
    
        member,
    
    ) {

        this.member = member;

    }

    /**
    * Constructs a "MemberData" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/MemberData } object Optional instance to populate.
    * @return { module:model/MemberData } The populated "MemberData" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new MemberData();
        }

        if (data.hasOwnProperty('member')) {
            object.member = ApiClient.convertToType(data['member'], 'String');
        }

        return object;
    }

    

}



