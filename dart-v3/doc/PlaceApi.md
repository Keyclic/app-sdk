# keyclic_sdk_api_platform.api.PlaceApi

## Load the API package
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPlaceCollection**](PlaceApi.md#getplacecollection) | **GET** /asset-places | Retrieves the collection of Place resources.
[**patchPlace**](PlaceApi.md#patchplace) | **PATCH** /v2/places/{identifier} | Updates the Place resource.
[**postPlace**](PlaceApi.md#postplace) | **POST** /places | Creates a Place resource.


# **getPlaceCollection**
> GetPlaceCollection200Response getPlaceCollection(xKeyclicApp, xOrganizationId, page, limit, pagination, search, createdAtLeftSquareBracketBeforeRightSquareBracket, createdAtLeftSquareBracketStrictlyBeforeRightSquareBracket, createdAtLeftSquareBracketAfterRightSquareBracket, createdAtLeftSquareBracketStrictlyAfterRightSquareBracket, updatedAtLeftSquareBracketBeforeRightSquareBracket, updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket, updatedAtLeftSquareBracketAfterRightSquareBracket, updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket, orderLeftSquareBracketCreatedAtRightSquareBracket, orderLeftSquareBracketNameRightSquareBracket, orderLeftSquareBracketUpdatedAtRightSquareBracket, level, levelLeftSquareBracketRightSquareBracket, parent, parentLeftSquareBracketRightSquareBracket, subtree, existsLeftSquareBracketContractsRightSquareBracket, existsLeftSquareBracketQuotesRightSquareBracket, contracts, contractsLeftSquareBracketRightSquareBracket, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieves the collection of Place resources.

Retrieves the collection of Place resources.

### Example
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = PlaceApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final xOrganizationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final page = 56; // int | The collection page number
final limit = 56; // int | The number of items per page
final pagination = true; // bool | Enable or disable pagination
final search = search_example; // String | 
final createdAtLeftSquareBracketBeforeRightSquareBracket = createdAtLeftSquareBracketBeforeRightSquareBracket_example; // String | 
final createdAtLeftSquareBracketStrictlyBeforeRightSquareBracket = createdAtLeftSquareBracketStrictlyBeforeRightSquareBracket_example; // String | 
final createdAtLeftSquareBracketAfterRightSquareBracket = createdAtLeftSquareBracketAfterRightSquareBracket_example; // String | 
final createdAtLeftSquareBracketStrictlyAfterRightSquareBracket = createdAtLeftSquareBracketStrictlyAfterRightSquareBracket_example; // String | 
final updatedAtLeftSquareBracketBeforeRightSquareBracket = updatedAtLeftSquareBracketBeforeRightSquareBracket_example; // String | 
final updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket = updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket_example; // String | 
final updatedAtLeftSquareBracketAfterRightSquareBracket = updatedAtLeftSquareBracketAfterRightSquareBracket_example; // String | 
final updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket = updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket_example; // String | 
final orderLeftSquareBracketCreatedAtRightSquareBracket = orderLeftSquareBracketCreatedAtRightSquareBracket_example; // String | 
final orderLeftSquareBracketNameRightSquareBracket = orderLeftSquareBracketNameRightSquareBracket_example; // String | 
final orderLeftSquareBracketUpdatedAtRightSquareBracket = orderLeftSquareBracketUpdatedAtRightSquareBracket_example; // String | 
final level = 56; // int | 
final levelLeftSquareBracketRightSquareBracket = []; // List<int> | 
final parent = parent_example; // String | 
final parentLeftSquareBracketRightSquareBracket = []; // List<String> | 
final subtree = subtree_example; // String | 
final existsLeftSquareBracketContractsRightSquareBracket = true; // bool | 
final existsLeftSquareBracketQuotesRightSquareBracket = true; // bool | 
final contracts = contracts_example; // String | 
final contractsLeftSquareBracketRightSquareBracket = []; // List<String> | 
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    final result = api_instance.getPlaceCollection(xKeyclicApp, xOrganizationId, page, limit, pagination, search, createdAtLeftSquareBracketBeforeRightSquareBracket, createdAtLeftSquareBracketStrictlyBeforeRightSquareBracket, createdAtLeftSquareBracketAfterRightSquareBracket, createdAtLeftSquareBracketStrictlyAfterRightSquareBracket, updatedAtLeftSquareBracketBeforeRightSquareBracket, updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket, updatedAtLeftSquareBracketAfterRightSquareBracket, updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket, orderLeftSquareBracketCreatedAtRightSquareBracket, orderLeftSquareBracketNameRightSquareBracket, orderLeftSquareBracketUpdatedAtRightSquareBracket, level, levelLeftSquareBracketRightSquareBracket, parent, parentLeftSquareBracketRightSquareBracket, subtree, existsLeftSquareBracketContractsRightSquareBracket, existsLeftSquareBracketQuotesRightSquareBracket, contracts, contractsLeftSquareBracketRightSquareBracket, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling PlaceApi->getPlaceCollection: $e\n');
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
 **createdAtLeftSquareBracketBeforeRightSquareBracket** | **String**|  | [optional] 
 **createdAtLeftSquareBracketStrictlyBeforeRightSquareBracket** | **String**|  | [optional] 
 **createdAtLeftSquareBracketAfterRightSquareBracket** | **String**|  | [optional] 
 **createdAtLeftSquareBracketStrictlyAfterRightSquareBracket** | **String**|  | [optional] 
 **updatedAtLeftSquareBracketBeforeRightSquareBracket** | **String**|  | [optional] 
 **updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket** | **String**|  | [optional] 
 **updatedAtLeftSquareBracketAfterRightSquareBracket** | **String**|  | [optional] 
 **updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket** | **String**|  | [optional] 
 **orderLeftSquareBracketCreatedAtRightSquareBracket** | **String**|  | [optional] 
 **orderLeftSquareBracketNameRightSquareBracket** | **String**|  | [optional] 
 **orderLeftSquareBracketUpdatedAtRightSquareBracket** | **String**|  | [optional] 
 **level** | **int**|  | [optional] 
 **levelLeftSquareBracketRightSquareBracket** | [**List<int>**](int.md)|  | [optional] [default to const []]
 **parent** | **String**|  | [optional] 
 **parentLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **subtree** | **String**|  | [optional] 
 **existsLeftSquareBracketContractsRightSquareBracket** | **bool**|  | [optional] 
 **existsLeftSquareBracketQuotesRightSquareBracket** | **bool**|  | [optional] 
 **contracts** | **String**|  | [optional] 
 **contractsLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**GetPlaceCollection200Response**](GetPlaceCollection200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchPlace**
> PlaceJsonhalRead patchPlace(identifier, xKeyclicApp, xOrganizationId, placeEditPlaceCommandWriteEdit, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Updates the Place resource.

Updates the Place resource.

### Example
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = PlaceApi();
final identifier = identifier_example; // String | Place identifier
final xKeyclicApp = xKeyclicApp_example; // String | 
final xOrganizationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final placeEditPlaceCommandWriteEdit = PlaceEditPlaceCommandWriteEdit(); // PlaceEditPlaceCommandWriteEdit | The updated Place resource
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    final result = api_instance.patchPlace(identifier, xKeyclicApp, xOrganizationId, placeEditPlaceCommandWriteEdit, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling PlaceApi->patchPlace: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Place identifier | 
 **xKeyclicApp** | **String**|  | 
 **xOrganizationId** | **String**|  | 
 **placeEditPlaceCommandWriteEdit** | [**PlaceEditPlaceCommandWriteEdit**](PlaceEditPlaceCommandWriteEdit.md)| The updated Place resource | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**PlaceJsonhalRead**](PlaceJsonhalRead.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/merge-patch+json
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postPlace**
> PlaceJsonhalRead postPlace(xKeyclicApp, placeCreatePlaceCommandWriteCreate, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Creates a Place resource.

Creates a Place resource.

### Example
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = PlaceApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final placeCreatePlaceCommandWriteCreate = PlaceCreatePlaceCommandWriteCreate(); // PlaceCreatePlaceCommandWriteCreate | The new Place resource
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    final result = api_instance.postPlace(xKeyclicApp, placeCreatePlaceCommandWriteCreate, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling PlaceApi->postPlace: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | 
 **placeCreatePlaceCommandWriteCreate** | [**PlaceCreatePlaceCommandWriteCreate**](PlaceCreatePlaceCommandWriteCreate.md)| The new Place resource | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**PlaceJsonhalRead**](PlaceJsonhalRead.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

