# keyclic_sdk_api_platform.api.BrandApi

## Load the API package
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBrand**](BrandApi.md#getbrand) | **GET** /brands/{identifier} | Retrieves a Brand resource.
[**getBrandCollection**](BrandApi.md#getbrandcollection) | **GET** /brands | Retrieves the collection of Brand resources.


# **getBrand**
> BrandJsonhalRead getBrand(identifier, xKeyclicApp, xOrganizationId, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieves a Brand resource.

Retrieves a Brand resource.

### Example
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = BrandApi();
final identifier = identifier_example; // String | Brand identifier
final xKeyclicApp = xKeyclicApp_example; // String | 
final xOrganizationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    final result = api_instance.getBrand(identifier, xKeyclicApp, xOrganizationId, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling BrandApi->getBrand: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Brand identifier | 
 **xKeyclicApp** | **String**|  | 
 **xOrganizationId** | **String**|  | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**BrandJsonhalRead**](BrandJsonhalRead.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBrandCollection**
> GetBrandCollection200Response getBrandCollection(xKeyclicApp, xOrganizationId, page, limit, pagination, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieves the collection of Brand resources.

Retrieves the collection of Brand resources.

### Example
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = BrandApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final xOrganizationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final page = 56; // int | The collection page number
final limit = 56; // int | The number of items per page
final pagination = true; // bool | Enable or disable pagination
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    final result = api_instance.getBrandCollection(xKeyclicApp, xOrganizationId, page, limit, pagination, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling BrandApi->getBrandCollection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | 
 **xOrganizationId** | **String**|  | 
 **page** | **int**| The collection page number | [optional] [default to 1]
 **limit** | **int**| The number of items per page | [optional] [default to 10]
 **pagination** | **bool**| Enable or disable pagination | [optional] 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**GetBrandCollection200Response**](GetBrandCollection200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

