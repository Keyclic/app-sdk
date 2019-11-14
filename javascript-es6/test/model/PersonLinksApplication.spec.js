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

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD.
    define(['expect.js', '../../src/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require('../../src/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.@KeyclicSdkJavascript);
  }
}(this, function(expect, @KeyclicSdkJavascript) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new @KeyclicSdkJavascript.PersonLinksApplication();
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

  describe('PersonLinksApplication', function() {
    it('should create an instance of PersonLinksApplication', function() {
      // uncomment below and update the code to test PersonLinksApplication
      //var instane = new @KeyclicSdkJavascript.PersonLinksApplication();
      //expect(instance).to.be.a(@KeyclicSdkJavascript.PersonLinksApplication);
    });

    it('should have the property href (base name: "href")', function() {
      // uncomment below and update the code to test the property href
      //var instane = new @KeyclicSdkJavascript.PersonLinksApplication();
      //expect(instance).to.be();
    });

    it('should have the property iriTemplate (base name: "iriTemplate")', function() {
      // uncomment below and update the code to test the property iriTemplate
      //var instane = new @KeyclicSdkJavascript.PersonLinksApplication();
      //expect(instance).to.be();
    });

  });

}));
