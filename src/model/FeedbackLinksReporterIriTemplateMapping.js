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
 * The FeedbackLinksReporterIriTemplateMapping model module.
 * @module model/FeedbackLinksReporterIriTemplateMapping
 * @version 1.19.1
 */
export default class FeedbackLinksReporterIriTemplateMapping  {
    /**
     * Constructs a new "FeedbackLinksReporterIriTemplateMapping".
     * @alias module:model/FeedbackLinksReporterIriTemplateMapping
     * @class

     */
    constructor(

    ) {

        this.person = null;

    }

    /**
    * Constructs a "FeedbackLinksReporterIriTemplateMapping" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/FeedbackLinksReporterIriTemplateMapping } object Optional instance to populate.
    * @return { module:model/FeedbackLinksReporterIriTemplateMapping } The populated "FeedbackLinksReporterIriTemplateMapping" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new FeedbackLinksReporterIriTemplateMapping();
        }

        if (data.hasOwnProperty('person')) {
            object.person = ApiClient.convertToType(data.person, 'String');
        }

        return object;
    }



}



