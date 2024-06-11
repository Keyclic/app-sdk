# keyclic_sdk_api.api.ConnectorApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postConnectorByConnectorAndWorkflow**](ConnectorApi.md#postconnectorbyconnectorandworkflow) | **POST** /connectors/{connector}/workflows/{workflow}/runs | Create one Connector resource.


# **postConnectorByConnectorAndWorkflow**
> Run postConnectorByConnectorAndWorkflow(xKeyclicApp, connector, workflow, runData, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Create one Connector resource.

### Example
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = ConnectorApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final connector = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final workflow = workflow_example; // String | 
final runData = RunData(); // RunData | 
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    final result = api_instance.postConnectorByConnectorAndWorkflow(xKeyclicApp, connector, workflow, runData, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling ConnectorApi->postConnectorByConnectorAndWorkflow: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **connector** | **String**| The identifier of the resource. | 
 **workflow** | **String**|  | 
 **runData** | [**RunData**](RunData.md)|  | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Run**](Run.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

