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
import OperationLinksImage from './OperationLinksImage';
import OperationLinksOperator from './OperationLinksOperator';
import OperationLinksReport from './OperationLinksReport';
import OperationLinksSelf from './OperationLinksSelf';




/**
 * The OperationLinks model module.
 * @module model/OperationLinks
 */
export default class OperationLinks  {
    /**
     * Constructs a new "OperationLinks".
     * @alias module:model/OperationLinks
     * @class

     */
    constructor(

    ) {

        this.self = null;
        this.image = null;
        this.report = null;
        this.operator = null;

        this.selfType = OperationLinksSelf;
        this.imageType = OperationLinksImage;
        this.reportType = OperationLinksReport;
        this.operatorType = OperationLinksOperator;
    }

    /**
    * Constructs a "OperationLinks" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/OperationLinks } object Optional instance to populate.
    * @return { module:model/OperationLinks } The populated "OperationLinks" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new OperationLinks();
        }

        if (data.hasOwnProperty('self')) {
            object.self = ApiClient.convertToType(data.self, object.selfType);
        }
        if (data.hasOwnProperty('image')) {
            object.image = ApiClient.convertToType(data.image, object.imageType);
        }
        if (data.hasOwnProperty('report')) {
            object.report = ApiClient.convertToType(data.report, object.reportType);
        }
        if (data.hasOwnProperty('operator')) {
            object.operator = ApiClient.convertToType(data.operator, object.operatorType);
        }

        return object;
    }



}



