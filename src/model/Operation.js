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
import OperationEmbedded from './OperationEmbedded';
import OperationLinks from './OperationLinks';




/**
 * The Operation model module.
 * @module model/Operation
 * @version 1.19.1
 */
export default class Operation  {
    /**
     * Constructs a new "Operation".
     * @alias module:model/Operation
     * @class

     * @param id { String }

     * @param createdAt { Date }

     * @param updatedAt { Date }

     */
    constructor(

        id,

        createdAt,

        updatedAt,

    ) {

        this.name = null;
        this.description = null;
        this.duration = null;
        this.startDate = null;
        this.id = id;
        this.identificationNumber = null;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        this.type = null;
        this.state = [];
        this.links = null;
        this.embedded = null;

        this.linksType = OperationLinks;
        this.embeddedType = OperationEmbedded;
    }

    /**
    * Constructs a "Operation" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/Operation } object Optional instance to populate.
    * @return { module:model/Operation } The populated "Operation" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new Operation();
        }

        if (data.hasOwnProperty('name')) {
            object.name = ApiClient.convertToType(data.name, 'String');
        }
        if (data.hasOwnProperty('description')) {
            object.description = ApiClient.convertToType(data.description, 'String');
        }
        if (data.hasOwnProperty('duration')) {
            object.duration = ApiClient.convertToType(data.duration, 'Number');
        }
        if (data.hasOwnProperty('startDate')) {
            object.startDate = ApiClient.convertToType(data.startDate, 'Date');
        }
        if (data.hasOwnProperty('id')) {
            object.id = ApiClient.convertToType(data.id, 'String');
        }
        if (data.hasOwnProperty('identificationNumber')) {
            object.identificationNumber = ApiClient.convertToType(data.identificationNumber, 'String');
        }
        if (data.hasOwnProperty('createdAt')) {
            object.createdAt = ApiClient.convertToType(data.createdAt, 'Date');
        }
        if (data.hasOwnProperty('updatedAt')) {
            object.updatedAt = ApiClient.convertToType(data.updatedAt, 'Date');
        }
        if (data.hasOwnProperty('type')) {
            object.type = ApiClient.convertToType(data.type, 'String');
        }
        if (data.hasOwnProperty('state')) {
            object.state = ApiClient.convertToType(data.state, '[\'String\']');
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



