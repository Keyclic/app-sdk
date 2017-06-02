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
import CategoryLinks from './CategoryLinks';


    

/**
 * The Category model module.
 * @module model/Category
 * @version 1.12.1
 */
export default class Category {
    /**
     * Constructs a new <code>Category</code>.
     * A category can be used as a property of a feedback, categories are created an managed by an organization, each organization can have is own set of categories.
     * @alias module:model/Category
     * @class
    
     */
    constructor(
    ) {
        


        

        
    }

    /**
    * Constructs a <code>Category</code> from a plain JavaScript object, optionally creating a new instance.
    * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
    * @param {Object} data The plain JavaScript object bearing properties of interest.
    * @param {module:model/Category} obj Optional instance to populate.
    * @return {module:model/Category} The populated <code>Category</code> instance.
    */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new Category();

            


            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('color')) {
                obj['color'] = ApiClient.convertToType(data['color'], 'String');
            }
            if (data.hasOwnProperty('icon')) {
                obj['icon'] = ApiClient.convertToType(data['icon'], 'String');
            }
            if (data.hasOwnProperty('createdAt')) {
                obj['createdAt'] = ApiClient.convertToType(data['createdAt'], 'Date');
            }
            if (data.hasOwnProperty('_links')) {
                obj['_links'] = CategoryLinks.constructFromObject(data['_links']);
            }
        }
        return obj;
    }

    /**
     * The name of the category.
     * @member {String} name
     */
    name = undefined;
    /**
     * The color of the category as an hexadecimal string
     * @member {String} color
     */
    color = undefined;
    /**
     * The icon of the of the category as a string, can be any string.
     * @member {String} icon
     */
    icon = undefined;
    /**
     * The creation date.
     * @member {Date} createdAt
     */
    createdAt = undefined;
    /**
     * @member {module:model/CategoryLinks} _links
     */
    _links = undefined;

    


    



}


