# keyclic_sdk_api.api.DeltaApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postDeltum**](DeltaApi.md#postDeltum) | **POST** /delta | Create one Deltum resource.


# **postDeltum**
> String postDeltum(xKeyclicApp, parseData, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Create one Deltum resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';

var api_instance = DeltaApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var parseData = ParseData(); // ParseData | 
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.postDeltum(xKeyclicApp, parseData, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling DeltaApi->postDeltum: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **parseData** | [**ParseData**](ParseData.md)|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

