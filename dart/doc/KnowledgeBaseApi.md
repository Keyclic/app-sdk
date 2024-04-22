# keyclic_sdk_api.api.KnowledgeBaseApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetArticlesByKnowledgeBase**](KnowledgeBaseApi.md#cgetarticlesbyknowledgebase) | **GET** /knowledge-bases/{knowledgeBase}/articles | Retrieve all Article resources.
[**cgetSectionsByKnowledgeBase**](KnowledgeBaseApi.md#cgetsectionsbyknowledgebase) | **GET** /knowledge-bases/{knowledgeBase}/sections | Retrieve all Section resources.
[**getKnowledgeBase**](KnowledgeBaseApi.md#getknowledgebase) | **GET** /knowledge-bases/{knowledgeBase} | Retrieve one KnowledgeBase resource.


# **cgetArticlesByKnowledgeBase**
> ArticlePagination cgetArticlesByKnowledgeBase(xKeyclicApp, knowledgeBase, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, after, before, section, sectionsLeftSquareBracketRightSquareBracket, page, limit)

Retrieve all Article resources.

### Example
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = KnowledgeBaseApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final knowledgeBase = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
final orderLeftSquareBracketRightSquareBracket = []; // List<String> | 
final after = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 
final section = section_example; // String | 
final sectionsLeftSquareBracketRightSquareBracket = []; // List<String> | 
final page = 56; // int | Page of the overview.
final limit = 56; // int | Page of the overview.

try {
    final result = api_instance.cgetArticlesByKnowledgeBase(xKeyclicApp, knowledgeBase, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, after, before, section, sectionsLeftSquareBracketRightSquareBracket, page, limit);
    print(result);
} catch (e) {
    print('Exception when calling KnowledgeBaseApi->cgetArticlesByKnowledgeBase: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **knowledgeBase** | **String**| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **orderLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **section** | **String**|  | [optional] 
 **sectionsLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]

### Return type

[**ArticlePagination**](ArticlePagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cgetSectionsByKnowledgeBase**
> SectionPagination cgetSectionsByKnowledgeBase(xKeyclicApp, knowledgeBase, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, after, before, page, limit)

Retrieve all Section resources.

### Example
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = KnowledgeBaseApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final knowledgeBase = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
final orderLeftSquareBracketRightSquareBracket = []; // List<String> | 
final after = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 
final page = 56; // int | Page of the overview.
final limit = 56; // int | Page of the overview.

try {
    final result = api_instance.cgetSectionsByKnowledgeBase(xKeyclicApp, knowledgeBase, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, after, before, page, limit);
    print(result);
} catch (e) {
    print('Exception when calling KnowledgeBaseApi->cgetSectionsByKnowledgeBase: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **knowledgeBase** | **String**| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **orderLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]

### Return type

[**SectionPagination**](SectionPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getKnowledgeBase**
> KnowledgeBase getKnowledgeBase(xKeyclicApp, knowledgeBase, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieve one KnowledgeBase resource.

### Example
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = KnowledgeBaseApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final knowledgeBase = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    final result = api_instance.getKnowledgeBase(xKeyclicApp, knowledgeBase, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling KnowledgeBaseApi->getKnowledgeBase: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **knowledgeBase** | **String**| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**KnowledgeBase**](KnowledgeBase.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

