# keyclic_sdk_api.api.ExportApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getExport**](ExportApi.md#getexport) | **GET** /exports/{export} | Retrieve one Export resource.
[**postExport**](ExportApi.md#postexport) | **POST** /exports | Create one Export resource.


# **getExport**
> ModelExport getExport(xKeyclicApp, export_, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, after, before, orderLeftSquareBracketRightSquareBracket)

Retrieve one Export resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';

final api_instance = ExportApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final export_ = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
final after = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 
final orderLeftSquareBracketRightSquareBracket = []; // List<String> | 

try { 
    final result = api_instance.getExport(xKeyclicApp, export_, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, after, before, orderLeftSquareBracketRightSquareBracket);
    print(result);
} catch (e) {
    print('Exception when calling ExportApi->getExport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **export_** | **String**| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **orderLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]

### Return type

[**ModelExport**](ModelExport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postExport**
> ModelExport postExport(xKeyclicApp, exportData, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, archived, asset, assetsLeftSquareBracketRightSquareBracket, batch, batchesLeftSquareBracketRightSquareBracket, category, categoriesLeftSquareBracketRightSquareBracket, createdBy, createdBiesLeftSquareBracketRightSquareBracket, afterDueBy, after, beforeDueBy, before, deep, delegatedTo, delegatedTosLeftSquareBracketRightSquareBracket, hasDocuments, isEmpty, isNull, leaf, level, managedBy, managedBiesLeftSquareBracketRightSquareBracket, member, membersLeftSquareBracketRightSquareBracket, operationStateAll, operationState, operationStatesLeftSquareBracketRightSquareBracket, orderLeftSquareBracketRightSquareBracket, organization, organizationsLeftSquareBracketRightSquareBracket, phase, phasesLeftSquareBracketRightSquareBracket, place, placesLeftSquareBracketRightSquareBracket, priority, prioritiesLeftSquareBracketRightSquareBracket, query, ratingLeftSquareBracketRightSquareBracket, scheduledAtAfter, scheduledAtBefore, state, statesLeftSquareBracketRightSquareBracket, visibilityLeftSquareBracketRightSquareBracket)

Create one Export resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = ExportApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final exportData = ExportData(); // ExportData | 
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
final archived = archived_example; // String | 
final asset = asset_example; // String | 
final assetsLeftSquareBracketRightSquareBracket = []; // List<String> | 
final batch = batch_example; // String | 
final batchesLeftSquareBracketRightSquareBracket = []; // List<String> | 
final category = category_example; // String | 
final categoriesLeftSquareBracketRightSquareBracket = []; // List<String> | 
final createdBy = createdBy_example; // String | 
final createdBiesLeftSquareBracketRightSquareBracket = []; // List<String> | 
final afterDueBy = 2013-10-20T19:20:30+01:00; // DateTime | 
final after = 2013-10-20T19:20:30+01:00; // DateTime | 
final beforeDueBy = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 
final deep = deep_example; // String | 
final delegatedTo = delegatedTo_example; // String | 
final delegatedTosLeftSquareBracketRightSquareBracket = []; // List<String> | 
final hasDocuments = hasDocuments_example; // String | 
final isEmpty = isEmpty_example; // String | 
final isNull = isNull_example; // String | 
final leaf = leaf_example; // String | 
final level = level_example; // String | 
final managedBy = managedBy_example; // String | 
final managedBiesLeftSquareBracketRightSquareBracket = []; // List<String> | 
final member = member_example; // String | 
final membersLeftSquareBracketRightSquareBracket = []; // List<String> | 
final operationStateAll = operationStateAll_example; // String | 
final operationState = operationState_example; // String | 
final operationStatesLeftSquareBracketRightSquareBracket = []; // List<String> | 
final orderLeftSquareBracketRightSquareBracket = []; // List<String> | 
final organization = organization_example; // String | 
final organizationsLeftSquareBracketRightSquareBracket = []; // List<String> | 
final phase = phase_example; // String | 
final phasesLeftSquareBracketRightSquareBracket = []; // List<String> | 
final place = place_example; // String | 
final placesLeftSquareBracketRightSquareBracket = []; // List<String> | 
final priority = priority_example; // String | 
final prioritiesLeftSquareBracketRightSquareBracket = []; // List<String> | 
final query = query_example; // String | 
final ratingLeftSquareBracketRightSquareBracket = []; // List<String> | 
final scheduledAtAfter = 2013-10-20T19:20:30+01:00; // DateTime | 
final scheduledAtBefore = 2013-10-20T19:20:30+01:00; // DateTime | 
final state = state_example; // String | 
final statesLeftSquareBracketRightSquareBracket = []; // List<String> | 
final visibilityLeftSquareBracketRightSquareBracket = []; // List<String> | 

try { 
    final result = api_instance.postExport(xKeyclicApp, exportData, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, archived, asset, assetsLeftSquareBracketRightSquareBracket, batch, batchesLeftSquareBracketRightSquareBracket, category, categoriesLeftSquareBracketRightSquareBracket, createdBy, createdBiesLeftSquareBracketRightSquareBracket, afterDueBy, after, beforeDueBy, before, deep, delegatedTo, delegatedTosLeftSquareBracketRightSquareBracket, hasDocuments, isEmpty, isNull, leaf, level, managedBy, managedBiesLeftSquareBracketRightSquareBracket, member, membersLeftSquareBracketRightSquareBracket, operationStateAll, operationState, operationStatesLeftSquareBracketRightSquareBracket, orderLeftSquareBracketRightSquareBracket, organization, organizationsLeftSquareBracketRightSquareBracket, phase, phasesLeftSquareBracketRightSquareBracket, place, placesLeftSquareBracketRightSquareBracket, priority, prioritiesLeftSquareBracketRightSquareBracket, query, ratingLeftSquareBracketRightSquareBracket, scheduledAtAfter, scheduledAtBefore, state, statesLeftSquareBracketRightSquareBracket, visibilityLeftSquareBracketRightSquareBracket);
    print(result);
} catch (e) {
    print('Exception when calling ExportApi->postExport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **exportData** | [**ExportData**](ExportData.md)|  | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **archived** | **String**|  | [optional] 
 **asset** | **String**|  | [optional] 
 **assetsLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **batch** | **String**|  | [optional] 
 **batchesLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **category** | **String**|  | [optional] 
 **categoriesLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **createdBy** | **String**|  | [optional] 
 **createdBiesLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **afterDueBy** | **DateTime**|  | [optional] 
 **after** | **DateTime**|  | [optional] 
 **beforeDueBy** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **deep** | **String**|  | [optional] 
 **delegatedTo** | **String**|  | [optional] 
 **delegatedTosLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **hasDocuments** | **String**|  | [optional] 
 **isEmpty** | **String**|  | [optional] 
 **isNull** | **String**|  | [optional] 
 **leaf** | **String**|  | [optional] 
 **level** | **String**|  | [optional] 
 **managedBy** | **String**|  | [optional] 
 **managedBiesLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **member** | **String**|  | [optional] 
 **membersLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **operationStateAll** | **String**|  | [optional] 
 **operationState** | **String**|  | [optional] 
 **operationStatesLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **orderLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **organization** | **String**|  | [optional] 
 **organizationsLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **phase** | **String**|  | [optional] 
 **phasesLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **place** | **String**|  | [optional] 
 **placesLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **priority** | **String**|  | [optional] 
 **prioritiesLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **query** | **String**|  | [optional] 
 **ratingLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **scheduledAtAfter** | **DateTime**|  | [optional] 
 **scheduledAtBefore** | **DateTime**|  | [optional] 
 **state** | **String**|  | [optional] 
 **statesLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **visibilityLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]

### Return type

[**ModelExport**](ModelExport.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

