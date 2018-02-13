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
 * The PlaceGeoPolygon model module.
 * @module model/PlaceGeoPolygon
 */
export default class PlaceGeoPolygon  {
    /**
     * Constructs a new "PlaceGeoPolygon".
     * @alias module:model/PlaceGeoPolygon
     * @class

     * @param type { String }

     */
    constructor(

        type,

    ) {

        this.type = type;
        this.features = [];

    }

    /**
    * Constructs a "PlaceGeoPolygon" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/PlaceGeoPolygon } object Optional instance to populate.
    * @return { module:model/PlaceGeoPolygon } The populated "PlaceGeoPolygon" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new PlaceGeoPolygon();
        }

        if (data.hasOwnProperty('type')) {
            object.type = ApiClient.convertToType(data.type, 'String');
        }
        if (data.hasOwnProperty('features')) {
            object.features = ApiClient.convertToType(data.features, '[\'String\']');
        }

        return object;
    }



}



