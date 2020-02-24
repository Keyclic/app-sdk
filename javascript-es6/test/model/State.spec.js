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
    instance = new @KeyclicSdkJavascript.State();
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

  describe('State', function() {
    it('should create an instance of State', function() {
      // uncomment below and update the code to test State
      //var instane = new @KeyclicSdkJavascript.State();
      //expect(instance).to.be.a(@KeyclicSdkJavascript.State);
    });

    it('should have the property id (base name: "id")', function() {
      // uncomment below and update the code to test the property id
      //var instane = new @KeyclicSdkJavascript.State();
      //expect(instance).to.be();
    });

    it('should have the property type (base name: "type")', function() {
      // uncomment below and update the code to test the property type
      //var instane = new @KeyclicSdkJavascript.State();
      //expect(instance).to.be();
    });

    it('should have the property name (base name: "name")', function() {
      // uncomment below and update the code to test the property name
      //var instane = new @KeyclicSdkJavascript.State();
      //expect(instance).to.be();
    });

    it('should have the property description (base name: "description")', function() {
      // uncomment below and update the code to test the property description
      //var instane = new @KeyclicSdkJavascript.State();
      //expect(instance).to.be();
    });

    it('should have the property color (base name: "color")', function() {
      // uncomment below and update the code to test the property color
      //var instane = new @KeyclicSdkJavascript.State();
      //expect(instance).to.be();
    });

    it('should have the property progression (base name: "progression")', function() {
      // uncomment below and update the code to test the property progression
      //var instane = new @KeyclicSdkJavascript.State();
      //expect(instance).to.be();
    });

  });

}));
