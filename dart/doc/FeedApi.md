# keyclic_sdk_api.api.FeedApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetActivitiesByFeed**](FeedApi.md#cgetactivitiesbyfeed) | **GET** /feeds/{feed} | Retrieve all Activity resources.
[**postReadByFeedAndGroup**](FeedApi.md#postreadbyfeedandgroup) | **POST** /feeds/{feed}/read/{group} | Create one Read resource.


# **cgetActivitiesByFeed**
> ActivityAggregatedPagination cgetActivitiesByFeed(xKeyclicApp, feed, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, page, limit)

Retrieve all Activity resources.

### Example
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = FeedApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final feed = feed_example; // String | 
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
final page = 56; // int | Page of the overview.
final limit = 56; // int | Page of the overview.

try {
    final result = api_instance.cgetActivitiesByFeed(xKeyclicApp, feed, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, page, limit);
    print(result);
} catch (e) {
    print('Exception when calling FeedApi->cgetActivitiesByFeed: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **feed** | **String**|  | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]

### Return type

[**ActivityAggregatedPagination**](ActivityAggregatedPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postReadByFeedAndGroup**
> postReadByFeedAndGroup(xKeyclicApp, feed, group, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Create one Read resource.

### Example
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = FeedApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final feed = feed_example; // String | 
final group = group_example; // String | 
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    api_instance.postReadByFeedAndGroup(xKeyclicApp, feed, group, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
} catch (e) {
    print('Exception when calling FeedApi->postReadByFeedAndGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **feed** | **String**|  | 
 **group** | **String**|  | 
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

