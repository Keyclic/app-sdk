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
 * The OperationEmbedded model module.
 * @module model/OperationEmbedded
 * @version 1.0
 */
export default class OperationEmbedded  {
    /**
     * Constructs a new "OperationEmbedded".
     * @alias module:model/OperationEmbedded
     * @class
    
     */
    constructor(
    
    ) {

        this.transitions = [];
        this.stateTransitions = [];

    }

    /**
    * Constructs a "OperationEmbedded" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/OperationEmbedded } object Optional instance to populate.
    * @return { module:model/OperationEmbedded } The populated "OperationEmbedded" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new OperationEmbedded();
        }

        if (data.hasOwnProperty('transitions')) {
            object.transitions = ApiClient.convertToType(data['transitions'], '[\'String\']');
        }
        if (data.hasOwnProperty('stateTransitions')) {
            object.stateTransitions = ApiClient.convertToType(data['stateTransitions'], '[\'String\']');
        }

        return object;
    }

    

}



