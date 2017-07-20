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
import FeedbackDataGeo from './FeedbackDataGeo';


    

/**
 * The FeedbackData model module.
 * @module model/FeedbackData
 * @version 1.0
 */
export default class FeedbackData  {
    /**
     * Constructs a new "FeedbackData".
     * @alias module:model/FeedbackData
     * @class
    
     * @param reporter { String } 
    
     */
    constructor(
    
        reporter,
    
    ) {

        this.reporter = reporter;
        this.category = null;
        this.geo = null;
        this.description = null;
        this.organization = null;

        this.geoType = FeedbackDataGeo;
    }

    /**
    * Constructs a "FeedbackData" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/FeedbackData } object Optional instance to populate.
    * @return { module:model/FeedbackData } The populated "FeedbackData" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new FeedbackData();
        }

        if (data.hasOwnProperty('reporter')) {
            object.reporter = ApiClient.convertToType(data['reporter'], 'String');
        }
        if (data.hasOwnProperty('category')) {
            object.category = ApiClient.convertToType(data['category'], 'String');
        }
        if (data.hasOwnProperty('geo')) {
            object.geo = ApiClient.convertToType(data['geo'], object.geoType);
        }
        if (data.hasOwnProperty('description')) {
            object.description = ApiClient.convertToType(data['description'], 'String');
        }
        if (data.hasOwnProperty('organization')) {
            object.organization = ApiClient.convertToType(data['organization'], 'String');
        }

        return object;
    }

    

}



