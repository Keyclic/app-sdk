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
 * The PlaceData model module.
 * @module model/PlaceData
 * @version 1.0
 */
export default class PlaceData  {
    /**
     * Constructs a new "PlaceData".
     * @alias module:model/PlaceData
     * @class
    
     * @param name { String } 
    
     * @param polygon { String } 
    
     */
    constructor(
    
        name,
    
        polygon,
    
    ) {

        this.name = name;
        this.branchCode = null;
        this.polygon = polygon;
        this.elevation = null;

    }

    /**
    * Constructs a "PlaceData" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/PlaceData } object Optional instance to populate.
    * @return { module:model/PlaceData } The populated "PlaceData" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new PlaceData();
        }

        if (data.hasOwnProperty('name')) {
            object.name = ApiClient.convertToType(data['name'], 'String');
        }
        if (data.hasOwnProperty('branchCode')) {
            object.branchCode = ApiClient.convertToType(data['branchCode'], 'String');
        }
        if (data.hasOwnProperty('polygon')) {
            object.polygon = ApiClient.convertToType(data['polygon'], 'String');
        }
        if (data.hasOwnProperty('elevation')) {
            object.elevation = ApiClient.convertToType(data['elevation'], 'Number');
        }

        return object;
    }

    

}



