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
 * The FeedbackWorkflowTransitionData model module.
 * @module model/FeedbackWorkflowTransitionData
 */
export default class FeedbackWorkflowTransitionData  {
    /**
     * Constructs a new "FeedbackWorkflowTransitionData".
     * @alias module:model/FeedbackWorkflowTransitionData
     * @class

     * @param transition { module:model/FeedbackWorkflowTransitionData.TransitionEnum }

     */
    constructor(

        transition,

    ) {

        this.transition = transition;

    }

    /**
    * Constructs a "FeedbackWorkflowTransitionData" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/FeedbackWorkflowTransitionData } object Optional instance to populate.
    * @return { module:model/FeedbackWorkflowTransitionData } The populated "FeedbackWorkflowTransitionData" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new FeedbackWorkflowTransitionData();
        }

        if (data.hasOwnProperty('transition')) {
            object.transition = ApiClient.convertToType(data.transition, 'String');
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
         * value: "deliver"
         * @const
         * @readonly
         */
        "deliver": "deliver", // eslint-disable-line quotes
        /**
         * value: "fail"
         * @const
         * @readonly
         */
        "fail": "fail", // eslint-disable-line quotes
        /**
         * value: "reaccept"
         * @const
         * @readonly
         */
        "reaccept": "reaccept", // eslint-disable-line quotes
        /**
         * value: "receive"
         * @const
         * @readonly
         */
        "receive": "receive", // eslint-disable-line quotes
        /**
         * value: "refuse"
         * @const
         * @readonly
         */
        "refuse": "refuse", // eslint-disable-line quotes
        /**
         * value: "success"
         * @const
         * @readonly
         */
        "success": "success", // eslint-disable-line quotes
        /**
         * value: "dispatch"
         * @const
         * @readonly
         */
        "dispatch": "dispatch", // eslint-disable-line quotes
    };

}



