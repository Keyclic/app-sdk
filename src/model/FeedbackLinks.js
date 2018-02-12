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
import FeedbackLinksCategory from './FeedbackLinksCategory';
import FeedbackLinksImage from './FeedbackLinksImage';
import FeedbackLinksReporter from './FeedbackLinksReporter';
import FeedbackLinksSelf from './FeedbackLinksSelf';
import FeedbackLinksTracking from './FeedbackLinksTracking';




/**
 * The FeedbackLinks model module.
 * @module model/FeedbackLinks
 * @version 1.19.1
 */
export default class FeedbackLinks  {
    /**
     * Constructs a new "FeedbackLinks".
     * @alias module:model/FeedbackLinks
     * @class

     */
    constructor(

    ) {

        this.self = null;
        this.category = null;
        this.reporter = null;
        this.image = null;
        this.tracking = null;

        this.selfType = FeedbackLinksSelf;
        this.categoryType = FeedbackLinksCategory;
        this.reporterType = FeedbackLinksReporter;
        this.imageType = FeedbackLinksImage;
        this.trackingType = FeedbackLinksTracking;
    }

    /**
    * Constructs a "FeedbackLinks" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/FeedbackLinks } object Optional instance to populate.
    * @return { module:model/FeedbackLinks } The populated "FeedbackLinks" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new FeedbackLinks();
        }

        if (data.hasOwnProperty('self')) {
            object.self = ApiClient.convertToType(data.self, object.selfType);
        }
        if (data.hasOwnProperty('category')) {
            object.category = ApiClient.convertToType(data.category, object.categoryType);
        }
        if (data.hasOwnProperty('reporter')) {
            object.reporter = ApiClient.convertToType(data.reporter, object.reporterType);
        }
        if (data.hasOwnProperty('image')) {
            object.image = ApiClient.convertToType(data.image, object.imageType);
        }
        if (data.hasOwnProperty('tracking')) {
            object.tracking = ApiClient.convertToType(data.tracking, object.trackingType);
        }

        return object;
    }



}



