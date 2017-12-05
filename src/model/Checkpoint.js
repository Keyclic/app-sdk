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
import CheckpointLinks from './CheckpointLinks';




/**
 * The Checkpoint model module.
 * @module model/Checkpoint
 * @version 1.0
 */
export default class Checkpoint  {
    /**
     * Constructs a new "Checkpoint".
     * @alias module:model/Checkpoint
     * @class

     */
    constructor(

    ) {

        this.createdAt = null;
        this.state = [];
        this.links = null;

        this.linksType = CheckpointLinks;
    }

    /**
    * Constructs a "Checkpoint" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/Checkpoint } object Optional instance to populate.
    * @return { module:model/Checkpoint } The populated "Checkpoint" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new Checkpoint();
        }

        if (data.hasOwnProperty('createdAt')) {
            object.createdAt = ApiClient.convertToType(data.createdAt, 'Date');
        }
        if (data.hasOwnProperty('state')) {
            object.state = ApiClient.convertToType(data.state, '[\'String\']');
        }
        if (data.hasOwnProperty('_links')) {
            object.links = ApiClient.convertToType(data._links, object.linksType);
        }

        return object;
    }



}



