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
 * The PaginationLink model module.
 * @module model/PaginationLink
 */
export default class PaginationLink  {
    /**
     * Constructs a new "PaginationLink".
     * @alias module:model/PaginationLink
     * @class

     */
    constructor(

    ) {

        this.href = null;

    }

    /**
    * Constructs a "PaginationLink" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/PaginationLink } object Optional instance to populate.
    * @return { module:model/PaginationLink } The populated "PaginationLink" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new PaginationLink();
        }

        if (data.hasOwnProperty('href')) {
            object.href = ApiClient.convertToType(data.href, 'String');
        }

        return object;
    }



}



