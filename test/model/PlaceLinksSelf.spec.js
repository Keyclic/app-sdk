/**
 * Keyclic API Reference
 * The Keyclic API is build around [REST](https://en.wikipedia.org/wiki/Representational_State_Transfer). <br/> Our API has resource oriented URLs and uses HTTP response codes to indicate API errors. We support CQRS and all API accesses are performed over HTTPS, allowing you to interact securely with our API from a client-side web application.<br/><br/> **Authentication** <br/> Authentication is performed thought [JSON Web Tokens](https://jwt.io). <br/> JSON Web Tokens are an open industry standard RFC 7519 method for representing claims securely between two parties.<br/>There are many [open source projects](https://auth0.com/opensource) built around JWT in several programming languages that you can use in your application.<br/><br/>**Errors** <br/>We uses conventional HTTP response codes to indicate the success or failure of an API request, errors are represented as JSON objects following the [vnd.error](https://github.com/blongden/vnd.error) standard.<br/><br/>**Integration**<br/>To make the API integration easy as possible we have a sandbox environment to interact securely with our API.
 *
 * OpenAPI spec version: 1.7.1
 * Contact: techies@keyclic.com
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD.
    define(['expect.js', '../../src/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require('../../src/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.KeyclicApiReference);
  }
}(this, function(expect, KeyclicApiReference) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new KeyclicApiReference.PlaceLinksSelf();
  });

  var getProperty = function(object, getter, property) {
    // Use getter method if present; otherwise, get the property directly.
    if (typeof object[getter] === 'function')
      return object[getter]();
    else
      return object[property];
  }

  var setProperty = function(object, setter, property, value) {
    // Use setter method if present; otherwise, set the property directly.
    if (typeof object[setter] === 'function')
      object[setter](value);
    else
      object[property] = value;
  }

  describe('PlaceLinksSelf', function() {
    it('should create an instance of PlaceLinksSelf', function() {
      // uncomment below and update the code to test PlaceLinksSelf
      //var instane = new KeyclicApiReference.PlaceLinksSelf();
      //expect(instance).to.be.a(KeyclicApiReference.PlaceLinksSelf);
    });

    it('should have the property href (base name: "href")', function() {
      // uncomment below and update the code to test the property href
      //var instane = new KeyclicApiReference.PlaceLinksSelf();
      //expect(instance).to.be();
    });

    it('should have the property iriTemplate (base name: "iriTemplate")', function() {
      // uncomment below and update the code to test the property iriTemplate
      //var instane = new KeyclicApiReference.PlaceLinksSelf();
      //expect(instance).to.be();
    });

  });

}));
