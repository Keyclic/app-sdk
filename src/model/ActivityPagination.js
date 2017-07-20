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
import Activity from './Activity';


    

/**
 * The ActivityPagination model module.
 * @module model/ActivityPagination
 * @version 1.0
 */
export default class ActivityPagination  {
    /**
     * Constructs a new "ActivityPagination".
     * @alias module:model/ActivityPagination
     * @class
    
     */
    constructor(
    
    ) {

        this.duration = null;
        this.next = null;
        this.results = [];

        this.resultsType = Activity;
    }

    /**
    * Constructs a "ActivityPagination" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/ActivityPagination } object Optional instance to populate.
    * @return { module:model/ActivityPagination } The populated "ActivityPagination" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new ActivityPagination();
        }

        if (data.hasOwnProperty('duration')) {
            object.duration = ApiClient.convertToType(data['duration'], 'String');
        }
        if (data.hasOwnProperty('next')) {
            object.next = ApiClient.convertToType(data['next'], 'String');
        }
        if (data.hasOwnProperty('results')) {
            object.results = ApiClient.convertToType(data['results'], [object.resultsType]);
        }

        return object;
    }

    

}



