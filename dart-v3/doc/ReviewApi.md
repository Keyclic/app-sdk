# keyclic_sdk_api_platform.api.ReviewApi

## Load the API package
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getReview**](ReviewApi.md#getreview) | **GET** /reviews/{identifier} | Retrieves a Review resource.
[**getReviewCollection**](ReviewApi.md#getreviewcollection) | **GET** /reviews | Retrieves the collection of Review resources.


# **getReview**
> ReviewJsonhalRead getReview(identifier, xKeyclicApp, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieves a Review resource.

Retrieves a Review resource.

### Example
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = ReviewApi();
final identifier = identifier_example; // String | Review identifier
final xKeyclicApp = xKeyclicApp_example; // String | 
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    final result = api_instance.getReview(identifier, xKeyclicApp, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling ReviewApi->getReview: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Review identifier | 
 **xKeyclicApp** | **String**|  | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**ReviewJsonhalRead**](ReviewJsonhalRead.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReviewCollection**
> GetReviewCollection200Response getReviewCollection(xKeyclicApp, xOrganizationId, page, limit, pagination, itemReviewed, itemReviewedLeftSquareBracketRightSquareBracket, itemReviewedPeriodAssignmentsPeriodService, itemReviewedPeriodAssignmentsPeriodServiceLeftSquareBracketRightSquareBracket, itemReviewedPeriodCategory, itemReviewedPeriodCategoryLeftSquareBracketRightSquareBracket, reviewRating, reviewRatingLeftSquareBracketRightSquareBracket, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieves the collection of Review resources.

Retrieves the collection of Review resources.

### Example
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = ReviewApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final xOrganizationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final page = 56; // int | The collection page number
final limit = 56; // int | The number of items per page
final pagination = true; // bool | Enable or disable pagination
final itemReviewed = itemReviewed_example; // String | 
final itemReviewedLeftSquareBracketRightSquareBracket = []; // List<String> | 
final itemReviewedPeriodAssignmentsPeriodService = itemReviewedPeriodAssignmentsPeriodService_example; // String | 
final itemReviewedPeriodAssignmentsPeriodServiceLeftSquareBracketRightSquareBracket = []; // List<String> | 
final itemReviewedPeriodCategory = itemReviewedPeriodCategory_example; // String | 
final itemReviewedPeriodCategoryLeftSquareBracketRightSquareBracket = []; // List<String> | 
final reviewRating = 56; // int | 
final reviewRatingLeftSquareBracketRightSquareBracket = []; // List<int> | 
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    final result = api_instance.getReviewCollection(xKeyclicApp, xOrganizationId, page, limit, pagination, itemReviewed, itemReviewedLeftSquareBracketRightSquareBracket, itemReviewedPeriodAssignmentsPeriodService, itemReviewedPeriodAssignmentsPeriodServiceLeftSquareBracketRightSquareBracket, itemReviewedPeriodCategory, itemReviewedPeriodCategoryLeftSquareBracketRightSquareBracket, reviewRating, reviewRatingLeftSquareBracketRightSquareBracket, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling ReviewApi->getReviewCollection: $e\n');
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
 **itemReviewed** | **String**|  | [optional] 
 **itemReviewedLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **itemReviewedPeriodAssignmentsPeriodService** | **String**|  | [optional] 
 **itemReviewedPeriodAssignmentsPeriodServiceLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **itemReviewedPeriodCategory** | **String**|  | [optional] 
 **itemReviewedPeriodCategoryLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **reviewRating** | **int**|  | [optional] 
 **reviewRatingLeftSquareBracketRightSquareBracket** | [**List<int>**](int.md)|  | [optional] [default to const []]
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**GetReviewCollection200Response**](GetReviewCollection200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

