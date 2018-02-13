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
 * The OperationPatch model module.
 * @module model/OperationPatch
 */
export default class OperationPatch  {
    /**
     * Constructs a new "OperationPatch".
     * @alias module:model/OperationPatch
     * @class

     */
    constructor(

    ) {

        this.description = null;
        this.duration = null;
        this.identificationNumber = null;
        this.name = null;
        this.startDate = null;

    }

    /**
    * Constructs a "OperationPatch" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/OperationPatch } object Optional instance to populate.
    * @return { module:model/OperationPatch } The populated "OperationPatch" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new OperationPatch();
        }

        if (data.hasOwnProperty('description')) {
            object.description = ApiClient.convertToType(data.description, 'String');
        }
        if (data.hasOwnProperty('duration')) {
            object.duration = ApiClient.convertToType(data.duration, 'Number');
        }
        if (data.hasOwnProperty('identificationNumber')) {
            object.identificationNumber = ApiClient.convertToType(data.identificationNumber, 'String');
        }
        if (data.hasOwnProperty('name')) {
            object.name = ApiClient.convertToType(data.name, 'String');
        }
        if (data.hasOwnProperty('startDate')) {
            object.startDate = ApiClient.convertToType(data.startDate, 'Date');
        }

        return object;
    }



}



