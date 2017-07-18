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

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD.
    define(['expect.js', '../../src/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require('../../src/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.KeyclicApi);
  }
}(this, function(expect, KeyclicApi) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new KeyclicApi.PlaceData();
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

  describe('PlaceData', function() {
    it('should create an instance of PlaceData', function() {
      // uncomment below and update the code to test PlaceData
      //var instane = new KeyclicApi.PlaceData();
      //expect(instance).to.be.a(KeyclicApi.PlaceData);
    });

    it('should have the property name (base name: "name")', function() {
      // uncomment below and update the code to test the property name
      //var instane = new KeyclicApi.PlaceData();
      //expect(instance).to.be();
    });

    it('should have the property branchCode (base name: "branchCode")', function() {
      // uncomment below and update the code to test the property branchCode
      //var instane = new KeyclicApi.PlaceData();
      //expect(instance).to.be();
    });

    it('should have the property polygon (base name: "polygon")', function() {
      // uncomment below and update the code to test the property polygon
      //var instane = new KeyclicApi.PlaceData();
      //expect(instance).to.be();
    });

    it('should have the property elevation (base name: "elevation")', function() {
      // uncomment below and update the code to test the property elevation
      //var instane = new KeyclicApi.PlaceData();
      //expect(instance).to.be();
    });

  });

}));
