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
import FeedbackLinksImageIriTemplateMapping from './FeedbackLinksImageIriTemplateMapping';


    

/**
 * The FeedbackLinksImageIriTemplate model module.
 * @module model/FeedbackLinksImageIriTemplate
 * @version 1.12.1
 */
export default class FeedbackLinksImageIriTemplate {
    /**
     * Constructs a new <code>FeedbackLinksImageIriTemplate</code>.
     * @alias module:model/FeedbackLinksImageIriTemplate
     * @class
    
     */
    constructor(
    ) {
        


        

        
    }

    /**
    * Constructs a <code>FeedbackLinksImageIriTemplate</code> from a plain JavaScript object, optionally creating a new instance.
    * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
    * @param {Object} data The plain JavaScript object bearing properties of interest.
    * @param {module:model/FeedbackLinksImageIriTemplate} obj Optional instance to populate.
    * @return {module:model/FeedbackLinksImageIriTemplate} The populated <code>FeedbackLinksImageIriTemplate</code> instance.
    */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new FeedbackLinksImageIriTemplate();

            


            if (data.hasOwnProperty('mapping')) {
                obj['mapping'] = FeedbackLinksImageIriTemplateMapping.constructFromObject(data['mapping']);
            }
        }
        return obj;
    }

    /**
     * @member {module:model/FeedbackLinksImageIriTemplateMapping} mapping
     */
    mapping = undefined;

    


    



}


