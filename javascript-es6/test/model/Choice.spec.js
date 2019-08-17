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
    instance = new @KeyclicSdkJavascript.Choice();
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

  describe('Choice', function() {
    it('should create an instance of Choice', function() {
      // uncomment below and update the code to test Choice
      //var instane = new @KeyclicSdkJavascript.Choice();
      //expect(instance).to.be.a(@KeyclicSdkJavascript.Choice);
    });

    it('should have the property _default (base name: "default")', function() {
      // uncomment below and update the code to test the property _default
      //var instane = new @KeyclicSdkJavascript.Choice();
      //expect(instance).to.be();
    });

    it('should have the property description (base name: "description")', function() {
      // uncomment below and update the code to test the property description
      //var instane = new @KeyclicSdkJavascript.Choice();
      //expect(instance).to.be();
    });

    it('should have the property _enum (base name: "enum")', function() {
      // uncomment below and update the code to test the property _enum
      //var instane = new @KeyclicSdkJavascript.Choice();
      //expect(instance).to.be();
    });

    it('should have the property format (base name: "format")', function() {
      // uncomment below and update the code to test the property format
      //var instane = new @KeyclicSdkJavascript.Choice();
      //expect(instance).to.be();
    });

    it('should have the property id (base name: "id")', function() {
      // uncomment below and update the code to test the property id
      //var instane = new @KeyclicSdkJavascript.Choice();
      //expect(instance).to.be();
    });

    it('should have the property maxItems (base name: "maxItems")', function() {
      // uncomment below and update the code to test the property maxItems
      //var instane = new @KeyclicSdkJavascript.Choice();
      //expect(instance).to.be();
    });

    it('should have the property minItems (base name: "minItems")', function() {
      // uncomment below and update the code to test the property minItems
      //var instane = new @KeyclicSdkJavascript.Choice();
      //expect(instance).to.be();
    });

    it('should have the property propertyOrder (base name: "propertyOrder")', function() {
      // uncomment below and update the code to test the property propertyOrder
      //var instane = new @KeyclicSdkJavascript.Choice();
      //expect(instance).to.be();
    });

    it('should have the property title (base name: "title")', function() {
      // uncomment below and update the code to test the property title
      //var instane = new @KeyclicSdkJavascript.Choice();
      //expect(instance).to.be();
    });

    it('should have the property type (base name: "type")', function() {
      // uncomment below and update the code to test the property type
      //var instane = new @KeyclicSdkJavascript.Choice();
      //expect(instance).to.be();
    });

  });

}));