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
    instance = new @KeyclicSdkJavascript.PersonPatch();
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

  describe('PersonPatch', function() {
    it('should create an instance of PersonPatch', function() {
      // uncomment below and update the code to test PersonPatch
      //var instane = new @KeyclicSdkJavascript.PersonPatch();
      //expect(instance).to.be.a(@KeyclicSdkJavascript.PersonPatch);
    });

    it('should have the property agreement (base name: "agreement")', function() {
      // uncomment below and update the code to test the property agreement
      //var instane = new @KeyclicSdkJavascript.PersonPatch();
      //expect(instance).to.be();
    });

    it('should have the property givenName (base name: "givenName")', function() {
      // uncomment below and update the code to test the property givenName
      //var instane = new @KeyclicSdkJavascript.PersonPatch();
      //expect(instance).to.be();
    });

    it('should have the property familyName (base name: "familyName")', function() {
      // uncomment below and update the code to test the property familyName
      //var instane = new @KeyclicSdkJavascript.PersonPatch();
      //expect(instance).to.be();
    });

    it('should have the property email (base name: "email")', function() {
      // uncomment below and update the code to test the property email
      //var instane = new @KeyclicSdkJavascript.PersonPatch();
      //expect(instance).to.be();
    });

    it('should have the property jobTitle (base name: "jobTitle")', function() {
      // uncomment below and update the code to test the property jobTitle
      //var instane = new @KeyclicSdkJavascript.PersonPatch();
      //expect(instance).to.be();
    });

    it('should have the property image (base name: "image")', function() {
      // uncomment below and update the code to test the property image
      //var instane = new @KeyclicSdkJavascript.PersonPatch();
      //expect(instance).to.be();
    });

    it('should have the property optIn (base name: "optIn")', function() {
      // uncomment below and update the code to test the property optIn
      //var instane = new @KeyclicSdkJavascript.PersonPatch();
      //expect(instance).to.be();
    });

    it('should have the property preferences (base name: "preferences")', function() {
      // uncomment below and update the code to test the property preferences
      //var instane = new @KeyclicSdkJavascript.PersonPatch();
      //expect(instance).to.be();
    });

    it('should have the property telephone (base name: "telephone")', function() {
      // uncomment below and update the code to test the property telephone
      //var instane = new @KeyclicSdkJavascript.PersonPatch();
      //expect(instance).to.be();
    });

  });

}));
