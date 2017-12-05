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
import SuccessLoginCredentialsAdministratorOf from './SuccessLoginCredentialsAdministratorOf';
import SuccessLoginCredentialsMemberOf from './SuccessLoginCredentialsMemberOf';




/**
 * The SuccessLoginCredentials model module.
 * @module model/SuccessLoginCredentials
 * @version 1.0
 */
export default class SuccessLoginCredentials  {
    /**
     * Constructs a new "SuccessLoginCredentials".
     * @alias module:model/SuccessLoginCredentials
     * @class

     */
    constructor(

    ) {

        this.id = null;
        this.login = null;
        this.roles = [];
        this.administratorOf = [];
        this.memberOf = [];

        this.administratorOfType = SuccessLoginCredentialsAdministratorOf;
        this.memberOfType = SuccessLoginCredentialsMemberOf;
    }

    /**
    * Constructs a "SuccessLoginCredentials" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/SuccessLoginCredentials } object Optional instance to populate.
    * @return { module:model/SuccessLoginCredentials } The populated "SuccessLoginCredentials" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new SuccessLoginCredentials();
        }

        if (data.hasOwnProperty('id')) {
            object.id = ApiClient.convertToType(data.id, 'String');
        }
        if (data.hasOwnProperty('login')) {
            object.login = ApiClient.convertToType(data.login, 'String');
        }
        if (data.hasOwnProperty('roles')) {
            object.roles = ApiClient.convertToType(data.roles, '[\'String\']');
        }
        if (data.hasOwnProperty('administratorOf')) {
            object.administratorOf = ApiClient.convertToType(data.administratorOf, [object.administratorOfType]);
        }
        if (data.hasOwnProperty('memberOf')) {
            object.memberOf = ApiClient.convertToType(data.memberOf, [object.memberOfType]);
        }

        return object;
    }



}



