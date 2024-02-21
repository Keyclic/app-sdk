# keyclic_sdk_api_platform.api.TicketApi

## Load the API package
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTicket**](TicketApi.md#getticket) | **GET** /tickets/{identifier} | Retrieves a Ticket resource.
[**getTicketCollection**](TicketApi.md#getticketcollection) | **GET** /tickets | Retrieves the collection of Ticket resources.


# **getTicket**
> TicketJsonhalRead getTicket(identifier, xKeyclicApp, xOrganizationId, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieves a Ticket resource.

Retrieves a Ticket resource.

### Example 
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = TicketApi();
final identifier = identifier_example; // String | Task identifier
final xKeyclicApp = xKeyclicApp_example; // String | 
final xOrganizationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    final result = api_instance.getTicket(identifier, xKeyclicApp, xOrganizationId, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling TicketApi->getTicket: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Task identifier | 
 **xKeyclicApp** | **String**|  | 
 **xOrganizationId** | **String**|  | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**TicketJsonhalRead**](TicketJsonhalRead.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTicketCollection**
> GetTicketCollection200Response getTicketCollection(xKeyclicApp, xOrganizationId, page, limit, pagination, search, createdAtLeftSquareBracketBeforeRightSquareBracket, createdAtLeftSquareBracketStrictlyBeforeRightSquareBracket, createdAtLeftSquareBracketAfterRightSquareBracket, createdAtLeftSquareBracketStrictlyAfterRightSquareBracket, dueByLeftSquareBracketBeforeRightSquareBracket, dueByLeftSquareBracketStrictlyBeforeRightSquareBracket, dueByLeftSquareBracketAfterRightSquareBracket, dueByLeftSquareBracketStrictlyAfterRightSquareBracket, scheduledAtLeftSquareBracketBeforeRightSquareBracket, scheduledAtLeftSquareBracketStrictlyBeforeRightSquareBracket, scheduledAtLeftSquareBracketAfterRightSquareBracket, scheduledAtLeftSquareBracketStrictlyAfterRightSquareBracket, updatedAtLeftSquareBracketBeforeRightSquareBracket, updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket, updatedAtLeftSquareBracketAfterRightSquareBracket, updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket, existsLeftSquareBracketArchivedAtRightSquareBracket, existsLeftSquareBracketAssignmentsRightSquareBracket, existsLeftSquareBracketDocumentsRightSquareBracket, orderLeftSquareBracketCreatedAtRightSquareBracket, orderLeftSquareBracketDueByRightSquareBracket, orderLeftSquareBracketPriorityPeriodPositionRightSquareBracket, orderLeftSquareBracketScheduledAtRightSquareBracket, orderLeftSquareBracketUpdatedAtRightSquareBracket, asset, assetLeftSquareBracketRightSquareBracket, assignmentsPeriodService, assignmentsPeriodServiceLeftSquareBracketRightSquareBracket, assignmentsPeriodServicePeriodManager, assignmentsPeriodServicePeriodManagerLeftSquareBracketRightSquareBracket, category, categoryLeftSquareBracketRightSquareBracket, categoryPeriodType, categoryPeriodTypeLeftSquareBracketRightSquareBracket, childrenPeriodAssignmentsPeriodMember, childrenPeriodAssignmentsPeriodMemberLeftSquareBracketRightSquareBracket, childrenPeriodState, childrenPeriodStateLeftSquareBracketRightSquareBracket, createdBy, createdByLeftSquareBracketRightSquareBracket, feedbackPeriodBatch, feedbackPeriodBatchLeftSquareBracketRightSquareBracket, feedbackPeriodVisibility, feedbackPeriodVisibilityLeftSquareBracketRightSquareBracket, level, levelLeftSquareBracketRightSquareBracket, parent, parentLeftSquareBracketRightSquareBracket, phase, phaseLeftSquareBracketRightSquareBracket, priority, priorityLeftSquareBracketRightSquareBracket, reviewsPeriodReviewRating, reviewsPeriodReviewRatingLeftSquareBracketRightSquareBracket, state, stateLeftSquareBracketRightSquareBracket, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieves the collection of Ticket resources.

Retrieves the collection of Ticket resources.

### Example 
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = TicketApi();
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
final dueByLeftSquareBracketBeforeRightSquareBracket = dueByLeftSquareBracketBeforeRightSquareBracket_example; // String | 
final dueByLeftSquareBracketStrictlyBeforeRightSquareBracket = dueByLeftSquareBracketStrictlyBeforeRightSquareBracket_example; // String | 
final dueByLeftSquareBracketAfterRightSquareBracket = dueByLeftSquareBracketAfterRightSquareBracket_example; // String | 
final dueByLeftSquareBracketStrictlyAfterRightSquareBracket = dueByLeftSquareBracketStrictlyAfterRightSquareBracket_example; // String | 
final scheduledAtLeftSquareBracketBeforeRightSquareBracket = scheduledAtLeftSquareBracketBeforeRightSquareBracket_example; // String | 
final scheduledAtLeftSquareBracketStrictlyBeforeRightSquareBracket = scheduledAtLeftSquareBracketStrictlyBeforeRightSquareBracket_example; // String | 
final scheduledAtLeftSquareBracketAfterRightSquareBracket = scheduledAtLeftSquareBracketAfterRightSquareBracket_example; // String | 
final scheduledAtLeftSquareBracketStrictlyAfterRightSquareBracket = scheduledAtLeftSquareBracketStrictlyAfterRightSquareBracket_example; // String | 
final updatedAtLeftSquareBracketBeforeRightSquareBracket = updatedAtLeftSquareBracketBeforeRightSquareBracket_example; // String | 
final updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket = updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket_example; // String | 
final updatedAtLeftSquareBracketAfterRightSquareBracket = updatedAtLeftSquareBracketAfterRightSquareBracket_example; // String | 
final updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket = updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket_example; // String | 
final existsLeftSquareBracketArchivedAtRightSquareBracket = true; // bool | 
final existsLeftSquareBracketAssignmentsRightSquareBracket = true; // bool | 
final existsLeftSquareBracketDocumentsRightSquareBracket = true; // bool | 
final orderLeftSquareBracketCreatedAtRightSquareBracket = orderLeftSquareBracketCreatedAtRightSquareBracket_example; // String | 
final orderLeftSquareBracketDueByRightSquareBracket = orderLeftSquareBracketDueByRightSquareBracket_example; // String | 
final orderLeftSquareBracketPriorityPeriodPositionRightSquareBracket = orderLeftSquareBracketPriorityPeriodPositionRightSquareBracket_example; // String | 
final orderLeftSquareBracketScheduledAtRightSquareBracket = orderLeftSquareBracketScheduledAtRightSquareBracket_example; // String | 
final orderLeftSquareBracketUpdatedAtRightSquareBracket = orderLeftSquareBracketUpdatedAtRightSquareBracket_example; // String | 
final asset = asset_example; // String | 
final assetLeftSquareBracketRightSquareBracket = []; // List<String> | 
final assignmentsPeriodService = assignmentsPeriodService_example; // String | 
final assignmentsPeriodServiceLeftSquareBracketRightSquareBracket = []; // List<String> | 
final assignmentsPeriodServicePeriodManager = assignmentsPeriodServicePeriodManager_example; // String | 
final assignmentsPeriodServicePeriodManagerLeftSquareBracketRightSquareBracket = []; // List<String> | 
final category = category_example; // String | 
final categoryLeftSquareBracketRightSquareBracket = []; // List<String> | 
final categoryPeriodType = categoryPeriodType_example; // String | 
final categoryPeriodTypeLeftSquareBracketRightSquareBracket = []; // List<String> | 
final childrenPeriodAssignmentsPeriodMember = childrenPeriodAssignmentsPeriodMember_example; // String | 
final childrenPeriodAssignmentsPeriodMemberLeftSquareBracketRightSquareBracket = []; // List<String> | 
final childrenPeriodState = childrenPeriodState_example; // String | 
final childrenPeriodStateLeftSquareBracketRightSquareBracket = []; // List<String> | 
final createdBy = createdBy_example; // String | 
final createdByLeftSquareBracketRightSquareBracket = []; // List<String> | 
final feedbackPeriodBatch = feedbackPeriodBatch_example; // String | 
final feedbackPeriodBatchLeftSquareBracketRightSquareBracket = []; // List<String> | 
final feedbackPeriodVisibility = feedbackPeriodVisibility_example; // String | 
final feedbackPeriodVisibilityLeftSquareBracketRightSquareBracket = []; // List<String> | 
final level = 56; // int | 
final levelLeftSquareBracketRightSquareBracket = []; // List<int> | 
final parent = parent_example; // String | 
final parentLeftSquareBracketRightSquareBracket = []; // List<String> | 
final phase = phase_example; // String | 
final phaseLeftSquareBracketRightSquareBracket = []; // List<String> | 
final priority = priority_example; // String | 
final priorityLeftSquareBracketRightSquareBracket = []; // List<String> | 
final reviewsPeriodReviewRating = 56; // int | 
final reviewsPeriodReviewRatingLeftSquareBracketRightSquareBracket = []; // List<int> | 
final state = state_example; // String | 
final stateLeftSquareBracketRightSquareBracket = []; // List<String> | 
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    final result = api_instance.getTicketCollection(xKeyclicApp, xOrganizationId, page, limit, pagination, search, createdAtLeftSquareBracketBeforeRightSquareBracket, createdAtLeftSquareBracketStrictlyBeforeRightSquareBracket, createdAtLeftSquareBracketAfterRightSquareBracket, createdAtLeftSquareBracketStrictlyAfterRightSquareBracket, dueByLeftSquareBracketBeforeRightSquareBracket, dueByLeftSquareBracketStrictlyBeforeRightSquareBracket, dueByLeftSquareBracketAfterRightSquareBracket, dueByLeftSquareBracketStrictlyAfterRightSquareBracket, scheduledAtLeftSquareBracketBeforeRightSquareBracket, scheduledAtLeftSquareBracketStrictlyBeforeRightSquareBracket, scheduledAtLeftSquareBracketAfterRightSquareBracket, scheduledAtLeftSquareBracketStrictlyAfterRightSquareBracket, updatedAtLeftSquareBracketBeforeRightSquareBracket, updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket, updatedAtLeftSquareBracketAfterRightSquareBracket, updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket, existsLeftSquareBracketArchivedAtRightSquareBracket, existsLeftSquareBracketAssignmentsRightSquareBracket, existsLeftSquareBracketDocumentsRightSquareBracket, orderLeftSquareBracketCreatedAtRightSquareBracket, orderLeftSquareBracketDueByRightSquareBracket, orderLeftSquareBracketPriorityPeriodPositionRightSquareBracket, orderLeftSquareBracketScheduledAtRightSquareBracket, orderLeftSquareBracketUpdatedAtRightSquareBracket, asset, assetLeftSquareBracketRightSquareBracket, assignmentsPeriodService, assignmentsPeriodServiceLeftSquareBracketRightSquareBracket, assignmentsPeriodServicePeriodManager, assignmentsPeriodServicePeriodManagerLeftSquareBracketRightSquareBracket, category, categoryLeftSquareBracketRightSquareBracket, categoryPeriodType, categoryPeriodTypeLeftSquareBracketRightSquareBracket, childrenPeriodAssignmentsPeriodMember, childrenPeriodAssignmentsPeriodMemberLeftSquareBracketRightSquareBracket, childrenPeriodState, childrenPeriodStateLeftSquareBracketRightSquareBracket, createdBy, createdByLeftSquareBracketRightSquareBracket, feedbackPeriodBatch, feedbackPeriodBatchLeftSquareBracketRightSquareBracket, feedbackPeriodVisibility, feedbackPeriodVisibilityLeftSquareBracketRightSquareBracket, level, levelLeftSquareBracketRightSquareBracket, parent, parentLeftSquareBracketRightSquareBracket, phase, phaseLeftSquareBracketRightSquareBracket, priority, priorityLeftSquareBracketRightSquareBracket, reviewsPeriodReviewRating, reviewsPeriodReviewRatingLeftSquareBracketRightSquareBracket, state, stateLeftSquareBracketRightSquareBracket, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling TicketApi->getTicketCollection: $e\n');
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
 **dueByLeftSquareBracketBeforeRightSquareBracket** | **String**|  | [optional] 
 **dueByLeftSquareBracketStrictlyBeforeRightSquareBracket** | **String**|  | [optional] 
 **dueByLeftSquareBracketAfterRightSquareBracket** | **String**|  | [optional] 
 **dueByLeftSquareBracketStrictlyAfterRightSquareBracket** | **String**|  | [optional] 
 **scheduledAtLeftSquareBracketBeforeRightSquareBracket** | **String**|  | [optional] 
 **scheduledAtLeftSquareBracketStrictlyBeforeRightSquareBracket** | **String**|  | [optional] 
 **scheduledAtLeftSquareBracketAfterRightSquareBracket** | **String**|  | [optional] 
 **scheduledAtLeftSquareBracketStrictlyAfterRightSquareBracket** | **String**|  | [optional] 
 **updatedAtLeftSquareBracketBeforeRightSquareBracket** | **String**|  | [optional] 
 **updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket** | **String**|  | [optional] 
 **updatedAtLeftSquareBracketAfterRightSquareBracket** | **String**|  | [optional] 
 **updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket** | **String**|  | [optional] 
 **existsLeftSquareBracketArchivedAtRightSquareBracket** | **bool**|  | [optional] 
 **existsLeftSquareBracketAssignmentsRightSquareBracket** | **bool**|  | [optional] 
 **existsLeftSquareBracketDocumentsRightSquareBracket** | **bool**|  | [optional] 
 **orderLeftSquareBracketCreatedAtRightSquareBracket** | **String**|  | [optional] 
 **orderLeftSquareBracketDueByRightSquareBracket** | **String**|  | [optional] 
 **orderLeftSquareBracketPriorityPeriodPositionRightSquareBracket** | **String**|  | [optional] 
 **orderLeftSquareBracketScheduledAtRightSquareBracket** | **String**|  | [optional] 
 **orderLeftSquareBracketUpdatedAtRightSquareBracket** | **String**|  | [optional] 
 **asset** | **String**|  | [optional] 
 **assetLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **assignmentsPeriodService** | **String**|  | [optional] 
 **assignmentsPeriodServiceLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **assignmentsPeriodServicePeriodManager** | **String**|  | [optional] 
 **assignmentsPeriodServicePeriodManagerLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **category** | **String**|  | [optional] 
 **categoryLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **categoryPeriodType** | **String**|  | [optional] 
 **categoryPeriodTypeLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **childrenPeriodAssignmentsPeriodMember** | **String**|  | [optional] 
 **childrenPeriodAssignmentsPeriodMemberLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **childrenPeriodState** | **String**|  | [optional] 
 **childrenPeriodStateLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **createdBy** | **String**|  | [optional] 
 **createdByLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **feedbackPeriodBatch** | **String**|  | [optional] 
 **feedbackPeriodBatchLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **feedbackPeriodVisibility** | **String**|  | [optional] 
 **feedbackPeriodVisibilityLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **level** | **int**|  | [optional] 
 **levelLeftSquareBracketRightSquareBracket** | [**List<int>**](int.md)|  | [optional] [default to const []]
 **parent** | **String**|  | [optional] 
 **parentLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **phase** | **String**|  | [optional] 
 **phaseLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **priority** | **String**|  | [optional] 
 **priorityLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **reviewsPeriodReviewRating** | **int**|  | [optional] 
 **reviewsPeriodReviewRatingLeftSquareBracketRightSquareBracket** | [**List<int>**](int.md)|  | [optional] [default to const []]
 **state** | **String**|  | [optional] 
 **stateLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**GetTicketCollection200Response**](GetTicketCollection200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

