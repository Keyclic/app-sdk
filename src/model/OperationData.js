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
 * The OperationData model module.
 * @module model/OperationData
 * @version 1.0
 */
export default class OperationData  {
    /**
     * Constructs a new "OperationData".
     * @alias module:model/OperationData
     * @class

     * @param report { String }

     */
    constructor(

        report,

    ) {

        this.description = null;
        this.duration = null;
        this.name = null;
        this.identificationNumber = null;
        this.report = report;
        this.startDate = null;

    }

    /**
    * Constructs a "OperationData" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/OperationData } object Optional instance to populate.
    * @return { module:model/OperationData } The populated "OperationData" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new OperationData();
        }

        if (data.hasOwnProperty('description')) {
            object.description = ApiClient.convertToType(data.description, 'String');
        }
        if (data.hasOwnProperty('duration')) {
            object.duration = ApiClient.convertToType(data.duration, 'Number');
        }
        if (data.hasOwnProperty('name')) {
            object.name = ApiClient.convertToType(data.name, 'String');
        }
        if (data.hasOwnProperty('identificationNumber')) {
            object.identificationNumber = ApiClient.convertToType(data.identificationNumber, 'String');
        }
        if (data.hasOwnProperty('report')) {
            object.report = ApiClient.convertToType(data.report, 'String');
        }
        if (data.hasOwnProperty('startDate')) {
            object.startDate = ApiClient.convertToType(data.startDate, 'String');
        }

        return object;
    }



}



