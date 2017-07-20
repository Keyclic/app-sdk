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
import PlaceGeo from './PlaceGeo';
import PlaceLinks from './PlaceLinks';


    

/**
 * The Place model module.
 * @module model/Place
 * @version 1.0
 */
export default class Place  {
    /**
     * Constructs a new "Place".
     * @alias module:model/Place
     * @class
    
     * @param name { String } 
    
     * @param id { String } 
    
     * @param createdAt { Date } 
    
     * @param updatedAt { Date } 
    
     */
    constructor(
    
        name,
    
        id,
    
        createdAt,
    
        updatedAt,
    
    ) {

        this.branchCode = null;
        this.name = name;
        this.geo = null;
        this.id = id;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        this.type = null;
        this.links = null;

        this.geoType = PlaceGeo;
        this.linksType = PlaceLinks;
    }

    /**
    * Constructs a "Place" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/Place } object Optional instance to populate.
    * @return { module:model/Place } The populated "Place" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new Place();
        }

        if (data.hasOwnProperty('branchCode')) {
            object.branchCode = ApiClient.convertToType(data['branchCode'], 'String');
        }
        if (data.hasOwnProperty('name')) {
            object.name = ApiClient.convertToType(data['name'], 'String');
        }
        if (data.hasOwnProperty('geo')) {
            object.geo = ApiClient.convertToType(data['geo'], object.geoType);
        }
        if (data.hasOwnProperty('id')) {
            object.id = ApiClient.convertToType(data['id'], 'String');
        }
        if (data.hasOwnProperty('createdAt')) {
            object.createdAt = ApiClient.convertToType(data['createdAt'], 'Date');
        }
        if (data.hasOwnProperty('updatedAt')) {
            object.updatedAt = ApiClient.convertToType(data['updatedAt'], 'Date');
        }
        if (data.hasOwnProperty('type')) {
            object.type = ApiClient.convertToType(data['type'], 'String');
        }
        if (data.hasOwnProperty('_links')) {
            object.links = ApiClient.convertToType(data['_links'], object.linksType);
        }

        return object;
    }

    

}



