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
 * The PlaceLinksContainsPlacesIriTemplateMapping model module.
 * @module model/PlaceLinksContainsPlacesIriTemplateMapping
 * @version 1.19.1
 */
export default class PlaceLinksContainsPlacesIriTemplateMapping  {
    /**
     * Constructs a new "PlaceLinksContainsPlacesIriTemplateMapping".
     * @alias module:model/PlaceLinksContainsPlacesIriTemplateMapping
     * @class

     */
    constructor(

    ) {

        this.parent = null;

    }

    /**
    * Constructs a "PlaceLinksContainsPlacesIriTemplateMapping" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/PlaceLinksContainsPlacesIriTemplateMapping } object Optional instance to populate.
    * @return { module:model/PlaceLinksContainsPlacesIriTemplateMapping } The populated "PlaceLinksContainsPlacesIriTemplateMapping" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new PlaceLinksContainsPlacesIriTemplateMapping();
        }

        if (data.hasOwnProperty('parent')) {
            object.parent = ApiClient.convertToType(data.parent, 'String');
        }

        return object;
    }



}



