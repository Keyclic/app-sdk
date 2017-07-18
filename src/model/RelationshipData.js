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
 * The RelationshipData model module.
 * @module model/RelationshipData
 * @version 1.0
 */
export default class RelationshipData  {
    /**
     * Constructs a new "RelationshipData".
     * @alias module:model/RelationshipData
     * @class
    
     * @param organization { String } 
    
     */
    constructor(
    
        organization,
    
    ) {

        this.organization = organization;

    }

    /**
    * Constructs a "RelationshipData" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/RelationshipData } type Optional instance to populate.
    * @return { module:model/RelationshipData } The populated "RelationshipData" instance.
    */
    static constructFromObject(
        data,
        type = RelationshipData,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }


        let object = new type();

        if (data.hasOwnProperty('organization')) {
            object.organization = ApiClient.convertToType(data['organization'], 'String');
        }

        return object;

    }

    

}



