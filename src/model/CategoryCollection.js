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
import Category from './Category';




/**
 * The CategoryCollection model module.
 * @module model/CategoryCollection
 * @version 1.19.1
 */
export default class CategoryCollection  {
    /**
     * Constructs a new "CategoryCollection".
     * @alias module:model/CategoryCollection
     * @class

     */
    constructor(

    ) {

        this.items = [];

        this.itemsType = Category;
    }

    /**
    * Constructs a "CategoryCollection" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/CategoryCollection } object Optional instance to populate.
    * @return { module:model/CategoryCollection } The populated "CategoryCollection" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new CategoryCollection();
        }

        if (data.hasOwnProperty('items')) {
            object.items = ApiClient.convertToType(data.items, [object.itemsType]);
        }

        return object;
    }



}



