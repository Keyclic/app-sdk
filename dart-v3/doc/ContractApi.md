# keyclic_sdk_api_platform.api.ContractApi

## Load the API package
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getContract**](ContractApi.md#getcontract) | **GET** /contracts/{identifier} | Retrieves a Contract resource.
[**getContracts**](ContractApi.md#getcontracts) | **GET** /contracts | Retrieves the collection of Contract resources.


# **getContract**
> ContractJsonhalRead getContract(identifier, xKeyclicApp, xOrganizationId, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieves a Contract resource.

Retrieves a Contract resource.

### Example 
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = ContractApi();
final identifier = identifier_example; // String | Contract identifier
final xKeyclicApp = xKeyclicApp_example; // String | 
final xOrganizationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    final result = api_instance.getContract(identifier, xKeyclicApp, xOrganizationId, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling ContractApi->getContract: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Contract identifier | 
 **xKeyclicApp** | **String**|  | 
 **xOrganizationId** | **String**|  | 
 **acceptLanguage** | **String**|  | [optional] [default to 'fr-FR']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**ContractJsonhalRead**](ContractJsonhalRead.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getContracts**
> GetContracts200Response getContracts(xKeyclicApp, xOrganizationId, page, limit, pagination, search, createdAtLeftSquareBracketBeforeRightSquareBracket, createdAtLeftSquareBracketStrictlyBeforeRightSquareBracket, createdAtLeftSquareBracketAfterRightSquareBracket, createdAtLeftSquareBracketStrictlyAfterRightSquareBracket, effectiveDateLeftSquareBracketBeforeRightSquareBracket, effectiveDateLeftSquareBracketStrictlyBeforeRightSquareBracket, effectiveDateLeftSquareBracketAfterRightSquareBracket, effectiveDateLeftSquareBracketStrictlyAfterRightSquareBracket, signedAtLeftSquareBracketBeforeRightSquareBracket, signedAtLeftSquareBracketStrictlyBeforeRightSquareBracket, signedAtLeftSquareBracketAfterRightSquareBracket, signedAtLeftSquareBracketStrictlyAfterRightSquareBracket, terminationDateLeftSquareBracketBeforeRightSquareBracket, terminationDateLeftSquareBracketStrictlyBeforeRightSquareBracket, terminationDateLeftSquareBracketAfterRightSquareBracket, terminationDateLeftSquareBracketStrictlyAfterRightSquareBracket, updatedAtLeftSquareBracketBeforeRightSquareBracket, updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket, updatedAtLeftSquareBracketAfterRightSquareBracket, updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket, orderLeftSquareBracketBillingPeriodAdjustedCostPeriodValueRightSquareBracket, orderLeftSquareBracketBillingPeriodInitialCostPeriodValueRightSquareBracket, orderLeftSquareBracketCreatedAtRightSquareBracket, orderLeftSquareBracketEffectiveDateRightSquareBracket, orderLeftSquareBracketNameRightSquareBracket, orderLeftSquareBracketNumberRightSquareBracket, orderLeftSquareBracketUpdatedAtRightSquareBracket, orderLeftSquareBracketSignedAtRightSquareBracket, orderLeftSquareBracketStateRightSquareBracket, propertiesLeftSquareBracketRightSquareBracket, onCall, onCallLeftSquareBracketRightSquareBracket, organizationPeriodIdentifier, organizationPeriodIdentifierLeftSquareBracketRightSquareBracket, providerPeriodIdentifier, providerPeriodIdentifierLeftSquareBracketRightSquareBracket, state, stateLeftSquareBracketRightSquareBracket, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieves the collection of Contract resources.

Retrieves the collection of Contract resources.

### Example 
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = ContractApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final xOrganizationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final page = 56; // int | The collection page number
final limit = 56; // int | The number of items per page
final pagination = true; // bool | Enable or disable pagination
final search = search_example; // String | 
final createdAtLeftSquareBracketBeforeRightSquareBracket = createdAtLeftSquareBracketBeforeRightSquareBracket_example; // String | 
final createdAtLeftSquareBracketStrictlyBeforeRightSquareBracket = createdAtLeftSquareBracketStrictlyBeforeRightSquareBracket_example; // String | 
final createdAtLeftSquareBracketAfterRightSquareBracket = createdAtLeftSquareBracketAfterRightSquareBracket_example; // String | 
final createdAtLeftSquareBracketStrictlyAfterRightSquareBracket = createdAtLeftSquareBracketStrictlyAfterRightSquareBracket_example; // String | 
final effectiveDateLeftSquareBracketBeforeRightSquareBracket = effectiveDateLeftSquareBracketBeforeRightSquareBracket_example; // String | 
final effectiveDateLeftSquareBracketStrictlyBeforeRightSquareBracket = effectiveDateLeftSquareBracketStrictlyBeforeRightSquareBracket_example; // String | 
final effectiveDateLeftSquareBracketAfterRightSquareBracket = effectiveDateLeftSquareBracketAfterRightSquareBracket_example; // String | 
final effectiveDateLeftSquareBracketStrictlyAfterRightSquareBracket = effectiveDateLeftSquareBracketStrictlyAfterRightSquareBracket_example; // String | 
final signedAtLeftSquareBracketBeforeRightSquareBracket = signedAtLeftSquareBracketBeforeRightSquareBracket_example; // String | 
final signedAtLeftSquareBracketStrictlyBeforeRightSquareBracket = signedAtLeftSquareBracketStrictlyBeforeRightSquareBracket_example; // String | 
final signedAtLeftSquareBracketAfterRightSquareBracket = signedAtLeftSquareBracketAfterRightSquareBracket_example; // String | 
final signedAtLeftSquareBracketStrictlyAfterRightSquareBracket = signedAtLeftSquareBracketStrictlyAfterRightSquareBracket_example; // String | 
final terminationDateLeftSquareBracketBeforeRightSquareBracket = terminationDateLeftSquareBracketBeforeRightSquareBracket_example; // String | 
final terminationDateLeftSquareBracketStrictlyBeforeRightSquareBracket = terminationDateLeftSquareBracketStrictlyBeforeRightSquareBracket_example; // String | 
final terminationDateLeftSquareBracketAfterRightSquareBracket = terminationDateLeftSquareBracketAfterRightSquareBracket_example; // String | 
final terminationDateLeftSquareBracketStrictlyAfterRightSquareBracket = terminationDateLeftSquareBracketStrictlyAfterRightSquareBracket_example; // String | 
final updatedAtLeftSquareBracketBeforeRightSquareBracket = updatedAtLeftSquareBracketBeforeRightSquareBracket_example; // String | 
final updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket = updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket_example; // String | 
final updatedAtLeftSquareBracketAfterRightSquareBracket = updatedAtLeftSquareBracketAfterRightSquareBracket_example; // String | 
final updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket = updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket_example; // String | 
final orderLeftSquareBracketBillingPeriodAdjustedCostPeriodValueRightSquareBracket = orderLeftSquareBracketBillingPeriodAdjustedCostPeriodValueRightSquareBracket_example; // String | 
final orderLeftSquareBracketBillingPeriodInitialCostPeriodValueRightSquareBracket = orderLeftSquareBracketBillingPeriodInitialCostPeriodValueRightSquareBracket_example; // String | 
final orderLeftSquareBracketCreatedAtRightSquareBracket = orderLeftSquareBracketCreatedAtRightSquareBracket_example; // String | 
final orderLeftSquareBracketEffectiveDateRightSquareBracket = orderLeftSquareBracketEffectiveDateRightSquareBracket_example; // String | 
final orderLeftSquareBracketNameRightSquareBracket = orderLeftSquareBracketNameRightSquareBracket_example; // String | 
final orderLeftSquareBracketNumberRightSquareBracket = orderLeftSquareBracketNumberRightSquareBracket_example; // String | 
final orderLeftSquareBracketUpdatedAtRightSquareBracket = orderLeftSquareBracketUpdatedAtRightSquareBracket_example; // String | 
final orderLeftSquareBracketSignedAtRightSquareBracket = orderLeftSquareBracketSignedAtRightSquareBracket_example; // String | 
final orderLeftSquareBracketStateRightSquareBracket = orderLeftSquareBracketStateRightSquareBracket_example; // String | 
final propertiesLeftSquareBracketRightSquareBracket = []; // List<String> | 
final onCall = true; // bool | 
final onCallLeftSquareBracketRightSquareBracket = []; // List<bool> | 
final organizationPeriodIdentifier = organizationPeriodIdentifier_example; // String | 
final organizationPeriodIdentifierLeftSquareBracketRightSquareBracket = []; // List<String> | 
final providerPeriodIdentifier = providerPeriodIdentifier_example; // String | 
final providerPeriodIdentifierLeftSquareBracketRightSquareBracket = []; // List<String> | 
final state = state_example; // String | 
final stateLeftSquareBracketRightSquareBracket = []; // List<String> | 
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    final result = api_instance.getContracts(xKeyclicApp, xOrganizationId, page, limit, pagination, search, createdAtLeftSquareBracketBeforeRightSquareBracket, createdAtLeftSquareBracketStrictlyBeforeRightSquareBracket, createdAtLeftSquareBracketAfterRightSquareBracket, createdAtLeftSquareBracketStrictlyAfterRightSquareBracket, effectiveDateLeftSquareBracketBeforeRightSquareBracket, effectiveDateLeftSquareBracketStrictlyBeforeRightSquareBracket, effectiveDateLeftSquareBracketAfterRightSquareBracket, effectiveDateLeftSquareBracketStrictlyAfterRightSquareBracket, signedAtLeftSquareBracketBeforeRightSquareBracket, signedAtLeftSquareBracketStrictlyBeforeRightSquareBracket, signedAtLeftSquareBracketAfterRightSquareBracket, signedAtLeftSquareBracketStrictlyAfterRightSquareBracket, terminationDateLeftSquareBracketBeforeRightSquareBracket, terminationDateLeftSquareBracketStrictlyBeforeRightSquareBracket, terminationDateLeftSquareBracketAfterRightSquareBracket, terminationDateLeftSquareBracketStrictlyAfterRightSquareBracket, updatedAtLeftSquareBracketBeforeRightSquareBracket, updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket, updatedAtLeftSquareBracketAfterRightSquareBracket, updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket, orderLeftSquareBracketBillingPeriodAdjustedCostPeriodValueRightSquareBracket, orderLeftSquareBracketBillingPeriodInitialCostPeriodValueRightSquareBracket, orderLeftSquareBracketCreatedAtRightSquareBracket, orderLeftSquareBracketEffectiveDateRightSquareBracket, orderLeftSquareBracketNameRightSquareBracket, orderLeftSquareBracketNumberRightSquareBracket, orderLeftSquareBracketUpdatedAtRightSquareBracket, orderLeftSquareBracketSignedAtRightSquareBracket, orderLeftSquareBracketStateRightSquareBracket, propertiesLeftSquareBracketRightSquareBracket, onCall, onCallLeftSquareBracketRightSquareBracket, organizationPeriodIdentifier, organizationPeriodIdentifierLeftSquareBracketRightSquareBracket, providerPeriodIdentifier, providerPeriodIdentifierLeftSquareBracketRightSquareBracket, state, stateLeftSquareBracketRightSquareBracket, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling ContractApi->getContracts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | 
 **xOrganizationId** | **String**|  | 
 **page** | **int**| The collection page number | [optional] [default to 1]
 **limit** | **int**| The number of items per page | [optional] [default to 10]
 **pagination** | **bool**| Enable or disable pagination | [optional] 
 **search** | **String**|  | [optional] 
 **createdAtLeftSquareBracketBeforeRightSquareBracket** | **String**|  | [optional] 
 **createdAtLeftSquareBracketStrictlyBeforeRightSquareBracket** | **String**|  | [optional] 
 **createdAtLeftSquareBracketAfterRightSquareBracket** | **String**|  | [optional] 
 **createdAtLeftSquareBracketStrictlyAfterRightSquareBracket** | **String**|  | [optional] 
 **effectiveDateLeftSquareBracketBeforeRightSquareBracket** | **String**|  | [optional] 
 **effectiveDateLeftSquareBracketStrictlyBeforeRightSquareBracket** | **String**|  | [optional] 
 **effectiveDateLeftSquareBracketAfterRightSquareBracket** | **String**|  | [optional] 
 **effectiveDateLeftSquareBracketStrictlyAfterRightSquareBracket** | **String**|  | [optional] 
 **signedAtLeftSquareBracketBeforeRightSquareBracket** | **String**|  | [optional] 
 **signedAtLeftSquareBracketStrictlyBeforeRightSquareBracket** | **String**|  | [optional] 
 **signedAtLeftSquareBracketAfterRightSquareBracket** | **String**|  | [optional] 
 **signedAtLeftSquareBracketStrictlyAfterRightSquareBracket** | **String**|  | [optional] 
 **terminationDateLeftSquareBracketBeforeRightSquareBracket** | **String**|  | [optional] 
 **terminationDateLeftSquareBracketStrictlyBeforeRightSquareBracket** | **String**|  | [optional] 
 **terminationDateLeftSquareBracketAfterRightSquareBracket** | **String**|  | [optional] 
 **terminationDateLeftSquareBracketStrictlyAfterRightSquareBracket** | **String**|  | [optional] 
 **updatedAtLeftSquareBracketBeforeRightSquareBracket** | **String**|  | [optional] 
 **updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket** | **String**|  | [optional] 
 **updatedAtLeftSquareBracketAfterRightSquareBracket** | **String**|  | [optional] 
 **updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket** | **String**|  | [optional] 
 **orderLeftSquareBracketBillingPeriodAdjustedCostPeriodValueRightSquareBracket** | **String**|  | [optional] 
 **orderLeftSquareBracketBillingPeriodInitialCostPeriodValueRightSquareBracket** | **String**|  | [optional] 
 **orderLeftSquareBracketCreatedAtRightSquareBracket** | **String**|  | [optional] 
 **orderLeftSquareBracketEffectiveDateRightSquareBracket** | **String**|  | [optional] 
 **orderLeftSquareBracketNameRightSquareBracket** | **String**|  | [optional] 
 **orderLeftSquareBracketNumberRightSquareBracket** | **String**|  | [optional] 
 **orderLeftSquareBracketUpdatedAtRightSquareBracket** | **String**|  | [optional] 
 **orderLeftSquareBracketSignedAtRightSquareBracket** | **String**|  | [optional] 
 **orderLeftSquareBracketStateRightSquareBracket** | **String**|  | [optional] 
 **propertiesLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **onCall** | **bool**|  | [optional] 
 **onCallLeftSquareBracketRightSquareBracket** | [**List<bool>**](bool.md)|  | [optional] [default to const []]
 **organizationPeriodIdentifier** | **String**|  | [optional] 
 **organizationPeriodIdentifierLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **providerPeriodIdentifier** | **String**|  | [optional] 
 **providerPeriodIdentifierLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **state** | **String**|  | [optional] 
 **stateLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **acceptLanguage** | **String**|  | [optional] [default to 'fr-FR']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**GetContracts200Response**](GetContracts200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

