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
 * The LoginData model module.
 * @module model/LoginData
 * @version 1.0
 */
export default class LoginData  {
    /**
     * Constructs a new "LoginData".
     * @alias module:model/LoginData
     * @class
    
     * @param login { String } 
    
     * @param password { String } 
    
     */
    constructor(
    
        login,
    
        password,
    
    ) {

        this.login = login;
        this.password = password;

    }

    /**
    * Constructs a "LoginData" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/LoginData } type Optional instance to populate.
    * @return { module:model/LoginData } The populated "LoginData" instance.
    */
    static constructFromObject(
        data,
        type = LoginData,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }


        let object = new type();

        if (data.hasOwnProperty('login')) {
            object.login = ApiClient.convertToType(data['login'], 'String');
        }
        if (data.hasOwnProperty('password')) {
            object.password = ApiClient.convertToType(data['password'], 'String');
        }

        return object;

    }

    

}



