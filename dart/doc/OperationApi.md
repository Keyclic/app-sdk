# keyclic_sdk_api.api.OperationApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetAssignmentsByOperation**](OperationApi.md#cgetAssignmentsByOperation) | **GET** /operations/{operation}/assignments | Retrieve all Assignment resources.
[**cgetCommentsByOperation**](OperationApi.md#cgetCommentsByOperation) | **GET** /operations/{operation}/comments | Retrieve all Comment resources.
[**cgetDocumentsByOperation**](OperationApi.md#cgetDocumentsByOperation) | **GET** /operations/{operation}/documents | Retrieve all Document resources.
[**deleteAttachmentByOperationAndAttachment**](OperationApi.md#deleteAttachmentByOperationAndAttachment) | **DELETE** /operations/{operation}/attachments/{attachment} | Remove one Attachment resource.
[**deleteOperation**](OperationApi.md#deleteOperation) | **DELETE** /operations/{operation} | Remove one Operation resource.
[**getOperation**](OperationApi.md#getOperation) | **GET** /operations/{operation} | Retrieve one Operation resource.
[**getTrackingByOperation**](OperationApi.md#getTrackingByOperation) | **GET** /operations/{operation}/tracking | Retrieve one Tracking resource.
[**patchOperation**](OperationApi.md#patchOperation) | **PATCH** /operations/{operation} | Edit one Operation resource.
[**postAssignByOperation**](OperationApi.md#postAssignByOperation) | **POST** /operations/{operation}/assign | Create one Assign resource.
[**postAttachmentByOperation**](OperationApi.md#postAttachmentByOperation) | **POST** /operations/{operation}/attachments | Create one Attachment resource.
[**postCommentByOperation**](OperationApi.md#postCommentByOperation) | **POST** /operations/{operation}/comments | Create one Comment resource.
[**postOperation**](OperationApi.md#postOperation) | **POST** /operations | Create one Operation resource.
[**postSignByOperation**](OperationApi.md#postSignByOperation) | **POST** /operations/{operation}/sign | Create one Sign resource.
[**postWorkflowByOperation**](OperationApi.md#postWorkflowByOperation) | **POST** /operations/{operation}/workflow | Create one Workflow resource.


# **cgetAssignmentsByOperation**
> AssignmentPagination cgetAssignmentsByOperation(xKeyclicApp, operation, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, order[], after, before, page, limit)

Retrieve all Assignment resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OperationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var operation = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var order[] = []; // List<String> | 
var after = 2013-10-20T19:20:30+01:00; // DateTime | 
var before = 2013-10-20T19:20:30+01:00; // DateTime | 
var page = 56; // int | Page of the overview.
var limit = 56; // int | Page of the overview.

try { 
    var result = api_instance.cgetAssignmentsByOperation(xKeyclicApp, operation, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, order[], after, before, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling OperationApi->cgetAssignmentsByOperation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **operation** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **order[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]

### Return type

[**AssignmentPagination**](AssignmentPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cgetCommentsByOperation**
> ActivityPagination cgetCommentsByOperation(xKeyclicApp, operation, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, page, limit)

Retrieve all Comment resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OperationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var operation = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var page = 56; // int | Page of the overview.
var limit = 56; // int | Page of the overview.

try { 
    var result = api_instance.cgetCommentsByOperation(xKeyclicApp, operation, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling OperationApi->cgetCommentsByOperation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **operation** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
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

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cgetDocumentsByOperation**
> DocumentPagination cgetDocumentsByOperation(xKeyclicApp, operation, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, order[], after, before, organization, organizations[], state, states[], page, limit)

Retrieve all Document resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OperationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var operation = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var order[] = []; // List<String> | 
var after = 2013-10-20T19:20:30+01:00; // DateTime | 
var before = 2013-10-20T19:20:30+01:00; // DateTime | 
var organization = organization_example; // String | 
var organizations[] = []; // List<String> | 
var state = state_example; // String | 
var states[] = []; // List<String> | 
var page = 56; // int | Page of the overview.
var limit = 56; // int | Page of the overview.

try { 
    var result = api_instance.cgetDocumentsByOperation(xKeyclicApp, operation, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, order[], after, before, organization, organizations[], state, states[], page, limit);
    print(result);
} catch (e) {
    print("Exception when calling OperationApi->cgetDocumentsByOperation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **operation** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **order[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **organization** | **String**|  | [optional] 
 **organizations[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **state** | **String**|  | [optional] 
 **states[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]

### Return type

[**DocumentPagination**](DocumentPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAttachmentByOperationAndAttachment**
> deleteAttachmentByOperationAndAttachment(xKeyclicApp, operation, attachment, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Remove one Attachment resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OperationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var operation = ; // String | The identifier of the resource.
var attachment = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    api_instance.deleteAttachmentByOperationAndAttachment(xKeyclicApp, operation, attachment, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
} catch (e) {
    print("Exception when calling OperationApi->deleteAttachmentByOperationAndAttachment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **operation** | [**String**](.md)| The identifier of the resource. | 
 **attachment** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOperation**
> deleteOperation(xKeyclicApp, operation, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Remove one Operation resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OperationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var operation = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    api_instance.deleteOperation(xKeyclicApp, operation, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
} catch (e) {
    print("Exception when calling OperationApi->deleteOperation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **operation** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOperation**
> Operation getOperation(xKeyclicApp, operation, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieve one Operation resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OperationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var operation = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.getOperation(xKeyclicApp, operation, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling OperationApi->getOperation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **operation** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Operation**](Operation.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTrackingByOperation**
> Tracking getTrackingByOperation(xKeyclicApp, operation, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieve one Tracking resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OperationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var operation = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.getTrackingByOperation(xKeyclicApp, operation, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling OperationApi->getTrackingByOperation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **operation** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Tracking**](Tracking.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchOperation**
> Operation patchOperation(xKeyclicApp, taskPatch, operation, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Edit one Operation resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OperationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var taskPatch = TaskPatch(); // TaskPatch | 
var operation = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.patchOperation(xKeyclicApp, taskPatch, operation, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling OperationApi->patchOperation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **taskPatch** | [**TaskPatch**](TaskPatch.md)|  | 
 **operation** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Operation**](Operation.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postAssignByOperation**
> Operation postAssignByOperation(xKeyclicApp, assignData, operation, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Create one Assign resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OperationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var assignData = AssignData(); // AssignData | 
var operation = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.postAssignByOperation(xKeyclicApp, assignData, operation, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling OperationApi->postAssignByOperation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **assignData** | [**AssignData**](AssignData.md)|  | 
 **operation** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Operation**](Operation.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postAttachmentByOperation**
> Operation postAttachmentByOperation(xKeyclicApp, fileData, operation, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Create one Attachment resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OperationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var fileData = FileData(); // FileData | 
var operation = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.postAttachmentByOperation(xKeyclicApp, fileData, operation, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling OperationApi->postAttachmentByOperation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **fileData** | [**FileData**](FileData.md)|  | 
 **operation** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Operation**](Operation.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postCommentByOperation**
> Operation postCommentByOperation(xKeyclicApp, commentData, operation, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Create one Comment resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OperationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var commentData = CommentData(); // CommentData | 
var operation = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.postCommentByOperation(xKeyclicApp, commentData, operation, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling OperationApi->postCommentByOperation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **commentData** | [**CommentData**](CommentData.md)|  | 
 **operation** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Operation**](Operation.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postOperation**
> Operation postOperation(xKeyclicApp, operationData, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Create one Operation resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OperationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var operationData = OperationData(); // OperationData | 
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.postOperation(xKeyclicApp, operationData, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling OperationApi->postOperation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **operationData** | [**OperationData**](OperationData.md)|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Operation**](Operation.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postSignByOperation**
> Operation postSignByOperation(xKeyclicApp, legacySignatureData, operation, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Create one Sign resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OperationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var legacySignatureData = LegacySignatureData(); // LegacySignatureData | 
var operation = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.postSignByOperation(xKeyclicApp, legacySignatureData, operation, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling OperationApi->postSignByOperation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **legacySignatureData** | [**LegacySignatureData**](LegacySignatureData.md)|  | 
 **operation** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Operation**](Operation.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postWorkflowByOperation**
> Operation postWorkflowByOperation(xKeyclicApp, workflowData, operation, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Create one Workflow resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OperationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var workflowData = WorkflowData(); // WorkflowData | 
var operation = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.postWorkflowByOperation(xKeyclicApp, workflowData, operation, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling OperationApi->postWorkflowByOperation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **workflowData** | [**WorkflowData**](WorkflowData.md)|  | 
 **operation** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Operation**](Operation.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

