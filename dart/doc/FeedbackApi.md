# keyclic_sdk_api.api.FeedbackApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetFeedback**](FeedbackApi.md#cgetFeedback) | **GET** /feedbacks | Retrieve all Feedback resources.
[**cgetFeedbackByPerson**](FeedbackApi.md#cgetFeedbackByPerson) | **GET** /people/{person}/feedbacks | Retrieve all Feedback resources.
[**getFeedback**](FeedbackApi.md#getFeedback) | **GET** /feedbacks/{feedback} | Retrieve one Feedback resource.


# **cgetFeedback**
> FeedbackPagination cgetFeedback(xKeyclicApp, acceptLanguage, xKeyclicAppVersion, state, category, after, before, geoHash[], geoNear, order, organization, visibility[], page, limit)

Retrieve all Feedback resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';

var api_instance = FeedbackApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var state = state_example; // String | 
var category = ; // String | The identifier of the resource.
var after = 2013-10-20T19:20:30+01:00; // DateTime | 
var before = 2013-10-20T19:20:30+01:00; // DateTime | 
var geoHash[] = geoHash[]_example; // String | 
var geoNear = geoNear_example; // String | One latitude, one longitude and one radius (in meters) serialized and separated by a plus or a minus sign.
var order = order_example; // String | 
var organization = ; // String | The identifier of the resource.
var visibility[] = visibility[]_example; // String | 
var page = 56; // int | Page of the overview.
var limit = 56; // int | Page of the overview.

try { 
    var result = api_instance.cgetFeedback(xKeyclicApp, acceptLanguage, xKeyclicAppVersion, state, category, after, before, geoHash[], geoNear, order, organization, visibility[], page, limit);
    print(result);
} catch (e) {
    print("Exception when calling FeedbackApi->cgetFeedback: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **state** | **String**|  | [optional] [default to DELIVERED]
 **category** | [**String**](.md)| The identifier of the resource. | [optional] 
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **geoHash[]** | **String**|  | [optional] 
 **geoNear** | **String**| One latitude, one longitude and one radius (in meters) serialized and separated by a plus or a minus sign. | [optional] 
 **order** | **String**|  | [optional] [default to desc]
 **organization** | [**String**](.md)| The identifier of the resource. | [optional] 
 **visibility[]** | **String**|  | [optional] [default to VISIBILITY_PUBLIC]
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]

### Return type

[**FeedbackPagination**](FeedbackPagination.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cgetFeedbackByPerson**
> FeedbackPagination cgetFeedbackByPerson(xKeyclicApp, person, acceptLanguage, xKeyclicAppVersion, category, after, before, geoHash[], geoNear, order, organization, state, visibility[], page, limit)

Retrieve all Feedback resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = FeedbackApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var person = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var category = ; // String | The identifier of the resource.
var after = 2013-10-20T19:20:30+01:00; // DateTime | 
var before = 2013-10-20T19:20:30+01:00; // DateTime | 
var geoHash[] = geoHash[]_example; // String | 
var geoNear = geoNear_example; // String | One latitude, one longitude and one radius (in meters) serialized and separated by a plus or a minus sign.
var order = order_example; // String | 
var organization = ; // String | The identifier of the resource.
var state = state_example; // String | 
var visibility[] = visibility[]_example; // String | 
var page = 56; // int | Page of the overview.
var limit = 56; // int | Page of the overview.

try { 
    var result = api_instance.cgetFeedbackByPerson(xKeyclicApp, person, acceptLanguage, xKeyclicAppVersion, category, after, before, geoHash[], geoNear, order, organization, state, visibility[], page, limit);
    print(result);
} catch (e) {
    print("Exception when calling FeedbackApi->cgetFeedbackByPerson: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **person** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **category** | [**String**](.md)| The identifier of the resource. | [optional] 
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **geoHash[]** | **String**|  | [optional] 
 **geoNear** | **String**| One latitude, one longitude and one radius (in meters) serialized and separated by a plus or a minus sign. | [optional] 
 **order** | **String**|  | [optional] [default to desc]
 **organization** | [**String**](.md)| The identifier of the resource. | [optional] 
 **state** | **String**|  | [optional] 
 **visibility[]** | **String**|  | [optional] [default to VISIBILITY_PUBLIC]
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]

### Return type

[**FeedbackPagination**](FeedbackPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFeedback**
> Feedback getFeedback(xKeyclicApp, feedback, acceptLanguage, xKeyclicAppVersion)

Retrieve one Feedback resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = FeedbackApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var feedback = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.getFeedback(xKeyclicApp, feedback, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling FeedbackApi->getFeedback: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **feedback** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Feedback**](Feedback.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
