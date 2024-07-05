# keyclic_sdk_api_platform.api.TargetGroupApi

## Load the API package
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTicketTargetGroups**](TargetGroupApi.md#gettickettargetgroups) | **GET** /tickets/{identifier}/target-groups | Retrieves the collection of TargetGroup resources.


# **getTicketTargetGroups**
> GetTicketTargetGroups200Response getTicketTargetGroups(identifier, xKeyclicApp, xOrganizationId, page, limit, pagination, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, xEnableDispatch)

Retrieves the collection of TargetGroup resources.

Retrieves the collection of TargetGroup resources.

### Example
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = TargetGroupApi();
final identifier = identifier_example; // String | Task identifier
final xKeyclicApp = xKeyclicApp_example; // String | 
final xOrganizationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final page = 56; // int | The collection page number
final limit = 56; // int | The number of items per page
final pagination = true; // bool | Enable or disable pagination
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
final xEnableDispatch = xEnableDispatch_example; // bool | 

try {
    final result = api_instance.getTicketTargetGroups(identifier, xKeyclicApp, xOrganizationId, page, limit, pagination, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, xEnableDispatch);
    print(result);
} catch (e) {
    print('Exception when calling TargetGroupApi->getTicketTargetGroups: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Task identifier | 
 **xKeyclicApp** | **String**|  | 
 **xOrganizationId** | **String**|  | 
 **page** | **int**| The collection page number | [optional] [default to 1]
 **limit** | **int**| The number of items per page | [optional] [default to 10]
 **pagination** | **bool**| Enable or disable pagination | [optional] 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **xEnableDispatch** | **bool**|  | [optional] 

### Return type

[**GetTicketTargetGroups200Response**](GetTicketTargetGroups200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

