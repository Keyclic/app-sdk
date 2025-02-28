# keyclic_sdk_api_platform.api.QuoteApi

## Load the API package
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteQuote**](QuoteApi.md#deletequote) | **DELETE** /quotes/{identifier} | Removes the Quote resource.
[**getQuote**](QuoteApi.md#getquote) | **GET** /quotes/{identifier} | Retrieves a Quote resource.
[**getQuoteCollection**](QuoteApi.md#getquotecollection) | **GET** /quotes | Retrieves the collection of Quote resources.
[**patchQuote**](QuoteApi.md#patchquote) | **PATCH** /quotes/{identifier} | Updates the Quote resource.
[**postQuote**](QuoteApi.md#postquote) | **POST** /quotes | Creates a Quote resource.


# **deleteQuote**
> deleteQuote(identifier, xKeyclicApp, xOrganizationId, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Removes the Quote resource.

Removes the Quote resource.

### Example
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = QuoteApi();
final identifier = identifier_example; // String | Quote identifier
final xKeyclicApp = xKeyclicApp_example; // String | 
final xOrganizationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    api_instance.deleteQuote(identifier, xKeyclicApp, xOrganizationId, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
} catch (e) {
    print('Exception when calling QuoteApi->deleteQuote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Quote identifier | 
 **xKeyclicApp** | **String**|  | 
 **xOrganizationId** | **String**|  | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQuote**
> QuoteJsonhalRead getQuote(identifier, xKeyclicApp, xOrganizationId, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieves a Quote resource.

Retrieves a Quote resource.

### Example
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = QuoteApi();
final identifier = identifier_example; // String | Quote identifier
final xKeyclicApp = xKeyclicApp_example; // String | 
final xOrganizationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    final result = api_instance.getQuote(identifier, xKeyclicApp, xOrganizationId, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling QuoteApi->getQuote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Quote identifier | 
 **xKeyclicApp** | **String**|  | 
 **xOrganizationId** | **String**|  | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**QuoteJsonhalRead**](QuoteJsonhalRead.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQuoteCollection**
> GetQuoteCollection200Response getQuoteCollection(xKeyclicApp, xOrganizationId, page, limit, pagination, search, createdAtLeftSquareBracketBeforeRightSquareBracket, createdAtLeftSquareBracketStrictlyBeforeRightSquareBracket, createdAtLeftSquareBracketAfterRightSquareBracket, createdAtLeftSquareBracketStrictlyAfterRightSquareBracket, expirationDateLeftSquareBracketBeforeRightSquareBracket, expirationDateLeftSquareBracketStrictlyBeforeRightSquareBracket, expirationDateLeftSquareBracketAfterRightSquareBracket, expirationDateLeftSquareBracketStrictlyAfterRightSquareBracket, issueDateLeftSquareBracketBeforeRightSquareBracket, issueDateLeftSquareBracketStrictlyBeforeRightSquareBracket, issueDateLeftSquareBracketAfterRightSquareBracket, issueDateLeftSquareBracketStrictlyAfterRightSquareBracket, resolutionDateLeftSquareBracketBeforeRightSquareBracket, resolutionDateLeftSquareBracketStrictlyBeforeRightSquareBracket, resolutionDateLeftSquareBracketAfterRightSquareBracket, resolutionDateLeftSquareBracketStrictlyAfterRightSquareBracket, updatedAtLeftSquareBracketBeforeRightSquareBracket, updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket, updatedAtLeftSquareBracketAfterRightSquareBracket, updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket, orderLeftSquareBracketAmountExcludingTaxPeriodValueRightSquareBracket, orderLeftSquareBracketAmountIncludingTaxPeriodValueRightSquareBracket, orderLeftSquareBracketIssueDateRightSquareBracket, orderLeftSquareBracketNameRightSquareBracket, orderLeftSquareBracketNumberRightSquareBracket, orderLeftSquareBracketPlacePeriodNameRightSquareBracket, orderLeftSquareBracketProviderContactPointPeriodNameRightSquareBracket, author, authorLeftSquareBracketRightSquareBracket, authorContactPointPeriodFamilyName, authorContactPointPeriodFamilyNameLeftSquareBracketRightSquareBracket, place, placeLeftSquareBracketRightSquareBracket, provider, providerLeftSquareBracketRightSquareBracket, providerContactPointPeriodName, providerContactPointPeriodNameLeftSquareBracketRightSquareBracket, state, stateLeftSquareBracketRightSquareBracket, task, taskLeftSquareBracketRightSquareBracket, treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketAncestorsRightSquareBracketLeftSquareBracketRightSquareBracket, treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketDescendantsRightSquareBracketLeftSquareBracketRightSquareBracket, treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketNodeRightSquareBracketLeftSquareBracketRightSquareBracket, treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketSubtreeRightSquareBracketLeftSquareBracketRightSquareBracket, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieves the collection of Quote resources.

Retrieves the collection of Quote resources.

### Example
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = QuoteApi();
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
final expirationDateLeftSquareBracketBeforeRightSquareBracket = expirationDateLeftSquareBracketBeforeRightSquareBracket_example; // String | 
final expirationDateLeftSquareBracketStrictlyBeforeRightSquareBracket = expirationDateLeftSquareBracketStrictlyBeforeRightSquareBracket_example; // String | 
final expirationDateLeftSquareBracketAfterRightSquareBracket = expirationDateLeftSquareBracketAfterRightSquareBracket_example; // String | 
final expirationDateLeftSquareBracketStrictlyAfterRightSquareBracket = expirationDateLeftSquareBracketStrictlyAfterRightSquareBracket_example; // String | 
final issueDateLeftSquareBracketBeforeRightSquareBracket = issueDateLeftSquareBracketBeforeRightSquareBracket_example; // String | 
final issueDateLeftSquareBracketStrictlyBeforeRightSquareBracket = issueDateLeftSquareBracketStrictlyBeforeRightSquareBracket_example; // String | 
final issueDateLeftSquareBracketAfterRightSquareBracket = issueDateLeftSquareBracketAfterRightSquareBracket_example; // String | 
final issueDateLeftSquareBracketStrictlyAfterRightSquareBracket = issueDateLeftSquareBracketStrictlyAfterRightSquareBracket_example; // String | 
final resolutionDateLeftSquareBracketBeforeRightSquareBracket = resolutionDateLeftSquareBracketBeforeRightSquareBracket_example; // String | 
final resolutionDateLeftSquareBracketStrictlyBeforeRightSquareBracket = resolutionDateLeftSquareBracketStrictlyBeforeRightSquareBracket_example; // String | 
final resolutionDateLeftSquareBracketAfterRightSquareBracket = resolutionDateLeftSquareBracketAfterRightSquareBracket_example; // String | 
final resolutionDateLeftSquareBracketStrictlyAfterRightSquareBracket = resolutionDateLeftSquareBracketStrictlyAfterRightSquareBracket_example; // String | 
final updatedAtLeftSquareBracketBeforeRightSquareBracket = updatedAtLeftSquareBracketBeforeRightSquareBracket_example; // String | 
final updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket = updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket_example; // String | 
final updatedAtLeftSquareBracketAfterRightSquareBracket = updatedAtLeftSquareBracketAfterRightSquareBracket_example; // String | 
final updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket = updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket_example; // String | 
final orderLeftSquareBracketAmountExcludingTaxPeriodValueRightSquareBracket = orderLeftSquareBracketAmountExcludingTaxPeriodValueRightSquareBracket_example; // String | 
final orderLeftSquareBracketAmountIncludingTaxPeriodValueRightSquareBracket = orderLeftSquareBracketAmountIncludingTaxPeriodValueRightSquareBracket_example; // String | 
final orderLeftSquareBracketIssueDateRightSquareBracket = orderLeftSquareBracketIssueDateRightSquareBracket_example; // String | 
final orderLeftSquareBracketNameRightSquareBracket = orderLeftSquareBracketNameRightSquareBracket_example; // String | 
final orderLeftSquareBracketNumberRightSquareBracket = orderLeftSquareBracketNumberRightSquareBracket_example; // String | 
final orderLeftSquareBracketPlacePeriodNameRightSquareBracket = orderLeftSquareBracketPlacePeriodNameRightSquareBracket_example; // String | 
final orderLeftSquareBracketProviderContactPointPeriodNameRightSquareBracket = orderLeftSquareBracketProviderContactPointPeriodNameRightSquareBracket_example; // String | 
final author = author_example; // String | 
final authorLeftSquareBracketRightSquareBracket = []; // List<String> | 
final authorContactPointPeriodFamilyName = authorContactPointPeriodFamilyName_example; // String | 
final authorContactPointPeriodFamilyNameLeftSquareBracketRightSquareBracket = []; // List<String> | 
final place = place_example; // String | 
final placeLeftSquareBracketRightSquareBracket = []; // List<String> | 
final provider = provider_example; // String | 
final providerLeftSquareBracketRightSquareBracket = []; // List<String> | 
final providerContactPointPeriodName = providerContactPointPeriodName_example; // String | 
final providerContactPointPeriodNameLeftSquareBracketRightSquareBracket = []; // List<String> | 
final state = state_example; // String | 
final stateLeftSquareBracketRightSquareBracket = []; // List<String> | 
final task = task_example; // String | 
final taskLeftSquareBracketRightSquareBracket = []; // List<String> | 
final treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketAncestorsRightSquareBracketLeftSquareBracketRightSquareBracket = []; // List<String> | Filter on the ancestors of a node, all the nodes along the path from that node to the root of the tree.
final treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketDescendantsRightSquareBracketLeftSquareBracketRightSquareBracket = []; // List<String> | Filter on the tree below the node excluding the node itself.
final treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketNodeRightSquareBracketLeftSquareBracketRightSquareBracket = []; // List<String> | Filter on the node only.
final treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketSubtreeRightSquareBracketLeftSquareBracketRightSquareBracket = []; // List<String> | Filter on the tree below the node including the node itself.
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    final result = api_instance.getQuoteCollection(xKeyclicApp, xOrganizationId, page, limit, pagination, search, createdAtLeftSquareBracketBeforeRightSquareBracket, createdAtLeftSquareBracketStrictlyBeforeRightSquareBracket, createdAtLeftSquareBracketAfterRightSquareBracket, createdAtLeftSquareBracketStrictlyAfterRightSquareBracket, expirationDateLeftSquareBracketBeforeRightSquareBracket, expirationDateLeftSquareBracketStrictlyBeforeRightSquareBracket, expirationDateLeftSquareBracketAfterRightSquareBracket, expirationDateLeftSquareBracketStrictlyAfterRightSquareBracket, issueDateLeftSquareBracketBeforeRightSquareBracket, issueDateLeftSquareBracketStrictlyBeforeRightSquareBracket, issueDateLeftSquareBracketAfterRightSquareBracket, issueDateLeftSquareBracketStrictlyAfterRightSquareBracket, resolutionDateLeftSquareBracketBeforeRightSquareBracket, resolutionDateLeftSquareBracketStrictlyBeforeRightSquareBracket, resolutionDateLeftSquareBracketAfterRightSquareBracket, resolutionDateLeftSquareBracketStrictlyAfterRightSquareBracket, updatedAtLeftSquareBracketBeforeRightSquareBracket, updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket, updatedAtLeftSquareBracketAfterRightSquareBracket, updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket, orderLeftSquareBracketAmountExcludingTaxPeriodValueRightSquareBracket, orderLeftSquareBracketAmountIncludingTaxPeriodValueRightSquareBracket, orderLeftSquareBracketIssueDateRightSquareBracket, orderLeftSquareBracketNameRightSquareBracket, orderLeftSquareBracketNumberRightSquareBracket, orderLeftSquareBracketPlacePeriodNameRightSquareBracket, orderLeftSquareBracketProviderContactPointPeriodNameRightSquareBracket, author, authorLeftSquareBracketRightSquareBracket, authorContactPointPeriodFamilyName, authorContactPointPeriodFamilyNameLeftSquareBracketRightSquareBracket, place, placeLeftSquareBracketRightSquareBracket, provider, providerLeftSquareBracketRightSquareBracket, providerContactPointPeriodName, providerContactPointPeriodNameLeftSquareBracketRightSquareBracket, state, stateLeftSquareBracketRightSquareBracket, task, taskLeftSquareBracketRightSquareBracket, treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketAncestorsRightSquareBracketLeftSquareBracketRightSquareBracket, treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketDescendantsRightSquareBracketLeftSquareBracketRightSquareBracket, treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketNodeRightSquareBracketLeftSquareBracketRightSquareBracket, treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketSubtreeRightSquareBracketLeftSquareBracketRightSquareBracket, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling QuoteApi->getQuoteCollection: $e\n');
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
 **expirationDateLeftSquareBracketBeforeRightSquareBracket** | **String**|  | [optional] 
 **expirationDateLeftSquareBracketStrictlyBeforeRightSquareBracket** | **String**|  | [optional] 
 **expirationDateLeftSquareBracketAfterRightSquareBracket** | **String**|  | [optional] 
 **expirationDateLeftSquareBracketStrictlyAfterRightSquareBracket** | **String**|  | [optional] 
 **issueDateLeftSquareBracketBeforeRightSquareBracket** | **String**|  | [optional] 
 **issueDateLeftSquareBracketStrictlyBeforeRightSquareBracket** | **String**|  | [optional] 
 **issueDateLeftSquareBracketAfterRightSquareBracket** | **String**|  | [optional] 
 **issueDateLeftSquareBracketStrictlyAfterRightSquareBracket** | **String**|  | [optional] 
 **resolutionDateLeftSquareBracketBeforeRightSquareBracket** | **String**|  | [optional] 
 **resolutionDateLeftSquareBracketStrictlyBeforeRightSquareBracket** | **String**|  | [optional] 
 **resolutionDateLeftSquareBracketAfterRightSquareBracket** | **String**|  | [optional] 
 **resolutionDateLeftSquareBracketStrictlyAfterRightSquareBracket** | **String**|  | [optional] 
 **updatedAtLeftSquareBracketBeforeRightSquareBracket** | **String**|  | [optional] 
 **updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket** | **String**|  | [optional] 
 **updatedAtLeftSquareBracketAfterRightSquareBracket** | **String**|  | [optional] 
 **updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket** | **String**|  | [optional] 
 **orderLeftSquareBracketAmountExcludingTaxPeriodValueRightSquareBracket** | **String**|  | [optional] 
 **orderLeftSquareBracketAmountIncludingTaxPeriodValueRightSquareBracket** | **String**|  | [optional] 
 **orderLeftSquareBracketIssueDateRightSquareBracket** | **String**|  | [optional] 
 **orderLeftSquareBracketNameRightSquareBracket** | **String**|  | [optional] 
 **orderLeftSquareBracketNumberRightSquareBracket** | **String**|  | [optional] 
 **orderLeftSquareBracketPlacePeriodNameRightSquareBracket** | **String**|  | [optional] 
 **orderLeftSquareBracketProviderContactPointPeriodNameRightSquareBracket** | **String**|  | [optional] 
 **author** | **String**|  | [optional] 
 **authorLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **authorContactPointPeriodFamilyName** | **String**|  | [optional] 
 **authorContactPointPeriodFamilyNameLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **place** | **String**|  | [optional] 
 **placeLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **provider** | **String**|  | [optional] 
 **providerLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **providerContactPointPeriodName** | **String**|  | [optional] 
 **providerContactPointPeriodNameLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **state** | **String**|  | [optional] 
 **stateLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **task** | **String**|  | [optional] 
 **taskLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketAncestorsRightSquareBracketLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)| Filter on the ancestors of a node, all the nodes along the path from that node to the root of the tree. | [optional] [default to const []]
 **treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketDescendantsRightSquareBracketLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)| Filter on the tree below the node excluding the node itself. | [optional] [default to const []]
 **treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketNodeRightSquareBracketLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)| Filter on the node only. | [optional] [default to const []]
 **treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketSubtreeRightSquareBracketLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)| Filter on the tree below the node including the node itself. | [optional] [default to const []]
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**GetQuoteCollection200Response**](GetQuoteCollection200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchQuote**
> QuoteJsonhalRead patchQuote(identifier, xKeyclicApp, xOrganizationId, quoteEditQuoteCommandWrite, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Updates the Quote resource.

Updates the Quote resource.

### Example
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = QuoteApi();
final identifier = identifier_example; // String | Quote identifier
final xKeyclicApp = xKeyclicApp_example; // String | 
final xOrganizationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final quoteEditQuoteCommandWrite = QuoteEditQuoteCommandWrite(); // QuoteEditQuoteCommandWrite | The updated Quote resource
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    final result = api_instance.patchQuote(identifier, xKeyclicApp, xOrganizationId, quoteEditQuoteCommandWrite, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling QuoteApi->patchQuote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Quote identifier | 
 **xKeyclicApp** | **String**|  | 
 **xOrganizationId** | **String**|  | 
 **quoteEditQuoteCommandWrite** | [**QuoteEditQuoteCommandWrite**](QuoteEditQuoteCommandWrite.md)| The updated Quote resource | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**QuoteJsonhalRead**](QuoteJsonhalRead.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/merge-patch+json
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postQuote**
> QuoteJsonhalRead postQuote(xKeyclicApp, xOrganizationId, quoteCreateQuoteCommandWrite, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Creates a Quote resource.

Creates a Quote resource.

### Example
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = QuoteApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final xOrganizationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final quoteCreateQuoteCommandWrite = QuoteCreateQuoteCommandWrite(); // QuoteCreateQuoteCommandWrite | The new Quote resource
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    final result = api_instance.postQuote(xKeyclicApp, xOrganizationId, quoteCreateQuoteCommandWrite, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling QuoteApi->postQuote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | 
 **xOrganizationId** | **String**|  | 
 **quoteCreateQuoteCommandWrite** | [**QuoteCreateQuoteCommandWrite**](QuoteCreateQuoteCommandWrite.md)| The new Quote resource | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**QuoteJsonhalRead**](QuoteJsonhalRead.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

