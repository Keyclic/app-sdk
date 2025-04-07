# keyclic_sdk_api_platform.api.CategoryApi

## Load the API package
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCategory**](CategoryApi.md#getcategory) | **GET** /categories/{identifier} | Retrieves a Category resource.
[**getCategoryCollection**](CategoryApi.md#getcategorycollection) | **GET** /categories | Retrieves the collection of Category resources.


# **getCategory**
> CategoryJsonhalRead getCategory(identifier, xKeyclicApp, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieves a Category resource.

Retrieves a Category resource.

### Example
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = CategoryApi();
final identifier = identifier_example; // String | Category identifier
final xKeyclicApp = xKeyclicApp_example; // String | 
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    final result = api_instance.getCategory(identifier, xKeyclicApp, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling CategoryApi->getCategory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Category identifier | 
 **xKeyclicApp** | **String**|  | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**CategoryJsonhalRead**](CategoryJsonhalRead.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCategoryCollection**
> GetCategoryCollection200Response getCategoryCollection(xKeyclicApp, xOrganizationId, page, limit, pagination, search, enabled, leaf, level, levelLeftSquareBracketRightSquareBracket, categoryPlaceRules, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieves the collection of Category resources.

Retrieves the collection of Category resources.

### Example
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = CategoryApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final xOrganizationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final page = 56; // int | The collection page number
final limit = 56; // int | The number of items per page
final pagination = true; // bool | Enable or disable pagination
final search = search_example; // String | 
final enabled = true; // bool | 
final leaf = true; // bool | 
final level = 56; // int | 
final levelLeftSquareBracketRightSquareBracket = []; // List<int> | 
final categoryPlaceRules = categoryPlaceRules_example; // String | Filter categories by place rules
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    final result = api_instance.getCategoryCollection(xKeyclicApp, xOrganizationId, page, limit, pagination, search, enabled, leaf, level, levelLeftSquareBracketRightSquareBracket, categoryPlaceRules, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling CategoryApi->getCategoryCollection: $e\n');
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
 **search** | **String**|  | [optional] 
 **enabled** | **bool**|  | [optional] 
 **leaf** | **bool**|  | [optional] 
 **level** | **int**|  | [optional] 
 **levelLeftSquareBracketRightSquareBracket** | [**List<int>**](int.md)|  | [optional] [default to const []]
 **categoryPlaceRules** | **String**| Filter categories by place rules | [optional] 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**GetCategoryCollection200Response**](GetCategoryCollection200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

