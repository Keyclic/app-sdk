# keyclic_sdk_api.api.OrganizationApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetDispatchServicesByOrganization**](OrganizationApi.md#cgetdispatchservicesbyorganization) | **GET** /organizations/{organization}/dispatch-services | Retrieve all DispatchService resources.
[**cgetDocumentsByOrganization**](OrganizationApi.md#cgetdocumentsbyorganization) | **GET** /organizations/{organization}/documents | Retrieve all Document resources.
[**cgetExternalServicesByOrganization**](OrganizationApi.md#cgetexternalservicesbyorganization) | **GET** /organizations/{organization}/external-services | Retrieve all ExternalService resources.
[**cgetInternalServicesByOrganization**](OrganizationApi.md#cgetinternalservicesbyorganization) | **GET** /organizations/{organization}/internal-services | Retrieve all InternalService resources.
[**cgetOperationsByOrganization**](OrganizationApi.md#cgetoperationsbyorganization) | **GET** /organizations/{organization}/operations | Retrieve all Operation resources.
[**cgetOrganizations**](OrganizationApi.md#cgetorganizations) | **GET** /organizations | Retrieve all Organization resources.
[**cgetPlacesByOrganization**](OrganizationApi.md#cgetplacesbyorganization) | **GET** /organizations/{organization}/places | Retrieve all Place resources.
[**cgetReportsByOrganization**](OrganizationApi.md#cgetreportsbyorganization) | **GET** /organizations/{organization}/reports | Retrieve all Report resources.
[**cgetTemplatesByOrganization**](OrganizationApi.md#cgettemplatesbyorganization) | **GET** /organizations/{organization}/templates | Retrieve all Template resources.
[**getAnalyticByOrganization**](OrganizationApi.md#getanalyticbyorganization) | **GET** /organizations/{organization}/analytics | Retrieve one Analytic resource.
[**getConfigurationByOrganization**](OrganizationApi.md#getconfigurationbyorganization) | **GET** /organizations/{organization}/configuration | Retrieve one Configuration resource.
[**getFormByOrganization**](OrganizationApi.md#getformbyorganization) | **GET** /organizations/{organization}/form | Retrieve one Form resource.
[**getOrganization**](OrganizationApi.md#getorganization) | **GET** /organizations/{organization} | Retrieve one Organization resource.
[**patchOrganization**](OrganizationApi.md#patchorganization) | **PATCH** /organizations/{organization} | Edit one Organization resource.


# **cgetDispatchServicesByOrganization**
> ServicePagination cgetDispatchServicesByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, asset, category, page, place, limit, orderLeftSquareBracketRightSquareBracket, after, before, query)

Retrieve all DispatchService resources.

### Example
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = OrganizationApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final organization = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
final asset = asset_example; // String | 
final category = category_example; // String | 
final page = 56; // int | Page of the overview.
final place = place_example; // String | 
final limit = 56; // int | Page of the overview.
final orderLeftSquareBracketRightSquareBracket = []; // List<String> | 
final after = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 
final query = query_example; // String | 

try {
    final result = api_instance.cgetDispatchServicesByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, asset, category, page, place, limit, orderLeftSquareBracketRightSquareBracket, after, before, query);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationApi->cgetDispatchServicesByOrganization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **organization** | **String**| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **asset** | **String**|  | [optional] 
 **category** | **String**|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **place** | **String**|  | [optional] 
 **limit** | **int**| Page of the overview. | [optional] [default to 10]
 **orderLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **query** | **String**|  | [optional] 

### Return type

[**ServicePagination**](ServicePagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cgetDocumentsByOrganization**
> DocumentPagination cgetDocumentsByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, after, before, organizationsLeftSquareBracketRightSquareBracket, state, statesLeftSquareBracketRightSquareBracket, page, limit)

Retrieve all Document resources.

### Example
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = OrganizationApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final organization = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
final orderLeftSquareBracketRightSquareBracket = []; // List<String> | 
final after = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 
final organizationsLeftSquareBracketRightSquareBracket = []; // List<String> | 
final state = state_example; // String | 
final statesLeftSquareBracketRightSquareBracket = []; // List<String> | 
final page = 56; // int | Page of the overview.
final limit = 56; // int | Page of the overview.

try {
    final result = api_instance.cgetDocumentsByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, after, before, organizationsLeftSquareBracketRightSquareBracket, state, statesLeftSquareBracketRightSquareBracket, page, limit);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationApi->cgetDocumentsByOrganization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **organization** | **String**| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **orderLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
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

# **cgetExternalServicesByOrganization**
> ExternalServicePagination cgetExternalServicesByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, after, before, query, page, limit)

Retrieve all ExternalService resources.

### Example
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = OrganizationApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final organization = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
final orderLeftSquareBracketRightSquareBracket = []; // List<String> | 
final after = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 
final query = query_example; // String | 
final page = 56; // int | Page of the overview.
final limit = 56; // int | Page of the overview.

try {
    final result = api_instance.cgetExternalServicesByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, after, before, query, page, limit);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationApi->cgetExternalServicesByOrganization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **organization** | **String**| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **orderLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **query** | **String**|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]

### Return type

[**ExternalServicePagination**](ExternalServicePagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cgetInternalServicesByOrganization**
> InternalServicePagination cgetInternalServicesByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, after, before, member, membersLeftSquareBracketRightSquareBracket, query, page, limit)

Retrieve all InternalService resources.

### Example
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = OrganizationApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final organization = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
final orderLeftSquareBracketRightSquareBracket = []; // List<String> | 
final after = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 
final member = member_example; // String | 
final membersLeftSquareBracketRightSquareBracket = []; // List<String> | 
final query = query_example; // String | 
final page = 56; // int | Page of the overview.
final limit = 56; // int | Page of the overview.

try {
    final result = api_instance.cgetInternalServicesByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, after, before, member, membersLeftSquareBracketRightSquareBracket, query, page, limit);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationApi->cgetInternalServicesByOrganization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **organization** | **String**| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **orderLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **member** | **String**|  | [optional] 
 **membersLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **query** | **String**|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]

### Return type

[**InternalServicePagination**](InternalServicePagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cgetOperationsByOrganization**
> OperationPagination cgetOperationsByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, archived, asset, assetsLeftSquareBracketRightSquareBracket, batch, batchesLeftSquareBracketRightSquareBracket, category, categoriesLeftSquareBracketRightSquareBracket, categoryType, categoryTypesLeftSquareBracketRightSquareBracket, createdBy, createdBiesLeftSquareBracketRightSquareBracket, afterDueBy, after, beforeDueBy, before, deep, delegatedTo, delegatedTosLeftSquareBracketRightSquareBracket, equipmentLeftSquareBracketRightSquareBracket, hasDocuments, isEmpty, isNull, leaf, level, managedBy, managedBiesLeftSquareBracketRightSquareBracket, member, membersLeftSquareBracketRightSquareBracket, operationStateAll, operationState, operationStatesLeftSquareBracketRightSquareBracket, organizationsLeftSquareBracketRightSquareBracket, phase, phasesLeftSquareBracketRightSquareBracket, place, placesLeftSquareBracketRightSquareBracket, priority, prioritiesLeftSquareBracketRightSquareBracket, query, ratingLeftSquareBracketRightSquareBracket, reporter, reportersLeftSquareBracketRightSquareBracket, scheduledAtAfter, scheduledAtBefore, state, statesLeftSquareBracketRightSquareBracket, visibilityLeftSquareBracketRightSquareBracket, page, limit)

Retrieve all Operation resources.

### Example
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = OrganizationApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final organization = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
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
    final result = api_instance.cgetOperationsByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, archived, asset, assetsLeftSquareBracketRightSquareBracket, batch, batchesLeftSquareBracketRightSquareBracket, category, categoriesLeftSquareBracketRightSquareBracket, categoryType, categoryTypesLeftSquareBracketRightSquareBracket, createdBy, createdBiesLeftSquareBracketRightSquareBracket, afterDueBy, after, beforeDueBy, before, deep, delegatedTo, delegatedTosLeftSquareBracketRightSquareBracket, equipmentLeftSquareBracketRightSquareBracket, hasDocuments, isEmpty, isNull, leaf, level, managedBy, managedBiesLeftSquareBracketRightSquareBracket, member, membersLeftSquareBracketRightSquareBracket, operationStateAll, operationState, operationStatesLeftSquareBracketRightSquareBracket, organizationsLeftSquareBracketRightSquareBracket, phase, phasesLeftSquareBracketRightSquareBracket, place, placesLeftSquareBracketRightSquareBracket, priority, prioritiesLeftSquareBracketRightSquareBracket, query, ratingLeftSquareBracketRightSquareBracket, reporter, reportersLeftSquareBracketRightSquareBracket, scheduledAtAfter, scheduledAtBefore, state, statesLeftSquareBracketRightSquareBracket, visibilityLeftSquareBracketRightSquareBracket, page, limit);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationApi->cgetOperationsByOrganization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **organization** | **String**| The identifier of the resource. | 
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

# **cgetOrganizations**
> OrganizationPagination cgetOrganizations(xKeyclicApp, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, archived, businessActivity, businessActivitiesLeftSquareBracketRightSquareBracket, after, before, disabledAt, geoPoint, geoCoordinates, organization, organizationsLeftSquareBracketRightSquareBracket, query, page, limit)

Retrieve all Organization resources.

### Example
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = OrganizationApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
final orderLeftSquareBracketRightSquareBracket = []; // List<String> | 
final archived = true; // bool | 
final businessActivity = businessActivity_example; // String | 
final businessActivitiesLeftSquareBracketRightSquareBracket = []; // List<String> | 
final after = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 
final disabledAt = 2013-10-20T19:20:30+01:00; // DateTime | 
final geoPoint = geoPoint_example; // String | One latitude and one longitude serialized and separated by a plus or a minus sign.
final geoCoordinates = geoCoordinates_example; // String | One latitude and one longitude serialized and separated by a plus or a minus sign.
final organization = organization_example; // String | 
final organizationsLeftSquareBracketRightSquareBracket = []; // List<String> | 
final query = query_example; // String | 
final page = 56; // int | Page of the overview.
final limit = 56; // int | Page of the overview.

try {
    final result = api_instance.cgetOrganizations(xKeyclicApp, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, archived, businessActivity, businessActivitiesLeftSquareBracketRightSquareBracket, after, before, disabledAt, geoPoint, geoCoordinates, organization, organizationsLeftSquareBracketRightSquareBracket, query, page, limit);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationApi->cgetOrganizations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **orderLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **archived** | **bool**|  | [optional] 
 **businessActivity** | **String**|  | [optional] 
 **businessActivitiesLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **disabledAt** | **DateTime**|  | [optional] 
 **geoPoint** | **String**| One latitude and one longitude serialized and separated by a plus or a minus sign. | [optional] 
 **geoCoordinates** | **String**| One latitude and one longitude serialized and separated by a plus or a minus sign. | [optional] 
 **organization** | **String**|  | [optional] 
 **organizationsLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **query** | **String**|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]

### Return type

[**OrganizationPagination**](OrganizationPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cgetPlacesByOrganization**
> PlacePagination cgetPlacesByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, branchCode, businessActivity, businessActivitiesLeftSquareBracketRightSquareBracket, after, before, geoElevation, geoHashLeftSquareBracketRightSquareBracket, geoPoint, geoCoordinates, leaf, level, organizationsLeftSquareBracketRightSquareBracket, parent, parentsLeftSquareBracketRightSquareBracket, query, page, limit)

Retrieve all Place resources.

### Example
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = OrganizationApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final organization = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
final orderLeftSquareBracketRightSquareBracket = []; // List<String> | 
final branchCode = branchCode_example; // String | 
final businessActivity = businessActivity_example; // String | 
final businessActivitiesLeftSquareBracketRightSquareBracket = []; // List<String> | 
final after = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 
final geoElevation = geoElevation_example; // String | 
final geoHashLeftSquareBracketRightSquareBracket = []; // List<String> | 
final geoPoint = geoPoint_example; // String | One latitude and one longitude serialized and separated by a plus or a minus sign.
final geoCoordinates = geoCoordinates_example; // String | One latitude and one longitude serialized and separated by a plus or a minus sign.
final leaf = true; // bool | 
final level = 56; // int | 
final organizationsLeftSquareBracketRightSquareBracket = []; // List<String> | 
final parent = parent_example; // String | 
final parentsLeftSquareBracketRightSquareBracket = []; // List<String> | 
final query = query_example; // String | 
final page = 56; // int | Page of the overview.
final limit = 56; // int | Page of the overview.

try {
    final result = api_instance.cgetPlacesByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, branchCode, businessActivity, businessActivitiesLeftSquareBracketRightSquareBracket, after, before, geoElevation, geoHashLeftSquareBracketRightSquareBracket, geoPoint, geoCoordinates, leaf, level, organizationsLeftSquareBracketRightSquareBracket, parent, parentsLeftSquareBracketRightSquareBracket, query, page, limit);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationApi->cgetPlacesByOrganization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **organization** | **String**| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **orderLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **branchCode** | **String**|  | [optional] 
 **businessActivity** | **String**|  | [optional] 
 **businessActivitiesLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **geoElevation** | **String**|  | [optional] 
 **geoHashLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **geoPoint** | **String**| One latitude and one longitude serialized and separated by a plus or a minus sign. | [optional] 
 **geoCoordinates** | **String**| One latitude and one longitude serialized and separated by a plus or a minus sign. | [optional] 
 **leaf** | **bool**|  | [optional] 
 **level** | **int**|  | [optional] 
 **organizationsLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **parent** | **String**|  | [optional] 
 **parentsLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **query** | **String**|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]

### Return type

[**PlacePagination**](PlacePagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cgetReportsByOrganization**
> ReportPagination cgetReportsByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, archived, asset, assetsLeftSquareBracketRightSquareBracket, batch, batchesLeftSquareBracketRightSquareBracket, category, categoriesLeftSquareBracketRightSquareBracket, categoryType, categoryTypesLeftSquareBracketRightSquareBracket, createdBy, createdBiesLeftSquareBracketRightSquareBracket, afterDueBy, after, beforeDueBy, before, deep, delegatedTo, delegatedTosLeftSquareBracketRightSquareBracket, equipmentLeftSquareBracketRightSquareBracket, hasDocuments, isEmpty, isNull, leaf, level, managedBy, managedBiesLeftSquareBracketRightSquareBracket, member, membersLeftSquareBracketRightSquareBracket, operationStateAll, operationState, operationStatesLeftSquareBracketRightSquareBracket, organizationsLeftSquareBracketRightSquareBracket, phase, phasesLeftSquareBracketRightSquareBracket, place, placesLeftSquareBracketRightSquareBracket, priority, prioritiesLeftSquareBracketRightSquareBracket, query, ratingLeftSquareBracketRightSquareBracket, reporter, reportersLeftSquareBracketRightSquareBracket, scheduledAtAfter, scheduledAtBefore, state, statesLeftSquareBracketRightSquareBracket, visibilityLeftSquareBracketRightSquareBracket, page, limit)

Retrieve all Report resources.

### Example
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = OrganizationApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final organization = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
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
    final result = api_instance.cgetReportsByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, archived, asset, assetsLeftSquareBracketRightSquareBracket, batch, batchesLeftSquareBracketRightSquareBracket, category, categoriesLeftSquareBracketRightSquareBracket, categoryType, categoryTypesLeftSquareBracketRightSquareBracket, createdBy, createdBiesLeftSquareBracketRightSquareBracket, afterDueBy, after, beforeDueBy, before, deep, delegatedTo, delegatedTosLeftSquareBracketRightSquareBracket, equipmentLeftSquareBracketRightSquareBracket, hasDocuments, isEmpty, isNull, leaf, level, managedBy, managedBiesLeftSquareBracketRightSquareBracket, member, membersLeftSquareBracketRightSquareBracket, operationStateAll, operationState, operationStatesLeftSquareBracketRightSquareBracket, organizationsLeftSquareBracketRightSquareBracket, phase, phasesLeftSquareBracketRightSquareBracket, place, placesLeftSquareBracketRightSquareBracket, priority, prioritiesLeftSquareBracketRightSquareBracket, query, ratingLeftSquareBracketRightSquareBracket, reporter, reportersLeftSquareBracketRightSquareBracket, scheduledAtAfter, scheduledAtBefore, state, statesLeftSquareBracketRightSquareBracket, visibilityLeftSquareBracketRightSquareBracket, page, limit);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationApi->cgetReportsByOrganization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **organization** | **String**| The identifier of the resource. | 
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

[**ReportPagination**](ReportPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cgetTemplatesByOrganization**
> TemplatePagination cgetTemplatesByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, after, before, page, limit)

Retrieve all Template resources.

### Example
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = OrganizationApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final organization = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
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
    final result = api_instance.cgetTemplatesByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, after, before, page, limit);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationApi->cgetTemplatesByOrganization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **organization** | **String**| The identifier of the resource. | 
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

[**TemplatePagination**](TemplatePagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAnalyticByOrganization**
> Chart getAnalyticByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, archived, asset, assetsLeftSquareBracketRightSquareBracket, category, categoriesLeftSquareBracketRightSquareBracket, categoryType, categoryTypesLeftSquareBracketRightSquareBracket, createdBy, createdBiesLeftSquareBracketRightSquareBracket, afterDueBy, after, beforeDueBy, before, deep, delegatedTo, delegatedTosLeftSquareBracketRightSquareBracket, equipmentLeftSquareBracketRightSquareBracket, hasDocuments, managedBy, managedBiesLeftSquareBracketRightSquareBracket, member, membersLeftSquareBracketRightSquareBracket, operationStateAll, operationState, operationStatesLeftSquareBracketRightSquareBracket, phase, phasesLeftSquareBracketRightSquareBracket, place, placesLeftSquareBracketRightSquareBracket, priority, prioritiesLeftSquareBracketRightSquareBracket, ratingLeftSquareBracketRightSquareBracket, reporter, reportersLeftSquareBracketRightSquareBracket, scheduledAtAfter, scheduledAtBefore, state, statesLeftSquareBracketRightSquareBracket, optionsLeftSquareBracketPropertyRightSquareBracket, optionsLeftSquareBracketSortRightSquareBracket)

Retrieve one Analytic resource.

### Example
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = OrganizationApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final organization = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
final archived = true; // bool | 
final asset = asset_example; // String | 
final assetsLeftSquareBracketRightSquareBracket = []; // List<String> | 
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
final managedBy = managedBy_example; // String | 
final managedBiesLeftSquareBracketRightSquareBracket = []; // List<String> | 
final member = member_example; // String | 
final membersLeftSquareBracketRightSquareBracket = []; // List<String> | 
final operationStateAll = operationStateAll_example; // String | 
final operationState = operationState_example; // String | 
final operationStatesLeftSquareBracketRightSquareBracket = []; // List<String> | 
final phase = phase_example; // String | 
final phasesLeftSquareBracketRightSquareBracket = []; // List<String> | 
final place = place_example; // String | 
final placesLeftSquareBracketRightSquareBracket = []; // List<String> | 
final priority = priority_example; // String | 
final prioritiesLeftSquareBracketRightSquareBracket = []; // List<String> | 
final ratingLeftSquareBracketRightSquareBracket = []; // List<String> | 
final reporter = reporter_example; // String | 
final reportersLeftSquareBracketRightSquareBracket = []; // List<String> | 
final scheduledAtAfter = 2013-10-20T19:20:30+01:00; // DateTime | 
final scheduledAtBefore = 2013-10-20T19:20:30+01:00; // DateTime | 
final state = state_example; // String | 
final statesLeftSquareBracketRightSquareBracket = []; // List<String> | 
final optionsLeftSquareBracketPropertyRightSquareBracket = optionsLeftSquareBracketPropertyRightSquareBracket_example; // String | 
final optionsLeftSquareBracketSortRightSquareBracket = optionsLeftSquareBracketSortRightSquareBracket_example; // String | 

try {
    final result = api_instance.getAnalyticByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, archived, asset, assetsLeftSquareBracketRightSquareBracket, category, categoriesLeftSquareBracketRightSquareBracket, categoryType, categoryTypesLeftSquareBracketRightSquareBracket, createdBy, createdBiesLeftSquareBracketRightSquareBracket, afterDueBy, after, beforeDueBy, before, deep, delegatedTo, delegatedTosLeftSquareBracketRightSquareBracket, equipmentLeftSquareBracketRightSquareBracket, hasDocuments, managedBy, managedBiesLeftSquareBracketRightSquareBracket, member, membersLeftSquareBracketRightSquareBracket, operationStateAll, operationState, operationStatesLeftSquareBracketRightSquareBracket, phase, phasesLeftSquareBracketRightSquareBracket, place, placesLeftSquareBracketRightSquareBracket, priority, prioritiesLeftSquareBracketRightSquareBracket, ratingLeftSquareBracketRightSquareBracket, reporter, reportersLeftSquareBracketRightSquareBracket, scheduledAtAfter, scheduledAtBefore, state, statesLeftSquareBracketRightSquareBracket, optionsLeftSquareBracketPropertyRightSquareBracket, optionsLeftSquareBracketSortRightSquareBracket);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationApi->getAnalyticByOrganization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **organization** | **String**| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **archived** | **bool**|  | [optional] 
 **asset** | **String**|  | [optional] 
 **assetsLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
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
 **managedBy** | **String**|  | [optional] 
 **managedBiesLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **member** | **String**|  | [optional] 
 **membersLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **operationStateAll** | **String**|  | [optional] 
 **operationState** | **String**|  | [optional] 
 **operationStatesLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **phase** | **String**|  | [optional] 
 **phasesLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **place** | **String**|  | [optional] 
 **placesLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **priority** | **String**|  | [optional] 
 **prioritiesLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **ratingLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **reporter** | **String**|  | [optional] 
 **reportersLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **scheduledAtAfter** | **DateTime**|  | [optional] 
 **scheduledAtBefore** | **DateTime**|  | [optional] 
 **state** | **String**|  | [optional] 
 **statesLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **optionsLeftSquareBracketPropertyRightSquareBracket** | **String**|  | [optional] 
 **optionsLeftSquareBracketSortRightSquareBracket** | **String**|  | [optional] 

### Return type

[**Chart**](Chart.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConfigurationByOrganization**
> Configuration getConfigurationByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieve one Configuration resource.

### Example
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = OrganizationApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final organization = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    final result = api_instance.getConfigurationByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationApi->getConfigurationByOrganization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **organization** | **String**| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Configuration**](Configuration.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFormByOrganization**
> Schema getFormByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieve one Form resource.

### Example
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = OrganizationApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final organization = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    final result = api_instance.getFormByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationApi->getFormByOrganization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **organization** | **String**| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Schema**](Schema.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganization**
> Organization getOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieve one Organization resource.

### Example
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = OrganizationApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final organization = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    final result = api_instance.getOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationApi->getOrganization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **organization** | **String**| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Organization**](Organization.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchOrganization**
> Organization patchOrganization(xKeyclicApp, organization, organizationPatch, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Edit one Organization resource.

### Example
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = OrganizationApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final organization = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final organizationPatch = OrganizationPatch(); // OrganizationPatch | 
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    final result = api_instance.patchOrganization(xKeyclicApp, organization, organizationPatch, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationApi->patchOrganization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **organization** | **String**| The identifier of the resource. | 
 **organizationPatch** | [**OrganizationPatch**](OrganizationPatch.md)|  | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Organization**](Organization.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

