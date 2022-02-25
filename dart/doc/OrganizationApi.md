# keyclic_sdk_api.api.OrganizationApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetCategoriesByOrganization**](OrganizationApi.md#cgetCategoriesByOrganization) | **GET** /organizations/{organization}/categories | Retrieve all Category resources.
[**cgetDocumentsByOrganization**](OrganizationApi.md#cgetDocumentsByOrganization) | **GET** /organizations/{organization}/documents | Retrieve all Document resources.
[**cgetExternalServicesByOrganization**](OrganizationApi.md#cgetExternalServicesByOrganization) | **GET** /organizations/{organization}/external-services | Retrieve all ExternalService resources.
[**cgetInternalServicesByOrganization**](OrganizationApi.md#cgetInternalServicesByOrganization) | **GET** /organizations/{organization}/internal-services | Retrieve all InternalService resources.
[**cgetMembersByOrganization**](OrganizationApi.md#cgetMembersByOrganization) | **GET** /organizations/{organization}/members | Retrieve all Member resources.
[**cgetOperationsByOrganization**](OrganizationApi.md#cgetOperationsByOrganization) | **GET** /organizations/{organization}/operations | Retrieve all Operation resources.
[**cgetOrganizations**](OrganizationApi.md#cgetOrganizations) | **GET** /organizations | Retrieve all Organization resources.
[**cgetPlacesByOrganization**](OrganizationApi.md#cgetPlacesByOrganization) | **GET** /organizations/{organization}/places | Retrieve all Place resources.
[**cgetPublicationsByOrganization**](OrganizationApi.md#cgetPublicationsByOrganization) | **GET** /organizations/{organization}/publications | Retrieve all Publication resources.
[**cgetReportsByOrganization**](OrganizationApi.md#cgetReportsByOrganization) | **GET** /organizations/{organization}/reports | Retrieve all Report resources.
[**cgetServicesByOrganization**](OrganizationApi.md#cgetServicesByOrganization) | **GET** /organizations/{organization}/services | Retrieve all Service resources.
[**cgetTemplatesByOrganization**](OrganizationApi.md#cgetTemplatesByOrganization) | **GET** /organizations/{organization}/templates | Retrieve all Template resources.
[**getAnalyticByOrganization**](OrganizationApi.md#getAnalyticByOrganization) | **GET** /organizations/{organization}/analytics | Retrieve one Analytic resource.
[**getConfigurationByOrganization**](OrganizationApi.md#getConfigurationByOrganization) | **GET** /organizations/{organization}/configuration | Retrieve one Configuration resource.
[**getFormByOrganization**](OrganizationApi.md#getFormByOrganization) | **GET** /organizations/{organization}/form | Retrieve one Form resource.
[**getOrganization**](OrganizationApi.md#getOrganization) | **GET** /organizations/{organization} | Retrieve one Organization resource.
[**patchOrganization**](OrganizationApi.md#patchOrganization) | **PATCH** /organizations/{organization} | Edit one Organization resource.


# **cgetCategoriesByOrganization**
> CategoryPagination cgetCategoriesByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, order[], businessActivity, businessActivities[], after, before, geoPoint, geoCoordinates, leaf, level, organizations[], query, page, limit)

Retrieve all Category resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OrganizationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var organization = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var order[] = []; // List<String> | 
var businessActivity = businessActivity_example; // String | 
var businessActivities[] = []; // List<String> | 
var after = 2013-10-20T19:20:30+01:00; // DateTime | 
var before = 2013-10-20T19:20:30+01:00; // DateTime | 
var geoPoint = geoPoint_example; // String | One latitude and one longitude serialized and separated by a plus or a minus sign.
var geoCoordinates = geoCoordinates_example; // String | One latitude and one longitude serialized and separated by a plus or a minus sign.
var leaf = leaf_example; // String | 
var level = level_example; // String | 
var organizations[] = []; // List<String> | 
var query = query_example; // String | 
var page = 56; // int | Page of the overview.
var limit = 56; // int | Page of the overview.

try { 
    var result = api_instance.cgetCategoriesByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, order[], businessActivity, businessActivities[], after, before, geoPoint, geoCoordinates, leaf, level, organizations[], query, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling OrganizationApi->cgetCategoriesByOrganization: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **order[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **businessActivity** | **String**|  | [optional] 
 **businessActivities[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **geoPoint** | **String**| One latitude and one longitude serialized and separated by a plus or a minus sign. | [optional] 
 **geoCoordinates** | **String**| One latitude and one longitude serialized and separated by a plus or a minus sign. | [optional] 
 **leaf** | **String**|  | [optional] 
 **level** | **String**|  | [optional] 
 **organizations[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **query** | **String**|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]

### Return type

[**CategoryPagination**](CategoryPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cgetDocumentsByOrganization**
> DocumentPagination cgetDocumentsByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, order[], after, before, organizations[], state, states[], page, limit)

Retrieve all Document resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OrganizationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var organization = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var order[] = []; // List<String> | 
var after = 2013-10-20T19:20:30+01:00; // DateTime | 
var before = 2013-10-20T19:20:30+01:00; // DateTime | 
var organizations[] = []; // List<String> | 
var state = state_example; // String | 
var states[] = []; // List<String> | 
var page = 56; // int | Page of the overview.
var limit = 56; // int | Page of the overview.

try { 
    var result = api_instance.cgetDocumentsByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, order[], after, before, organizations[], state, states[], page, limit);
    print(result);
} catch (e) {
    print("Exception when calling OrganizationApi->cgetDocumentsByOrganization: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **order[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
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

# **cgetExternalServicesByOrganization**
> ExternalServicePagination cgetExternalServicesByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, order[], after, before, query, page, limit)

Retrieve all ExternalService resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OrganizationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var organization = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var order[] = []; // List<String> | 
var after = 2013-10-20T19:20:30+01:00; // DateTime | 
var before = 2013-10-20T19:20:30+01:00; // DateTime | 
var query = query_example; // String | 
var page = 56; // int | Page of the overview.
var limit = 56; // int | Page of the overview.

try { 
    var result = api_instance.cgetExternalServicesByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, order[], after, before, query, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling OrganizationApi->cgetExternalServicesByOrganization: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **order[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **query** | **String**|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]

### Return type

[**ExternalServicePagination**](ExternalServicePagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cgetInternalServicesByOrganization**
> InternalServicePagination cgetInternalServicesByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, order[], after, before, query, page, limit)

Retrieve all InternalService resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OrganizationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var organization = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var order[] = []; // List<String> | 
var after = 2013-10-20T19:20:30+01:00; // DateTime | 
var before = 2013-10-20T19:20:30+01:00; // DateTime | 
var query = query_example; // String | 
var page = 56; // int | Page of the overview.
var limit = 56; // int | Page of the overview.

try { 
    var result = api_instance.cgetInternalServicesByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, order[], after, before, query, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling OrganizationApi->cgetInternalServicesByOrganization: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **order[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **query** | **String**|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]

### Return type

[**InternalServicePagination**](InternalServicePagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cgetMembersByOrganization**
> MemberPagination cgetMembersByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, order[], after, before, permission, query, role, roles[], type, page, limit)

Retrieve all Member resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OrganizationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var organization = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var order[] = []; // List<String> | 
var after = 2013-10-20T19:20:30+01:00; // DateTime | 
var before = 2013-10-20T19:20:30+01:00; // DateTime | 
var permission = permission_example; // String | 
var query = query_example; // String | 
var role = role_example; // String | 
var roles[] = []; // List<String> | 
var type = type_example; // String | 
var page = 56; // int | Page of the overview.
var limit = 56; // int | Page of the overview.

try { 
    var result = api_instance.cgetMembersByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, order[], after, before, permission, query, role, roles[], type, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling OrganizationApi->cgetMembersByOrganization: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **order[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **permission** | **String**|  | [optional] 
 **query** | **String**|  | [optional] 
 **role** | **String**|  | [optional] 
 **roles[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **type** | **String**|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]

### Return type

[**MemberPagination**](MemberPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cgetOperationsByOrganization**
> OperationPagination cgetOperationsByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, order[], assignedTo, assignedTos[], batch, batches[], category, categories[], createdBy, createdBies[], after, before, deep, delegatedTo, delegatedTos[], hasDocuments, isNull, leaf, level, managedBy, managedBies[], operationStateAll, operationState, operationStates[], organizations[], phase, phases[], place, places[], priority, priorities[], query, rating[], scheduledAtAfter, scheduledAtBefore, state, states[], visibility[], page, limit)

Retrieve all Operation resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OrganizationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var organization = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var order[] = []; // List<String> | 
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
var organizations[] = []; // List<String> | 
var phase = phase_example; // String | 
var phases[] = []; // List<String> | 
var place = place_example; // String | 
var places[] = []; // List<String> | 
var priority = priority_example; // String | 
var priorities[] = []; // List<String> | 
var query = query_example; // String | 
var rating[] = []; // List<String> | 
var scheduledAtAfter = 2013-10-20T19:20:30+01:00; // DateTime | 
var scheduledAtBefore = 2013-10-20T19:20:30+01:00; // DateTime | 
var state = state_example; // String | 
var states[] = []; // List<String> | 
var visibility[] = []; // List<String> | 
var page = 56; // int | Page of the overview.
var limit = 56; // int | Page of the overview.

try { 
    var result = api_instance.cgetOperationsByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, order[], assignedTo, assignedTos[], batch, batches[], category, categories[], createdBy, createdBies[], after, before, deep, delegatedTo, delegatedTos[], hasDocuments, isNull, leaf, level, managedBy, managedBies[], operationStateAll, operationState, operationStates[], organizations[], phase, phases[], place, places[], priority, priorities[], query, rating[], scheduledAtAfter, scheduledAtBefore, state, states[], visibility[], page, limit);
    print(result);
} catch (e) {
    print("Exception when calling OrganizationApi->cgetOperationsByOrganization: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **order[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
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
 **organizations[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **phase** | **String**|  | [optional] 
 **phases[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **place** | **String**|  | [optional] 
 **places[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **priority** | **String**|  | [optional] 
 **priorities[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **query** | **String**|  | [optional] 
 **rating[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **scheduledAtAfter** | **DateTime**|  | [optional] 
 **scheduledAtBefore** | **DateTime**|  | [optional] 
 **state** | **String**|  | [optional] 
 **states[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **visibility[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]

### Return type

[**OperationPagination**](OperationPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cgetOrganizations**
> OrganizationPagination cgetOrganizations(xKeyclicApp, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, order[], businessActivity, businessActivities[], after, before, disabledAt, geoPoint, geoCoordinates, organization, organizations[], query, page, limit)

Retrieve all Organization resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OrganizationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var order[] = []; // List<String> | 
var businessActivity = businessActivity_example; // String | 
var businessActivities[] = []; // List<String> | 
var after = 2013-10-20T19:20:30+01:00; // DateTime | 
var before = 2013-10-20T19:20:30+01:00; // DateTime | 
var disabledAt = 2013-10-20T19:20:30+01:00; // DateTime | 
var geoPoint = geoPoint_example; // String | One latitude and one longitude serialized and separated by a plus or a minus sign.
var geoCoordinates = geoCoordinates_example; // String | One latitude and one longitude serialized and separated by a plus or a minus sign.
var organization = organization_example; // String | 
var organizations[] = []; // List<String> | 
var query = query_example; // String | 
var page = 56; // int | Page of the overview.
var limit = 56; // int | Page of the overview.

try { 
    var result = api_instance.cgetOrganizations(xKeyclicApp, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, order[], businessActivity, businessActivities[], after, before, disabledAt, geoPoint, geoCoordinates, organization, organizations[], query, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling OrganizationApi->cgetOrganizations: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **order[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **businessActivity** | **String**|  | [optional] 
 **businessActivities[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **disabledAt** | **DateTime**|  | [optional] 
 **geoPoint** | **String**| One latitude and one longitude serialized and separated by a plus or a minus sign. | [optional] 
 **geoCoordinates** | **String**| One latitude and one longitude serialized and separated by a plus or a minus sign. | [optional] 
 **organization** | **String**|  | [optional] 
 **organizations[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **query** | **String**|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]

### Return type

[**OrganizationPagination**](OrganizationPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cgetPlacesByOrganization**
> PlacePagination cgetPlacesByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, order[], businessActivity, businessActivities[], after, before, geoElevation, geoHash[], geoPoint, geoCoordinates, leaf, level, organizations[], parent, parents[], query, page, limit)

Retrieve all Place resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OrganizationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var organization = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var order[] = []; // List<String> | 
var businessActivity = businessActivity_example; // String | 
var businessActivities[] = []; // List<String> | 
var after = 2013-10-20T19:20:30+01:00; // DateTime | 
var before = 2013-10-20T19:20:30+01:00; // DateTime | 
var geoElevation = geoElevation_example; // String | 
var geoHash[] = []; // List<String> | 
var geoPoint = geoPoint_example; // String | One latitude and one longitude serialized and separated by a plus or a minus sign.
var geoCoordinates = geoCoordinates_example; // String | One latitude and one longitude serialized and separated by a plus or a minus sign.
var leaf = leaf_example; // String | 
var level = level_example; // String | 
var organizations[] = []; // List<String> | 
var parent = parent_example; // String | 
var parents[] = []; // List<String> | 
var query = query_example; // String | 
var page = 56; // int | Page of the overview.
var limit = 56; // int | Page of the overview.

try { 
    var result = api_instance.cgetPlacesByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, order[], businessActivity, businessActivities[], after, before, geoElevation, geoHash[], geoPoint, geoCoordinates, leaf, level, organizations[], parent, parents[], query, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling OrganizationApi->cgetPlacesByOrganization: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **order[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **businessActivity** | **String**|  | [optional] 
 **businessActivities[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **geoElevation** | **String**|  | [optional] 
 **geoHash[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **geoPoint** | **String**| One latitude and one longitude serialized and separated by a plus or a minus sign. | [optional] 
 **geoCoordinates** | **String**| One latitude and one longitude serialized and separated by a plus or a minus sign. | [optional] 
 **leaf** | **String**|  | [optional] 
 **level** | **String**|  | [optional] 
 **organizations[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **parent** | **String**|  | [optional] 
 **parents[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **query** | **String**|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]

### Return type

[**PlacePagination**](PlacePagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cgetPublicationsByOrganization**
> PublicationPagination cgetPublicationsByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, order[], after, before, place, places[], page, limit)

Retrieve all Publication resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OrganizationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var organization = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var order[] = []; // List<String> | 
var after = 2013-10-20T19:20:30+01:00; // DateTime | 
var before = 2013-10-20T19:20:30+01:00; // DateTime | 
var place = place_example; // String | 
var places[] = []; // List<String> | 
var page = 56; // int | Page of the overview.
var limit = 56; // int | Page of the overview.

try { 
    var result = api_instance.cgetPublicationsByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, order[], after, before, place, places[], page, limit);
    print(result);
} catch (e) {
    print("Exception when calling OrganizationApi->cgetPublicationsByOrganization: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **order[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **place** | **String**|  | [optional] 
 **places[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]

### Return type

[**PublicationPagination**](PublicationPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cgetReportsByOrganization**
> ReportPagination cgetReportsByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, order[], assignedTo, assignedTos[], batch, batches[], category, categories[], createdBy, createdBies[], after, before, deep, delegatedTo, delegatedTos[], hasDocuments, isNull, leaf, level, managedBy, managedBies[], operationStateAll, operationState, operationStates[], organizations[], phase, phases[], place, places[], priority, priorities[], query, rating[], scheduledAtAfter, scheduledAtBefore, state, states[], visibility[], page, limit)

Retrieve all Report resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OrganizationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var organization = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var order[] = []; // List<String> | 
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
var organizations[] = []; // List<String> | 
var phase = phase_example; // String | 
var phases[] = []; // List<String> | 
var place = place_example; // String | 
var places[] = []; // List<String> | 
var priority = priority_example; // String | 
var priorities[] = []; // List<String> | 
var query = query_example; // String | 
var rating[] = []; // List<String> | 
var scheduledAtAfter = 2013-10-20T19:20:30+01:00; // DateTime | 
var scheduledAtBefore = 2013-10-20T19:20:30+01:00; // DateTime | 
var state = state_example; // String | 
var states[] = []; // List<String> | 
var visibility[] = []; // List<String> | 
var page = 56; // int | Page of the overview.
var limit = 56; // int | Page of the overview.

try { 
    var result = api_instance.cgetReportsByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, order[], assignedTo, assignedTos[], batch, batches[], category, categories[], createdBy, createdBies[], after, before, deep, delegatedTo, delegatedTos[], hasDocuments, isNull, leaf, level, managedBy, managedBies[], operationStateAll, operationState, operationStates[], organizations[], phase, phases[], place, places[], priority, priorities[], query, rating[], scheduledAtAfter, scheduledAtBefore, state, states[], visibility[], page, limit);
    print(result);
} catch (e) {
    print("Exception when calling OrganizationApi->cgetReportsByOrganization: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **order[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
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
 **organizations[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **phase** | **String**|  | [optional] 
 **phases[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **place** | **String**|  | [optional] 
 **places[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **priority** | **String**|  | [optional] 
 **priorities[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **query** | **String**|  | [optional] 
 **rating[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **scheduledAtAfter** | **DateTime**|  | [optional] 
 **scheduledAtBefore** | **DateTime**|  | [optional] 
 **state** | **String**|  | [optional] 
 **states[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **visibility[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]

### Return type

[**ReportPagination**](ReportPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cgetServicesByOrganization**
> ServicePagination cgetServicesByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, order[], after, before, query, page, limit)

Retrieve all Service resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OrganizationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var organization = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var order[] = []; // List<String> | 
var after = 2013-10-20T19:20:30+01:00; // DateTime | 
var before = 2013-10-20T19:20:30+01:00; // DateTime | 
var query = query_example; // String | 
var page = 56; // int | Page of the overview.
var limit = 56; // int | Page of the overview.

try { 
    var result = api_instance.cgetServicesByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, order[], after, before, query, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling OrganizationApi->cgetServicesByOrganization: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **order[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **query** | **String**|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]

### Return type

[**ServicePagination**](ServicePagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cgetTemplatesByOrganization**
> TemplatePagination cgetTemplatesByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, order[], after, before, page, limit)

Retrieve all Template resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OrganizationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var organization = ; // String | The identifier of the resource.
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
    var result = api_instance.cgetTemplatesByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, order[], after, before, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling OrganizationApi->cgetTemplatesByOrganization: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **organization** | [**String**](.md)| The identifier of the resource. | 
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

[**TemplatePagination**](TemplatePagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAnalyticByOrganization**
> Chart getAnalyticByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, assignedTo, assignedTos[], category, categories[], createdBy, createdBies[], after, before, deep, delegatedTo, delegatedTos[], hasDocuments, managedBy, managedBies[], operationStateAll, operationState, operationStates[], phase, phases[], place, places[], priority, priorities[], rating[], state, states[], options[property], options[sort])

Retrieve one Analytic resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OrganizationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var organization = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var assignedTo = assignedTo_example; // String | 
var assignedTos[] = []; // List<String> | 
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
var managedBy = managedBy_example; // String | 
var managedBies[] = []; // List<String> | 
var operationStateAll = operationStateAll_example; // String | 
var operationState = operationState_example; // String | 
var operationStates[] = []; // List<String> | 
var phase = phase_example; // String | 
var phases[] = []; // List<String> | 
var place = place_example; // String | 
var places[] = []; // List<String> | 
var priority = priority_example; // String | 
var priorities[] = []; // List<String> | 
var rating[] = []; // List<String> | 
var state = state_example; // String | 
var states[] = []; // List<String> | 
var options[property] = options[property]_example; // String | 
var options[sort] = options[sort]_example; // String | 

try { 
    var result = api_instance.getAnalyticByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, assignedTo, assignedTos[], category, categories[], createdBy, createdBies[], after, before, deep, delegatedTo, delegatedTos[], hasDocuments, managedBy, managedBies[], operationStateAll, operationState, operationStates[], phase, phases[], place, places[], priority, priorities[], rating[], state, states[], options[property], options[sort]);
    print(result);
} catch (e) {
    print("Exception when calling OrganizationApi->getAnalyticByOrganization: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **assignedTo** | **String**|  | [optional] 
 **assignedTos[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
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
 **managedBy** | **String**|  | [optional] 
 **managedBies[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **operationStateAll** | **String**|  | [optional] 
 **operationState** | **String**|  | [optional] 
 **operationStates[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **phase** | **String**|  | [optional] 
 **phases[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **place** | **String**|  | [optional] 
 **places[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **priority** | **String**|  | [optional] 
 **priorities[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **rating[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **state** | **String**|  | [optional] 
 **states[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **options[property]** | **String**|  | [optional] 
 **options[sort]** | **String**|  | [optional] 

### Return type

[**Chart**](Chart.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConfigurationByOrganization**
> Configuration getConfigurationByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieve one Configuration resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OrganizationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var organization = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.getConfigurationByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling OrganizationApi->getConfigurationByOrganization: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Configuration**](Configuration.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFormByOrganization**
> Schema getFormByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieve one Form resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OrganizationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var organization = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.getFormByOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling OrganizationApi->getFormByOrganization: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Schema**](Schema.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganization**
> Organization getOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieve one Organization resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OrganizationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var organization = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.getOrganization(xKeyclicApp, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling OrganizationApi->getOrganization: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Organization**](Organization.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchOrganization**
> Organization patchOrganization(xKeyclicApp, organizationPatch, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Edit one Organization resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OrganizationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var organizationPatch = OrganizationPatch(); // OrganizationPatch | 
var organization = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.patchOrganization(xKeyclicApp, organizationPatch, organization, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling OrganizationApi->patchOrganization: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **organizationPatch** | [**OrganizationPatch**](OrganizationPatch.md)|  | 
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Organization**](Organization.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

