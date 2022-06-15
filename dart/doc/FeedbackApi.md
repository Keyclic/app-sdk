# keyclic_sdk_api.api.FeedbackApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetCommentsByFeedback**](FeedbackApi.md#cgetcommentsbyfeedback) | **GET** /feedbacks/{feedback}/comments | Retrieve all Comment resources.
[**cgetFeedback**](FeedbackApi.md#cgetfeedback) | **GET** /feedbacks | Retrieve all Feedback resources.
[**cgetReviewsByFeedback**](FeedbackApi.md#cgetreviewsbyfeedback) | **GET** /feedbacks/{feedback}/reviews | Retrieve all Review resources.
[**deleteFeedback**](FeedbackApi.md#deletefeedback) | **DELETE** /feedbacks/{feedback} | Remove one Feedback resource.
[**getFeedback**](FeedbackApi.md#getfeedback) | **GET** /feedbacks/{feedback} | Retrieve one Feedback resource.
[**getTrackingByFeedback**](FeedbackApi.md#gettrackingbyfeedback) | **GET** /feedbacks/{feedback}/tracking | Retrieve one Tracking resource.
[**postCommentByFeedback**](FeedbackApi.md#postcommentbyfeedback) | **POST** /feedbacks/{feedback}/comments | Create one Comment resource.
[**postImageByFeedback**](FeedbackApi.md#postimagebyfeedback) | **POST** /feedbacks/{feedback}/images | Create one Image resource.
[**postIssue**](FeedbackApi.md#postissue) | **POST** /feedbacks/issues | Create one Issue resource.
[**postWorkflowByFeedback**](FeedbackApi.md#postworkflowbyfeedback) | **POST** /feedbacks/{feedback}/workflow | Create one Workflow resource.


# **cgetCommentsByFeedback**
> ActivityPagination cgetCommentsByFeedback(xKeyclicApp, feedback, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, page, limit)

Retrieve all Comment resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = FeedbackApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final feedback = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
final page = 56; // int | Page of the overview.
final limit = 56; // int | Page of the overview.

try { 
    final result = api_instance.cgetCommentsByFeedback(xKeyclicApp, feedback, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, page, limit);
    print(result);
} catch (e) {
    print('Exception when calling FeedbackApi->cgetCommentsByFeedback: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **feedback** | **String**| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to 'fr-FR']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]

### Return type

[**ActivityPagination**](ActivityPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cgetFeedback**
> FeedbackPagination cgetFeedback(xKeyclicApp, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, batch, batchesLeftSquareBracketRightSquareBracket, after, before, geoHashLeftSquareBracketRightSquareBracket, orderLeftSquareBracketRightSquareBracket, organization, organizationsLeftSquareBracketRightSquareBracket, page, limit)

Retrieve all Feedback resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = FeedbackApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
final batch = batch_example; // String | 
final batchesLeftSquareBracketRightSquareBracket = []; // List<String> | 
final after = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 
final geoHashLeftSquareBracketRightSquareBracket = []; // List<String> | 
final orderLeftSquareBracketRightSquareBracket = []; // List<String> | 
final organization = organization_example; // String | 
final organizationsLeftSquareBracketRightSquareBracket = []; // List<String> | 
final page = 56; // int | Page of the overview.
final limit = 56; // int | Page of the overview.

try { 
    final result = api_instance.cgetFeedback(xKeyclicApp, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, batch, batchesLeftSquareBracketRightSquareBracket, after, before, geoHashLeftSquareBracketRightSquareBracket, orderLeftSquareBracketRightSquareBracket, organization, organizationsLeftSquareBracketRightSquareBracket, page, limit);
    print(result);
} catch (e) {
    print('Exception when calling FeedbackApi->cgetFeedback: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **acceptLanguage** | **String**|  | [optional] [default to 'fr-FR']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **batch** | **String**|  | [optional] 
 **batchesLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **geoHashLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **orderLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **organization** | **String**|  | [optional] 
 **organizationsLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]

### Return type

[**FeedbackPagination**](FeedbackPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cgetReviewsByFeedback**
> ReviewPagination cgetReviewsByFeedback(xKeyclicApp, feedback, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, after, before, page, limit)

Retrieve all Review resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = FeedbackApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final feedback = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
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
    final result = api_instance.cgetReviewsByFeedback(xKeyclicApp, feedback, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, after, before, page, limit);
    print(result);
} catch (e) {
    print('Exception when calling FeedbackApi->cgetReviewsByFeedback: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **feedback** | **String**| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to 'fr-FR']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **orderLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]

### Return type

[**ReviewPagination**](ReviewPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFeedback**
> deleteFeedback(xKeyclicApp, feedback, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Remove one Feedback resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = FeedbackApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final feedback = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    api_instance.deleteFeedback(xKeyclicApp, feedback, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
} catch (e) {
    print('Exception when calling FeedbackApi->deleteFeedback: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **feedback** | **String**| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to 'fr-FR']
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

# **getFeedback**
> Feedback getFeedback(xKeyclicApp, feedback, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieve one Feedback resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = FeedbackApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final feedback = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    final result = api_instance.getFeedback(xKeyclicApp, feedback, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling FeedbackApi->getFeedback: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **feedback** | **String**| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to 'fr-FR']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Feedback**](Feedback.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTrackingByFeedback**
> Tracking getTrackingByFeedback(xKeyclicApp, feedback, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieve one Tracking resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = FeedbackApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final feedback = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    final result = api_instance.getTrackingByFeedback(xKeyclicApp, feedback, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling FeedbackApi->getTrackingByFeedback: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **feedback** | **String**| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to 'fr-FR']
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

# **postCommentByFeedback**
> Feedback postCommentByFeedback(xKeyclicApp, feedback, commentData, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Create one Comment resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = FeedbackApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final feedback = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final commentData = CommentData(); // CommentData | 
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    final result = api_instance.postCommentByFeedback(xKeyclicApp, feedback, commentData, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling FeedbackApi->postCommentByFeedback: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **feedback** | **String**| The identifier of the resource. | 
 **commentData** | [**CommentData**](CommentData.md)|  | 
 **acceptLanguage** | **String**|  | [optional] [default to 'fr-FR']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Feedback**](Feedback.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postImageByFeedback**
> Feedback postImageByFeedback(xKeyclicApp, feedback, imageData, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Create one Image resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = FeedbackApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final feedback = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final imageData = ImageData(); // ImageData | 
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    final result = api_instance.postImageByFeedback(xKeyclicApp, feedback, imageData, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling FeedbackApi->postImageByFeedback: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **feedback** | **String**| The identifier of the resource. | 
 **imageData** | [**ImageData**](ImageData.md)|  | 
 **acceptLanguage** | **String**|  | [optional] [default to 'fr-FR']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Feedback**](Feedback.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postIssue**
> Feedback postIssue(xKeyclicApp, feedbackData, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Create one Issue resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = FeedbackApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final feedbackData = FeedbackData(); // FeedbackData | 
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    final result = api_instance.postIssue(xKeyclicApp, feedbackData, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling FeedbackApi->postIssue: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **feedbackData** | [**FeedbackData**](FeedbackData.md)|  | 
 **acceptLanguage** | **String**|  | [optional] [default to 'fr-FR']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Feedback**](Feedback.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postWorkflowByFeedback**
> Feedback postWorkflowByFeedback(xKeyclicApp, feedback, feedbackWorkflowTransitionData, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Create one Workflow resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = FeedbackApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final feedback = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final feedbackWorkflowTransitionData = FeedbackWorkflowTransitionData(); // FeedbackWorkflowTransitionData | 
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    final result = api_instance.postWorkflowByFeedback(xKeyclicApp, feedback, feedbackWorkflowTransitionData, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling FeedbackApi->postWorkflowByFeedback: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **feedback** | **String**| The identifier of the resource. | 
 **feedbackWorkflowTransitionData** | [**FeedbackWorkflowTransitionData**](FeedbackWorkflowTransitionData.md)|  | 
 **acceptLanguage** | **String**|  | [optional] [default to 'fr-FR']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Feedback**](Feedback.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

