# keyclic_sdk_api.api.ApplicationApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getApplication**](ApplicationApi.md#getapplication) | **GET** /applications/{application} | Retrieve one Application resource.


# **getApplication**
> Application getApplication(xKeyclicApp, application, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieve one Application resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';

final api_instance = ApplicationApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final application = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    final result = api_instance.getApplication(xKeyclicApp, application, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling ApplicationApi->getApplication: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **application** | **String**| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to 'fr-FR']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Application**](Application.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

