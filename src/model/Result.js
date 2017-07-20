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
 * The Result model module.
 * @module model/Result
 * @version 1.0
 */
export default class Result  {
    /**
     * Constructs a new "Result".
     * @alias module:model/Result
     * @class
    
     */
    constructor(
    
    ) {

        this.activities = [];
        this.activityCount = null;
        this.actorCount = null;
        this.createdAt = null;
        this.group = null;
        this.id = null;
        this.updatedAt = null;
        this.verb = null;

        this.activitiesType = Activity;
    }

    /**
    * Constructs a "Result" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/Result } object Optional instance to populate.
    * @return { module:model/Result } The populated "Result" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new Result();
        }

        if (data.hasOwnProperty('activities')) {
            object.activities = ApiClient.convertToType(data['activities'], [object.activitiesType]);
        }
        if (data.hasOwnProperty('activity_count')) {
            object.activityCount = ApiClient.convertToType(data['activity_count'], 'Number');
        }
        if (data.hasOwnProperty('actor_count')) {
            object.actorCount = ApiClient.convertToType(data['actor_count'], 'Number');
        }
        if (data.hasOwnProperty('created_at')) {
            object.createdAt = ApiClient.convertToType(data['created_at'], 'Date');
        }
        if (data.hasOwnProperty('group')) {
            object.group = ApiClient.convertToType(data['group'], 'String');
        }
        if (data.hasOwnProperty('id')) {
            object.id = ApiClient.convertToType(data['id'], 'String');
        }
        if (data.hasOwnProperty('updated_at')) {
            object.updatedAt = ApiClient.convertToType(data['updated_at'], 'Date');
        }
        if (data.hasOwnProperty('verb')) {
            object.verb = ApiClient.convertToType(data['verb'], 'String');
        }

        return object;
    }

    

}



