# keyclic_sdk_api.api.PdfApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cpostImage**](PdfApi.md#cpostimage) | **POST** /pdf/images | Retrieve all Image resources.


# **cpostImage**
> BinaryPagination cpostImage(xKeyclicApp, fileData, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, page, limit)

Retrieve all Image resources.

### Example
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = PdfApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final fileData = FileData(); // FileData | 
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
final page = 56; // int | Page of the overview.
final limit = 56; // int | Page of the overview.

try {
    final result = api_instance.cpostImage(xKeyclicApp, fileData, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, page, limit);
    print(result);
} catch (e) {
    print('Exception when calling PdfApi->cpostImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **fileData** | [**FileData**](FileData.md)|  | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]

### Return type

[**BinaryPagination**](BinaryPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

