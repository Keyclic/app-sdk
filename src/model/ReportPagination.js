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
import Pagination from './Pagination';
import PaginationLinks from './PaginationLinks';
import ReportCollection from './ReportCollection';




/**
 * The ReportPagination model module.
 * @module model/ReportPagination
 * @version 1.19.1
 */
export default class ReportPagination extends Pagination {
    /**
     * Constructs a new "ReportPagination".
     * @alias module:model/ReportPagination
     * @class

     */
    constructor(

    ) {
        super(

        );

        this.embedded = null;

        this.embeddedType = ReportCollection;
    }

    /**
    * Constructs a "ReportPagination" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/ReportPagination } object Optional instance to populate.
    * @return { module:model/ReportPagination } The populated "ReportPagination" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new ReportPagination();
        }
        object = super.constructFromData(data, object);

        if (data.hasOwnProperty('_embedded')) {
            object.embedded = ApiClient.convertToType(data._embedded, object.embeddedType);
        }

        return object;
    }



}



