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
 * The Device model module.
 * @module model/Device
 * @version 1.19.1
 */
export default class Device  {
    /**
     * Constructs a new "Device".
     * @alias module:model/Device
     * @class

     * @param person { Object }

     * @param token { String }

     * @param id { String }

     * @param createdAt { Date }

     * @param updatedAt { Date }

     */
    constructor(

        person,

        token,

        id,

        createdAt,

        updatedAt,

    ) {

        this.person = person;
        this.token = token;
        this.id = id;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        this.type = null;

    }

    /**
    * Constructs a "Device" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/Device } object Optional instance to populate.
    * @return { module:model/Device } The populated "Device" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new Device();
        }

        if (data.hasOwnProperty('person')) {
            object.person = ApiClient.convertToType(data.person, 'Object');
        }
        if (data.hasOwnProperty('token')) {
            object.token = ApiClient.convertToType(data.token, 'String');
        }
        if (data.hasOwnProperty('id')) {
            object.id = ApiClient.convertToType(data.id, 'String');
        }
        if (data.hasOwnProperty('created_at')) {
            object.createdAt = ApiClient.convertToType(data.created_at, 'Date');
        }
        if (data.hasOwnProperty('updated_at')) {
            object.updatedAt = ApiClient.convertToType(data.updated_at, 'Date');
        }
        if (data.hasOwnProperty('type')) {
            object.type = ApiClient.convertToType(data.type, 'String');
        }

        return object;
    }



}



