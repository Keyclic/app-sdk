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
import CategoryLinks from './CategoryLinks';




/**
 * The Category model module.
 * @module model/Category
 * @version 1.19.1
 */
export default class Category  {
    /**
     * Constructs a new "Category".
     * @alias module:model/Category
     * @class

     * @param color { String }

     * @param name { String }

     * @param id { String }

     * @param createdAt { Date }

     */
    constructor(

        color,

        name,

        id,

        createdAt,

    ) {

        this.color = color;
        this.icon = null;
        this.name = name;
        this.id = id;
        this.identificationNumber = null;
        this.createdAt = createdAt;
        this.type = null;
        this.links = null;

        this.linksType = CategoryLinks;
    }

    /**
    * Constructs a "Category" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/Category } object Optional instance to populate.
    * @return { module:model/Category } The populated "Category" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new Category();
        }

        if (data.hasOwnProperty('color')) {
            object.color = ApiClient.convertToType(data.color, 'String');
        }
        if (data.hasOwnProperty('icon')) {
            object.icon = ApiClient.convertToType(data.icon, 'String');
        }
        if (data.hasOwnProperty('name')) {
            object.name = ApiClient.convertToType(data.name, 'String');
        }
        if (data.hasOwnProperty('id')) {
            object.id = ApiClient.convertToType(data.id, 'String');
        }
        if (data.hasOwnProperty('identificationNumber')) {
            object.identificationNumber = ApiClient.convertToType(data.identificationNumber, 'String');
        }
        if (data.hasOwnProperty('createdAt')) {
            object.createdAt = ApiClient.convertToType(data.createdAt, 'Date');
        }
        if (data.hasOwnProperty('type')) {
            object.type = ApiClient.convertToType(data.type, 'String');
        }
        if (data.hasOwnProperty('_links')) {
            object.links = ApiClient.convertToType(data._links, object.linksType);
        }

        return object;
    }



}



