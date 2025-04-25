# keyclic_sdk_api.api.ReportApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetAssignmentsByReport**](ReportApi.md#cgetassignmentsbyreport) | **GET** /reports/{report}/assignments | Retrieve all Assignment resources.
[**cgetDocumentsByReport**](ReportApi.md#cgetdocumentsbyreport) | **GET** /reports/{report}/documents | Retrieve all Document resources.
[**cgetOperationsByReport**](ReportApi.md#cgetoperationsbyreport) | **GET** /reports/{report}/operations | Retrieve all Operation resources.
[**getReport**](ReportApi.md#getreport) | **GET** /reports/{report} | Retrieve one Report resource.
[**getTrackingByReport**](ReportApi.md#gettrackingbyreport) | **GET** /reports/{report}/tracking | Retrieve one Tracking resource.
[**patchReport**](ReportApi.md#patchreport) | **PATCH** /reports/{report} | Edit one Report resource.
[**postDocumentByReport**](ReportApi.md#postdocumentbyreport) | **POST** /reports/{report}/documents | Create one Document resource.
[**postWorkflowByReport**](ReportApi.md#postworkflowbyreport) | **POST** /reports/{report}/workflow | Create one Workflow resource.


# **cgetAssignmentsByReport**
> AssignmentPagination cgetAssignmentsByReport(xKeyclicApp, report, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, after, before, page, limit)

Retrieve all Assignment resources.

### Example
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = ReportApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final report = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
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
    final result = api_instance.cgetAssignmentsByReport(xKeyclicApp, report, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, after, before, page, limit);
    print(result);
} catch (e) {
    print('Exception when calling ReportApi->cgetAssignmentsByReport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **report** | **String**| The identifier of the resource. | 
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

[**AssignmentPagination**](AssignmentPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cgetDocumentsByReport**
> DocumentPagination cgetDocumentsByReport(xKeyclicApp, report, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, after, before, organization, organizationsLeftSquareBracketRightSquareBracket, state, statesLeftSquareBracketRightSquareBracket, page, limit)

Retrieve all Document resources.

### Example
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = ReportApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final report = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
final orderLeftSquareBracketRightSquareBracket = []; // List<String> | 
final after = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 
final organization = organization_example; // String | 
final organizationsLeftSquareBracketRightSquareBracket = []; // List<String> | 
final state = state_example; // String | 
final statesLeftSquareBracketRightSquareBracket = []; // List<String> | 
final page = 56; // int | Page of the overview.
final limit = 56; // int | Page of the overview.

try {
    final result = api_instance.cgetDocumentsByReport(xKeyclicApp, report, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, after, before, organization, organizationsLeftSquareBracketRightSquareBracket, state, statesLeftSquareBracketRightSquareBracket, page, limit);
    print(result);
} catch (e) {
    print('Exception when calling ReportApi->cgetDocumentsByReport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **report** | **String**| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **orderLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **organization** | **String**|  | [optional] 
 **organizationsLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **state** | **String**|  | [optional] 
 **statesLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]

### Return type

[**DocumentPagination**](DocumentPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cgetOperationsByReport**
> OperationPagination cgetOperationsByReport(xKeyclicApp, report, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, archived, asset, assetsLeftSquareBracketRightSquareBracket, batch, batchesLeftSquareBracketRightSquareBracket, category, categoriesLeftSquareBracketRightSquareBracket, categoryType, categoryTypesLeftSquareBracketRightSquareBracket, createdBy, createdBiesLeftSquareBracketRightSquareBracket, afterDueBy, after, beforeDueBy, before, deep, delegatedTo, delegatedTosLeftSquareBracketRightSquareBracket, equipmentLeftSquareBracketRightSquareBracket, hasDocuments, isEmpty, isNull, leaf, level, managedBy, managedBiesLeftSquareBracketRightSquareBracket, member, membersLeftSquareBracketRightSquareBracket, operationStateAll, operationState, operationStatesLeftSquareBracketRightSquareBracket, organization, organizationsLeftSquareBracketRightSquareBracket, phase, phasesLeftSquareBracketRightSquareBracket, place, placesLeftSquareBracketRightSquareBracket, priority, prioritiesLeftSquareBracketRightSquareBracket, query, ratingLeftSquareBracketRightSquareBracket, reporter, reportersLeftSquareBracketRightSquareBracket, scheduledAtAfter, scheduledAtBefore, state, statesLeftSquareBracketRightSquareBracket, visibilityLeftSquareBracketRightSquareBracket, page, limit)

Retrieve all Operation resources.

### Example
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = ReportApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final report = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
final orderLeftSquareBracketRightSquareBracket = []; // List<String> | 
final archived = true; // bool | 
final asset = asset_example; // String | 
final assetsLeftSquareBracketRightSquareBracket = []; // List<String> | 
final batch = batch_example; // String | 
final batchesLeftSquareBracketRightSquareBracket = []; // List<String> | 
final category = category_example; // String | 
final categoriesLeftSquareBracketRightSquareBracket = []; // List<String> | 
final categoryType = categoryType_example; // String | 
final categoryTypesLeftSquareBracketRightSquareBracket = []; // List<String> | 
final createdBy = createdBy_example; // String | 
final createdBiesLeftSquareBracketRightSquareBracket = []; // List<String> | 
final afterDueBy = 2013-10-20T19:20:30+01:00; // DateTime | 
final after = 2013-10-20T19:20:30+01:00; // DateTime | 
final beforeDueBy = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 
final deep = true; // bool | 
final delegatedTo = delegatedTo_example; // String | 
final delegatedTosLeftSquareBracketRightSquareBracket = []; // List<String> | 
final equipmentLeftSquareBracketRightSquareBracket = []; // List<String> | 
final hasDocuments = true; // bool | 
final isEmpty = isEmpty_example; // String | 
final isNull = isNull_example; // String | 
final leaf = true; // bool | 
final level = 56; // int | 
final managedBy = managedBy_example; // String | 
final managedBiesLeftSquareBracketRightSquareBracket = []; // List<String> | 
final member = member_example; // String | 
final membersLeftSquareBracketRightSquareBracket = []; // List<String> | 
final operationStateAll = operationStateAll_example; // String | 
final operationState = operationState_example; // String | 
final operationStatesLeftSquareBracketRightSquareBracket = []; // List<String> | 
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
final reporter = reporter_example; // String | 
final reportersLeftSquareBracketRightSquareBracket = []; // List<String> | 
final scheduledAtAfter = 2013-10-20T19:20:30+01:00; // DateTime | 
final scheduledAtBefore = 2013-10-20T19:20:30+01:00; // DateTime | 
final state = state_example; // String | 
final statesLeftSquareBracketRightSquareBracket = []; // List<String> | 
final visibilityLeftSquareBracketRightSquareBracket = []; // List<String> | 
final page = 56; // int | Page of the overview.
final limit = 56; // int | Page of the overview.

try {
    final result = api_instance.cgetOperationsByReport(xKeyclicApp, report, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, archived, asset, assetsLeftSquareBracketRightSquareBracket, batch, batchesLeftSquareBracketRightSquareBracket, category, categoriesLeftSquareBracketRightSquareBracket, categoryType, categoryTypesLeftSquareBracketRightSquareBracket, createdBy, createdBiesLeftSquareBracketRightSquareBracket, afterDueBy, after, beforeDueBy, before, deep, delegatedTo, delegatedTosLeftSquareBracketRightSquareBracket, equipmentLeftSquareBracketRightSquareBracket, hasDocuments, isEmpty, isNull, leaf, level, managedBy, managedBiesLeftSquareBracketRightSquareBracket, member, membersLeftSquareBracketRightSquareBracket, operationStateAll, operationState, operationStatesLeftSquareBracketRightSquareBracket, organization, organizationsLeftSquareBracketRightSquareBracket, phase, phasesLeftSquareBracketRightSquareBracket, place, placesLeftSquareBracketRightSquareBracket, priority, prioritiesLeftSquareBracketRightSquareBracket, query, ratingLeftSquareBracketRightSquareBracket, reporter, reportersLeftSquareBracketRightSquareBracket, scheduledAtAfter, scheduledAtBefore, state, statesLeftSquareBracketRightSquareBracket, visibilityLeftSquareBracketRightSquareBracket, page, limit);
    print(result);
} catch (e) {
    print('Exception when calling ReportApi->cgetOperationsByReport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **report** | **String**| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **orderLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **archived** | **bool**|  | [optional] 
 **asset** | **String**|  | [optional] 
 **assetsLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **batch** | **String**|  | [optional] 
 **batchesLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **category** | **String**|  | [optional] 
 **categoriesLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **categoryType** | **String**|  | [optional] 
 **categoryTypesLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **createdBy** | **String**|  | [optional] 
 **createdBiesLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **afterDueBy** | **DateTime**|  | [optional] 
 **after** | **DateTime**|  | [optional] 
 **beforeDueBy** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **deep** | **bool**|  | [optional] 
 **delegatedTo** | **String**|  | [optional] 
 **delegatedTosLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **equipmentLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **hasDocuments** | **bool**|  | [optional] 
 **isEmpty** | **String**|  | [optional] 
 **isNull** | **String**|  | [optional] 
 **leaf** | **bool**|  | [optional] 
 **level** | **int**|  | [optional] 
 **managedBy** | **String**|  | [optional] 
 **managedBiesLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **member** | **String**|  | [optional] 
 **membersLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **operationStateAll** | **String**|  | [optional] 
 **operationState** | **String**|  | [optional] 
 **operationStatesLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
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
 **reporter** | **String**|  | [optional] 
 **reportersLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **scheduledAtAfter** | **DateTime**|  | [optional] 
 **scheduledAtBefore** | **DateTime**|  | [optional] 
 **state** | **String**|  | [optional] 
 **statesLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **visibilityLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]

### Return type

[**OperationPagination**](OperationPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReport**
> Report getReport(xKeyclicApp, report, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieve one Report resource.

### Example
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = ReportApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final report = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    final result = api_instance.getReport(xKeyclicApp, report, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling ReportApi->getReport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **report** | **String**| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Report**](Report.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTrackingByReport**
> Tracking getTrackingByReport(xKeyclicApp, report, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieve one Tracking resource.

### Example
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = ReportApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final report = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    final result = api_instance.getTrackingByReport(xKeyclicApp, report, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling ReportApi->getTrackingByReport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **report** | **String**| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Tracking**](Tracking.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchReport**
> Report patchReport(xKeyclicApp, report, taskPatch, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, xEnableDispatch)

Edit one Report resource.

### Example
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = ReportApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final report = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final taskPatch = TaskPatch(); // TaskPatch | 
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
final xEnableDispatch = true; // bool | 

try {
    final result = api_instance.patchReport(xKeyclicApp, report, taskPatch, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, xEnableDispatch);
    print(result);
} catch (e) {
    print('Exception when calling ReportApi->patchReport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **report** | **String**| The identifier of the resource. | 
 **taskPatch** | [**TaskPatch**](TaskPatch.md)|  | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **xEnableDispatch** | **bool**|  | [optional] 

### Return type

[**Report**](Report.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postDocumentByReport**
> Document postDocumentByReport(xKeyclicApp, report, documentData, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Create one Document resource.

### Example
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = ReportApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final report = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final documentData = DocumentData(); // DocumentData | 
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    final result = api_instance.postDocumentByReport(xKeyclicApp, report, documentData, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling ReportApi->postDocumentByReport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **report** | **String**| The identifier of the resource. | 
 **documentData** | [**DocumentData**](DocumentData.md)|  | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postWorkflowByReport**
> Report postWorkflowByReport(xKeyclicApp, report, workflowData, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, xEnableDispatch)

Create one Workflow resource.

### Example
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = ReportApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final report = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final workflowData = WorkflowData(); // WorkflowData | 
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
final xEnableDispatch = true; // bool | 

try {
    final result = api_instance.postWorkflowByReport(xKeyclicApp, report, workflowData, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, xEnableDispatch);
    print(result);
} catch (e) {
    print('Exception when calling ReportApi->postWorkflowByReport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **report** | **String**| The identifier of the resource. | 
 **workflowData** | [**WorkflowData**](WorkflowData.md)|  | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **xEnableDispatch** | **bool**|  | [optional] 

### Return type

[**Report**](Report.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

