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
 * The FeedbackStatePatch model module.
 * @module model/FeedbackStatePatch
 * @version 1.0
 */
export default class FeedbackStatePatch  {
    /**
     * Constructs a new "FeedbackStatePatch".
     * @alias module:model/FeedbackStatePatch
     * @class
    
     * @param transition { module:model/FeedbackStatePatch.TransitionEnum } 
    
     */
    constructor(
    
        transition,
    
    ) {

        this.transition = transition;

    }

    /**
    * Constructs a "FeedbackStatePatch" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/FeedbackStatePatch } type Optional instance to populate.
    * @return { module:model/FeedbackStatePatch } The populated "FeedbackStatePatch" instance.
    */
    static constructFromObject(
        data,
        type = FeedbackStatePatch,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }


        let object = new type();

        if (data.hasOwnProperty('transition')) {
            object.transition = ApiClient.convertToType(data['transition'], 'String');
        }

        return object;

    }

    

       /**
    * Allowed values for the "transition" property.
    * @enum { String }
    */
    static TransitionEnum = {
        /**
         * value: "accept"
         * @const
         * @readonly
         */
        "accept": "accept", // eslint-disable-line quotes
        /**
         * value: "reaccept"
         * @const
         * @readonly
         */
        "reaccept": "reaccept", // eslint-disable-line quotes
        /**
         * value: "refuse"
         * @const
         * @readonly
         */
        "refuse": "refuse", // eslint-disable-line quotes
    };

}



