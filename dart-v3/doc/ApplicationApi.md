# keyclic_sdk_api_platform.api.ApplicationApi

## Load the API package
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getApplication**](ApplicationApi.md#getapplication) | **GET** /applications/{identifier} | Retrieves a Application resource.


# **getApplication**
> ApplicationJsonhalRead getApplication(identifier, xKeyclicApp, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieves a Application resource.

Retrieves a Application resource.

### Example
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = ApplicationApi();
final identifier = identifier_example; // String | Application identifier
final xKeyclicApp = xKeyclicApp_example; // String | 
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    final result = api_instance.getApplication(identifier, xKeyclicApp, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling ApplicationApi->getApplication: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Application identifier | 
 **xKeyclicApp** | **String**|  | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**ApplicationJsonhalRead**](ApplicationJsonhalRead.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

