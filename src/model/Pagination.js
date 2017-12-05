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
import Collection from './Collection';
import PaginationLinks from './PaginationLinks';




/**
 * The Pagination model module.
 * @module model/Pagination
 * @version 1.0
 */
export default class Pagination  {
    /**
     * Constructs a new "Pagination".
     * @alias module:model/Pagination
     * @class

     */
    constructor(

    ) {

        this.limit = null;
        this.page = null;
        this.pages = null;
        this.total = null;
        this.embedded = null;
        this.links = null;

        this.embeddedType = Collection;
        this.linksType = PaginationLinks;
    }

    /**
    * Constructs a "Pagination" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/Pagination } object Optional instance to populate.
    * @return { module:model/Pagination } The populated "Pagination" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new Pagination();
        }

        if (data.hasOwnProperty('limit')) {
            object.limit = ApiClient.convertToType(data.limit, 'Number');
        }
        if (data.hasOwnProperty('page')) {
            object.page = ApiClient.convertToType(data.page, 'Number');
        }
        if (data.hasOwnProperty('pages')) {
            object.pages = ApiClient.convertToType(data.pages, 'Number');
        }
        if (data.hasOwnProperty('total')) {
            object.total = ApiClient.convertToType(data.total, 'Number');
        }
        if (data.hasOwnProperty('_embedded')) {
            object.embedded = ApiClient.convertToType(data._embedded, object.embeddedType);
        }
        if (data.hasOwnProperty('_links')) {
            object.links = ApiClient.convertToType(data._links, object.linksType);
        }

        return object;
    }



}



