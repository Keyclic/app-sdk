# keyclic_sdk_api.api.ExportApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postExport**](ExportApi.md#postExport) | **POST** /exports | Create one Export resource.


# **postExport**
> ModelExport postExport(xKeyclicApp, exportData, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, assignedTo, assignedTos[], batch, batches[], category, categories[], createdBy, createdBies[], after, before, deep, delegatedTo, delegatedTos[], hasDocuments, isNull, leaf, level, managedBy, managedBies[], operationStateAll, operationState, operationStates[], order, organization, organizations[], phase, phases[], place, places[], priority, priorities[], query, rating, scheduledAtAfter, scheduledAtBefore, state, states[], visibility[])

Create one Export resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = ExportApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var exportData = ExportData(); // ExportData | 
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var assignedTo = assignedTo_example; // String | 
var assignedTos[] = []; // List<String> | 
var batch = batch_example; // String | 
var batches[] = []; // List<String> | 
var category = category_example; // String | 
var categories[] = []; // List<String> | 
var createdBy = createdBy_example; // String | 
var createdBies[] = []; // List<String> | 
var after = 2013-10-20T19:20:30+01:00; // DateTime | 
var before = 2013-10-20T19:20:30+01:00; // DateTime | 
var deep = deep_example; // String | 
var delegatedTo = delegatedTo_example; // String | 
var delegatedTos[] = []; // List<String> | 
var hasDocuments = hasDocuments_example; // String | 
var isNull = isNull_example; // String | 
var leaf = leaf_example; // String | 
var level = level_example; // String | 
var managedBy = managedBy_example; // String | 
var managedBies[] = []; // List<String> | 
var operationStateAll = operationStateAll_example; // String | 
var operationState = operationState_example; // String | 
var operationStates[] = []; // List<String> | 
var order = order_example; // String | 
var organization = organization_example; // String | 
var organizations[] = []; // List<String> | 
var phase = phase_example; // String | 
var phases[] = []; // List<String> | 
var place = place_example; // String | 
var places[] = []; // List<String> | 
var priority = priority_example; // String | 
var priorities[] = []; // List<String> | 
var query = query_example; // String | 
var rating = rating_example; // String | 
var scheduledAtAfter = 2013-10-20T19:20:30+01:00; // DateTime | 
var scheduledAtBefore = 2013-10-20T19:20:30+01:00; // DateTime | 
var state = state_example; // String | 
var states[] = []; // List<String> | 
var visibility[] = visibility[]_example; // String | 

try { 
    var result = api_instance.postExport(xKeyclicApp, exportData, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, assignedTo, assignedTos[], batch, batches[], category, categories[], createdBy, createdBies[], after, before, deep, delegatedTo, delegatedTos[], hasDocuments, isNull, leaf, level, managedBy, managedBies[], operationStateAll, operationState, operationStates[], order, organization, organizations[], phase, phases[], place, places[], priority, priorities[], query, rating, scheduledAtAfter, scheduledAtBefore, state, states[], visibility[]);
    print(result);
} catch (e) {
    print("Exception when calling ExportApi->postExport: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **exportData** | [**ExportData**](ExportData.md)|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **assignedTo** | **String**|  | [optional] 
 **assignedTos[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **batch** | **String**|  | [optional] 
 **batches[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **category** | **String**|  | [optional] 
 **categories[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **createdBy** | **String**|  | [optional] 
 **createdBies[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **deep** | **String**|  | [optional] 
 **delegatedTo** | **String**|  | [optional] 
 **delegatedTos[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **hasDocuments** | **String**|  | [optional] 
 **isNull** | **String**|  | [optional] 
 **leaf** | **String**|  | [optional] 
 **level** | **String**|  | [optional] 
 **managedBy** | **String**|  | [optional] 
 **managedBies[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **operationStateAll** | **String**|  | [optional] 
 **operationState** | **String**|  | [optional] 
 **operationStates[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **order** | **String**|  | [optional] [default to desc]
 **organization** | **String**|  | [optional] 
 **organizations[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **phase** | **String**|  | [optional] 
 **phases[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **place** | **String**|  | [optional] 
 **places[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **priority** | **String**|  | [optional] 
 **priorities[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **query** | **String**|  | [optional] 
 **rating** | **String**|  | [optional] 
 **scheduledAtAfter** | **DateTime**|  | [optional] 
 **scheduledAtBefore** | **DateTime**|  | [optional] 
 **state** | **String**|  | [optional] 
 **states[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **visibility[]** | **String**|  | [optional] 

### Return type

[**ModelExport**](ModelExport.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

