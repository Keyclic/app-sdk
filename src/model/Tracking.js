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
import Checkpoint from './Checkpoint';
import TrackingProgression from './TrackingProgression';




/**
 * The Tracking model module.
 * @module model/Tracking
 */
export default class Tracking  {
    /**
     * Constructs a new "Tracking".
     * @alias module:model/Tracking
     * @class

     * @param state { String }

     * @param progression { module:model/TrackingProgression }

     */
    constructor(

        state,

        progression,

    ) {

        this.state = state;
        this.progression = progression;
        this.time = null;
        this.checkpoints = [];

        this.progressionType = TrackingProgression;
        this.checkpointsType = Checkpoint;
    }

    /**
    * Constructs a "Tracking" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/Tracking } object Optional instance to populate.
    * @return { module:model/Tracking } The populated "Tracking" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new Tracking();
        }

        if (data.hasOwnProperty('state')) {
            object.state = ApiClient.convertToType(data.state, 'String');
        }
        if (data.hasOwnProperty('progression')) {
            object.progression = ApiClient.convertToType(data.progression, object.progressionType);
        }
        if (data.hasOwnProperty('time')) {
            object.time = ApiClient.convertToType(data.time, 'Number');
        }
        if (data.hasOwnProperty('checkpoints')) {
            object.checkpoints = ApiClient.convertToType(data.checkpoints, [object.checkpointsType]);
        }

        return object;
    }



}



