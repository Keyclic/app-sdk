# keyclic_sdk_api.api.PersonApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetDocumentsByPerson**](PersonApi.md#cgetdocumentsbyperson) | **GET** /people/{person}/documents | Retrieve all Document resources.
[**cgetMembershipsByPerson**](PersonApi.md#cgetmembershipsbyperson) | **GET** /people/{person}/memberships | Retrieve all Membership resources.
[**cgetOperationsByPerson**](PersonApi.md#cgetoperationsbyperson) | **GET** /people/{person}/operations | Retrieve all Operation resources.
[**cgetReviewRequestsByPerson**](PersonApi.md#cgetreviewrequestsbyperson) | **GET** /people/{person}/review-requests | Retrieve all ReviewRequest resources.
[**deletePerson**](PersonApi.md#deleteperson) | **DELETE** /people/{person} | Remove one Person resource.
[**getFeedByPerson**](PersonApi.md#getfeedbyperson) | **GET** /people/{person}/feed | Retrieve one Feed resource.
[**getPerson**](PersonApi.md#getperson) | **GET** /people/{person} | Retrieve one Person resource.
[**patchPerson**](PersonApi.md#patchperson) | **PATCH** /people/{person} | Edit one Person resource.


# **cgetDocumentsByPerson**
> DocumentPagination cgetDocumentsByPerson(xKeyclicApp, person, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, after, before, organization, organizationsLeftSquareBracketRightSquareBracket, state, statesLeftSquareBracketRightSquareBracket, page, limit)

Retrieve all Document resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = PersonApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final person = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
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
    final result = api_instance.cgetDocumentsByPerson(xKeyclicApp, person, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, after, before, organization, organizationsLeftSquareBracketRightSquareBracket, state, statesLeftSquareBracketRightSquareBracket, page, limit);
    print(result);
} catch (e) {
    print('Exception when calling PersonApi->cgetDocumentsByPerson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **person** | **String**| The identifier of the resource. | 
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

# **cgetMembershipsByPerson**
> MemberPagination cgetMembershipsByPerson(xKeyclicApp, person, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, archived, contactPointEmail, after, before, organization, organizationsLeftSquareBracketRightSquareBracket, permission, query, role, rolesLeftSquareBracketRightSquareBracket, type, page, limit)

Retrieve all Membership resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = PersonApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final person = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
final orderLeftSquareBracketRightSquareBracket = []; // List<String> | 
final archived = archived_example; // String | 
final contactPointEmail = contactPointEmail_example; // String | 
final after = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 
final organization = organization_example; // String | 
final organizationsLeftSquareBracketRightSquareBracket = []; // List<String> | 
final permission = permission_example; // String | 
final query = query_example; // String | 
final role = role_example; // String | 
final rolesLeftSquareBracketRightSquareBracket = []; // List<String> | 
final type = type_example; // String | 
final page = 56; // int | Page of the overview.
final limit = 56; // int | Page of the overview.

try { 
    final result = api_instance.cgetMembershipsByPerson(xKeyclicApp, person, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, archived, contactPointEmail, after, before, organization, organizationsLeftSquareBracketRightSquareBracket, permission, query, role, rolesLeftSquareBracketRightSquareBracket, type, page, limit);
    print(result);
} catch (e) {
    print('Exception when calling PersonApi->cgetMembershipsByPerson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **person** | **String**| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **orderLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **archived** | **String**|  | [optional] 
 **contactPointEmail** | **String**|  | [optional] 
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **organization** | **String**|  | [optional] 
 **organizationsLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **permission** | **String**|  | [optional] 
 **query** | **String**|  | [optional] 
 **role** | **String**|  | [optional] 
 **rolesLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **type** | **String**|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]

### Return type

[**MemberPagination**](MemberPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cgetOperationsByPerson**
> OperationPagination cgetOperationsByPerson(xKeyclicApp, person, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, archived, asset, assetsLeftSquareBracketRightSquareBracket, batch, batchesLeftSquareBracketRightSquareBracket, category, categoriesLeftSquareBracketRightSquareBracket, createdBy, createdBiesLeftSquareBracketRightSquareBracket, afterDueBy, after, beforeDueBy, before, deep, delegatedTo, delegatedTosLeftSquareBracketRightSquareBracket, hasDocuments, isEmpty, isNull, leaf, level, managedBy, managedBiesLeftSquareBracketRightSquareBracket, member, membersLeftSquareBracketRightSquareBracket, operationStateAll, operationState, operationStatesLeftSquareBracketRightSquareBracket, organization, organizationsLeftSquareBracketRightSquareBracket, phase, phasesLeftSquareBracketRightSquareBracket, place, placesLeftSquareBracketRightSquareBracket, priority, prioritiesLeftSquareBracketRightSquareBracket, query, ratingLeftSquareBracketRightSquareBracket, scheduledAtAfter, scheduledAtBefore, state, statesLeftSquareBracketRightSquareBracket, visibilityLeftSquareBracketRightSquareBracket, page, limit)

Retrieve all Operation resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = PersonApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final person = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
final orderLeftSquareBracketRightSquareBracket = []; // List<String> | 
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
final scheduledAtAfter = 2013-10-20T19:20:30+01:00; // DateTime | 
final scheduledAtBefore = 2013-10-20T19:20:30+01:00; // DateTime | 
final state = state_example; // String | 
final statesLeftSquareBracketRightSquareBracket = []; // List<String> | 
final visibilityLeftSquareBracketRightSquareBracket = []; // List<String> | 
final page = 56; // int | Page of the overview.
final limit = 56; // int | Page of the overview.

try { 
    final result = api_instance.cgetOperationsByPerson(xKeyclicApp, person, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, archived, asset, assetsLeftSquareBracketRightSquareBracket, batch, batchesLeftSquareBracketRightSquareBracket, category, categoriesLeftSquareBracketRightSquareBracket, createdBy, createdBiesLeftSquareBracketRightSquareBracket, afterDueBy, after, beforeDueBy, before, deep, delegatedTo, delegatedTosLeftSquareBracketRightSquareBracket, hasDocuments, isEmpty, isNull, leaf, level, managedBy, managedBiesLeftSquareBracketRightSquareBracket, member, membersLeftSquareBracketRightSquareBracket, operationStateAll, operationState, operationStatesLeftSquareBracketRightSquareBracket, organization, organizationsLeftSquareBracketRightSquareBracket, phase, phasesLeftSquareBracketRightSquareBracket, place, placesLeftSquareBracketRightSquareBracket, priority, prioritiesLeftSquareBracketRightSquareBracket, query, ratingLeftSquareBracketRightSquareBracket, scheduledAtAfter, scheduledAtBefore, state, statesLeftSquareBracketRightSquareBracket, visibilityLeftSquareBracketRightSquareBracket, page, limit);
    print(result);
} catch (e) {
    print('Exception when calling PersonApi->cgetOperationsByPerson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **person** | **String**| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **orderLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
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

# **cgetReviewRequestsByPerson**
> ReviewRequestPagination cgetReviewRequestsByPerson(xKeyclicApp, person, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, after, before, hasReview, page, limit)

Retrieve all ReviewRequest resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = PersonApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final person = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
final orderLeftSquareBracketRightSquareBracket = []; // List<String> | 
final after = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 
final hasReview = hasReview_example; // String | 
final page = 56; // int | Page of the overview.
final limit = 56; // int | Page of the overview.

try { 
    final result = api_instance.cgetReviewRequestsByPerson(xKeyclicApp, person, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, after, before, hasReview, page, limit);
    print(result);
} catch (e) {
    print('Exception when calling PersonApi->cgetReviewRequestsByPerson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **person** | **String**| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **orderLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **hasReview** | **String**|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]

### Return type

[**ReviewRequestPagination**](ReviewRequestPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePerson**
> deletePerson(xKeyclicApp, person, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Remove one Person resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = PersonApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final person = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    api_instance.deletePerson(xKeyclicApp, person, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
} catch (e) {
    print('Exception when calling PersonApi->deletePerson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **person** | **String**| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFeedByPerson**
> Feed getFeedByPerson(xKeyclicApp, person, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieve one Feed resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = PersonApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final person = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    final result = api_instance.getFeedByPerson(xKeyclicApp, person, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling PersonApi->getFeedByPerson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **person** | **String**| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Feed**](Feed.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPerson**
> Person getPerson(xKeyclicApp, person, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieve one Person resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = PersonApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final person = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    final result = api_instance.getPerson(xKeyclicApp, person, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling PersonApi->getPerson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **person** | **String**| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Person**](Person.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchPerson**
> Person patchPerson(xKeyclicApp, person, personPatch, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Edit one Person resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = PersonApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final person = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final personPatch = PersonPatch(); // PersonPatch | 
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    final result = api_instance.patchPerson(xKeyclicApp, person, personPatch, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling PersonApi->patchPerson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **person** | **String**| The identifier of the resource. | 
 **personPatch** | [**PersonPatch**](PersonPatch.md)|  | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Person**](Person.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

