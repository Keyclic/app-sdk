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
import ApplicationLinksSelf from './ApplicationLinksSelf';




/**
 * The ApplicationLinks model module.
 * @module model/ApplicationLinks
 * @version 1.19.1
 */
export default class ApplicationLinks  {
    /**
     * Constructs a new "ApplicationLinks".
     * @alias module:model/ApplicationLinks
     * @class

     */
    constructor(

    ) {

        this.self = null;

        this.selfType = ApplicationLinksSelf;
    }

    /**
    * Constructs a "ApplicationLinks" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/ApplicationLinks } object Optional instance to populate.
    * @return { module:model/ApplicationLinks } The populated "ApplicationLinks" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new ApplicationLinks();
        }

        if (data.hasOwnProperty('self')) {
            object.self = ApiClient.convertToType(data.self, object.selfType);
        }

        return object;
    }



}



