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
 * The CommentData model module.
 * @module model/CommentData
 * @version 1.0
 */
export default class CommentData  {
    /**
     * Constructs a new "CommentData".
     * @alias module:model/CommentData
     * @class

     * @param text { String }

     */
    constructor(

        text,

    ) {

        this.text = text;

    }

    /**
    * Constructs a "CommentData" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/CommentData } object Optional instance to populate.
    * @return { module:model/CommentData } The populated "CommentData" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new CommentData();
        }

        if (data.hasOwnProperty('text')) {
            object.text = ApiClient.convertToType(data.text, 'String');
        }

        return object;
    }



}



