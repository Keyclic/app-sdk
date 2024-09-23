# keyclic_sdk_api_platform.api.ConnectorApi

## Load the API package
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getConnector**](ConnectorApi.md#getconnector) | **GET** /connectors/{identifier} | Retrieves a Connector resource.


# **getConnector**
> ConnectorJsonhalRead getConnector(identifier, acceptLanguage)

Retrieves a Connector resource.

Retrieves a Connector resource.

### Example
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = ConnectorApi();
final identifier = identifier_example; // String | Connector identifier
final acceptLanguage = acceptLanguage_example; // String | 

try {
    final result = api_instance.getConnector(identifier, acceptLanguage);
    print(result);
} catch (e) {
    print('Exception when calling ConnectorApi->getConnector: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Connector identifier | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']

### Return type

[**ConnectorJsonhalRead**](ConnectorJsonhalRead.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

