/**
 * Keyclic API Reference
 * The Keyclic API is build around [REST](https://en.wikipedia.org/wiki/Representational_State_Transfer). <br/> Our API has resource oriented URLs and uses HTTP response codes to indicate API errors. We support CQRS and all API accesses are performed over HTTPS, allowing you to interact securely with our API from a client-side web application.<br/><br/> **Authentication** <br/> Authentication is performed thought [JSON Web Tokens](https://jwt.io). <br/> JSON Web Tokens are an open industry standard RFC 7519 method for representing claims securely between two parties.<br/>There are many [open source projects](https://auth0.com/opensource) built around JWT in several programming languages that you can use in your application.<br/><br/>**Errors** <br/>We uses conventional HTTP response codes to indicate the success or failure of an API request, errors are represented as JSON objects following the [vnd.error](https://github.com/blongden/vnd.error) standard.<br/><br/>**Integration**<br/>To make the API integration easy as possible we have a sandbox environment to interact securely with our API.
 *
 * OpenAPI spec version: 1.12.1
 * Contact: techies@keyclic.com
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 *
 */


import ApiClient from '../ApiClient';
import OperationLinksReportIriTemplate from './OperationLinksReportIriTemplate';


    

/**
 * The ReportLinksOperations model module.
 * @module model/ReportLinksOperations
 * @version 1.12.1
 */
export default class ReportLinksOperations {
    /**
     * Constructs a new <code>ReportLinksOperations</code>.
     * @alias module:model/ReportLinksOperations
     * @class
    
     */
    constructor(
    ) {
        


        

        
    }

    /**
    * Constructs a <code>ReportLinksOperations</code> from a plain JavaScript object, optionally creating a new instance.
    * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
    * @param {Object} data The plain JavaScript object bearing properties of interest.
    * @param {module:model/ReportLinksOperations} obj Optional instance to populate.
    * @return {module:model/ReportLinksOperations} The populated <code>ReportLinksOperations</code> instance.
    */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ReportLinksOperations();

            


            if (data.hasOwnProperty('href')) {
                obj['href'] = ApiClient.convertToType(data['href'], 'String');
            }
            if (data.hasOwnProperty('iriTemplate')) {
                obj['iriTemplate'] = OperationLinksReportIriTemplate.constructFromObject(data['iriTemplate']);
            }
        }
        return obj;
    }

    /**
     * The URI of the linked operations.
     * @member {String} href
     */
    href = undefined;
    /**
     * @member {module:model/OperationLinksReportIriTemplate} iriTemplate
     */
    iriTemplate = undefined;

    


    



}


