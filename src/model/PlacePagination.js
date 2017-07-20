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
import Pagination from './Pagination';
import PaginationLinks from './PaginationLinks';
import PlaceCollection from './PlaceCollection';


    

/**
 * The PlacePagination model module.
 * @module model/PlacePagination
 * @version 1.0
 */
export default class PlacePagination extends Pagination {
    /**
     * Constructs a new "PlacePagination".
     * @alias module:model/PlacePagination
     * @class
    
     */
    constructor(
    
    ) {
        super(
                
        );

        this.embedded = null;

        this.embeddedType = PlaceCollection;
    }

    /**
    * Constructs a "PlacePagination" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/PlacePagination } object Optional instance to populate.
    * @return { module:model/PlacePagination } The populated "PlacePagination" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new PlacePagination();
        }
        object = super.constructFromData(data, object);

        if (data.hasOwnProperty('_embedded')) {
            object.embedded = ApiClient.convertToType(data['_embedded'], object.embeddedType);
        }

        return object;
    }

    

}



