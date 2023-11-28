# keyclic_sdk_api_platform.api.IntegrationLinkApi

## Load the API package
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteIntegrationLink**](IntegrationLinkApi.md#deleteintegrationlink) | **DELETE** /integration-links/{identifier} | Removes the IntegrationLink resource.
[**getIntegrationLink**](IntegrationLinkApi.md#getintegrationlink) | **GET** /integration-links/{identifier} | Retrieves a IntegrationLink resource.
[**getIntegrationLinks**](IntegrationLinkApi.md#getintegrationlinks) | **GET** /integration-links | Retrieves the collection of IntegrationLink resources.
[**patchIntegrationLink**](IntegrationLinkApi.md#patchintegrationlink) | **PATCH** /integration-links/{identifier} | Updates the IntegrationLink resource.
[**postIntegrationLink**](IntegrationLinkApi.md#postintegrationlink) | **POST** /integration-links | Creates a IntegrationLink resource.


# **deleteIntegrationLink**
> deleteIntegrationLink(identifier, acceptLanguage)

Removes the IntegrationLink resource.

Removes the IntegrationLink resource.

### Example 
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = IntegrationLinkApi();
final identifier = identifier_example; // String | Link identifier
final acceptLanguage = acceptLanguage_example; // String | 

try { 
    api_instance.deleteIntegrationLink(identifier, acceptLanguage);
} catch (e) {
    print('Exception when calling IntegrationLinkApi->deleteIntegrationLink: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Link identifier | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']

### Return type

void (empty response body)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIntegrationLink**
> IntegrationLinkJsonhalRead getIntegrationLink(identifier, acceptLanguage)

Retrieves a IntegrationLink resource.

Retrieves a IntegrationLink resource.

### Example 
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = IntegrationLinkApi();
final identifier = identifier_example; // String | Link identifier
final acceptLanguage = acceptLanguage_example; // String | 

try { 
    final result = api_instance.getIntegrationLink(identifier, acceptLanguage);
    print(result);
} catch (e) {
    print('Exception when calling IntegrationLinkApi->getIntegrationLink: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Link identifier | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']

### Return type

[**IntegrationLinkJsonhalRead**](IntegrationLinkJsonhalRead.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIntegrationLinks**
> GetIntegrationLinks200Response getIntegrationLinks(page, limit, pagination, existsLeftSquareBracketTargetRightSquareBracket, jsonData, jsonMetadata, integration, integrationLeftSquareBracketRightSquareBracket, source_, sourceLeftSquareBracketRightSquareBracket, state, stateLeftSquareBracketRightSquareBracket, target, targetLeftSquareBracketRightSquareBracket, acceptLanguage)

Retrieves the collection of IntegrationLink resources.

Retrieves the collection of IntegrationLink resources.

### Example 
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = IntegrationLinkApi();
final page = 56; // int | The collection page number
final limit = 56; // int | The number of items per page
final pagination = true; // bool | Enable or disable pagination
final existsLeftSquareBracketTargetRightSquareBracket = true; // bool | 
final jsonData = []; // List<String> | 
final jsonMetadata = []; // List<String> | 
final integration = integration_example; // String | 
final integrationLeftSquareBracketRightSquareBracket = []; // List<String> | 
final source_ = source__example; // String | 
final sourceLeftSquareBracketRightSquareBracket = []; // List<String> | 
final state = state_example; // String | 
final stateLeftSquareBracketRightSquareBracket = []; // List<String> | 
final target = target_example; // String | 
final targetLeftSquareBracketRightSquareBracket = []; // List<String> | 
final acceptLanguage = acceptLanguage_example; // String | 

try { 
    final result = api_instance.getIntegrationLinks(page, limit, pagination, existsLeftSquareBracketTargetRightSquareBracket, jsonData, jsonMetadata, integration, integrationLeftSquareBracketRightSquareBracket, source_, sourceLeftSquareBracketRightSquareBracket, state, stateLeftSquareBracketRightSquareBracket, target, targetLeftSquareBracketRightSquareBracket, acceptLanguage);
    print(result);
} catch (e) {
    print('Exception when calling IntegrationLinkApi->getIntegrationLinks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The collection page number | [optional] [default to 1]
 **limit** | **int**| The number of items per page | [optional] [default to 10]
 **pagination** | **bool**| Enable or disable pagination | [optional] 
 **existsLeftSquareBracketTargetRightSquareBracket** | **bool**|  | [optional] 
 **jsonData** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **jsonMetadata** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **integration** | **String**|  | [optional] 
 **integrationLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **source_** | **String**|  | [optional] 
 **sourceLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **state** | **String**|  | [optional] 
 **stateLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **target** | **String**|  | [optional] 
 **targetLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']

### Return type

[**GetIntegrationLinks200Response**](GetIntegrationLinks200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchIntegrationLink**
> IntegrationLinkJsonhalRead patchIntegrationLink(identifier, integrationLinkEditLinkCommandWrite, acceptLanguage)

Updates the IntegrationLink resource.

Updates the IntegrationLink resource.

### Example 
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = IntegrationLinkApi();
final identifier = identifier_example; // String | Link identifier
final integrationLinkEditLinkCommandWrite = IntegrationLinkEditLinkCommandWrite(); // IntegrationLinkEditLinkCommandWrite | The updated IntegrationLink resource
final acceptLanguage = acceptLanguage_example; // String | 

try { 
    final result = api_instance.patchIntegrationLink(identifier, integrationLinkEditLinkCommandWrite, acceptLanguage);
    print(result);
} catch (e) {
    print('Exception when calling IntegrationLinkApi->patchIntegrationLink: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Link identifier | 
 **integrationLinkEditLinkCommandWrite** | [**IntegrationLinkEditLinkCommandWrite**](IntegrationLinkEditLinkCommandWrite.md)| The updated IntegrationLink resource | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']

### Return type

[**IntegrationLinkJsonhalRead**](IntegrationLinkJsonhalRead.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/merge-patch+json
 - **Accept**: application/hal+json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postIntegrationLink**
> IntegrationLinkJsonhalRead postIntegrationLink(integrationLinkCreateLinkCommandWrite, acceptLanguage)

Creates a IntegrationLink resource.

Creates a IntegrationLink resource.

### Example 
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = IntegrationLinkApi();
final integrationLinkCreateLinkCommandWrite = IntegrationLinkCreateLinkCommandWrite(); // IntegrationLinkCreateLinkCommandWrite | The new IntegrationLink resource
final acceptLanguage = acceptLanguage_example; // String | 

try { 
    final result = api_instance.postIntegrationLink(integrationLinkCreateLinkCommandWrite, acceptLanguage);
    print(result);
} catch (e) {
    print('Exception when calling IntegrationLinkApi->postIntegrationLink: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integrationLinkCreateLinkCommandWrite** | [**IntegrationLinkCreateLinkCommandWrite**](IntegrationLinkCreateLinkCommandWrite.md)| The new IntegrationLink resource | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']

### Return type

[**IntegrationLinkJsonhalRead**](IntegrationLinkJsonhalRead.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

