# keyclic_sdk_api.api.ExportApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cpostExportByOrganization**](ExportApi.md#cpostExportByOrganization) | **POST** /organizations/{organization}/reports/exports | Retrieve all Export resources.
[**getExportByOrganizationAndToken**](ExportApi.md#getExportByOrganizationAndToken) | **GET** /organizations/{organization}/exports/{token} | Retrieve one Export resource.


# **cpostExportByOrganization**
> Report cpostExportByOrganization(xKeyclicApp, organization, acceptLanguage, xKeyclicAppVersion, place, assignedTo, category, after, before, delegatedTo, order, query, state, page, limit)

Retrieve all Export resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = ExportApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var organization = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var place = ; // String | The identifier of the resource.
var assignedTo = ; // String | The identifier of the resource.
var category = ; // String | The identifier of the resource.
var after = 2013-10-20T19:20:30+01:00; // DateTime | 
var before = 2013-10-20T19:20:30+01:00; // DateTime | 
var delegatedTo = ; // String | The identifier of the resource.
var order = order_example; // String | 
var query = query_example; // String | 
var state = state_example; // String | 
var page = 56; // int | Page of the overview.
var limit = 56; // int | Page of the overview.

try { 
    var result = api_instance.cpostExportByOrganization(xKeyclicApp, organization, acceptLanguage, xKeyclicAppVersion, place, assignedTo, category, after, before, delegatedTo, order, query, state, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling ExportApi->cpostExportByOrganization: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **place** | [**String**](.md)| The identifier of the resource. | [optional] 
 **assignedTo** | [**String**](.md)| The identifier of the resource. | [optional] 
 **category** | [**String**](.md)| The identifier of the resource. | [optional] 
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **delegatedTo** | [**String**](.md)| The identifier of the resource. | [optional] 
 **order** | **String**|  | [optional] [default to desc]
 **query** | **String**|  | [optional] 
 **state** | **String**|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]

### Return type

[**Report**](Report.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExportByOrganizationAndToken**
> MultipartFile getExportByOrganizationAndToken(xKeyclicApp, organization, token, acceptLanguage, xKeyclicAppVersion)

Retrieve one Export resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';

var api_instance = ExportApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var organization = ; // String | The identifier of the resource.
var token = token_example; // String | 
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.getExportByOrganizationAndToken(xKeyclicApp, organization, token, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling ExportApi->getExportByOrganizationAndToken: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **token** | **String**|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**MultipartFile**](File.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
