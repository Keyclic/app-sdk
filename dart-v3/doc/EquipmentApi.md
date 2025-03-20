# keyclic_sdk_api_platform.api.EquipmentApi

## Load the API package
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteEquipment**](EquipmentApi.md#deleteequipment) | **DELETE** /equipments/{identifier} | Removes the Equipment resource.
[**getEquipment**](EquipmentApi.md#getequipment) | **GET** /equipments/{identifier} | Retrieves a Equipment resource.
[**getEquipmentCollection**](EquipmentApi.md#getequipmentcollection) | **GET** /equipments | Retrieves the collection of Equipment resources.
[**patchEquipment**](EquipmentApi.md#patchequipment) | **PATCH** /equipments/{identifier} | Updates the Equipment resource.
[**postEquipment**](EquipmentApi.md#postequipment) | **POST** /equipments | Creates a Equipment resource.


# **deleteEquipment**
> deleteEquipment(identifier, xKeyclicApp, xOrganizationId, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Removes the Equipment resource.

Removes the Equipment resource.

### Example
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = EquipmentApi();
final identifier = identifier_example; // String | Equipment identifier
final xKeyclicApp = xKeyclicApp_example; // String | 
final xOrganizationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    api_instance.deleteEquipment(identifier, xKeyclicApp, xOrganizationId, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
} catch (e) {
    print('Exception when calling EquipmentApi->deleteEquipment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Equipment identifier | 
 **xKeyclicApp** | **String**|  | 
 **xOrganizationId** | **String**|  | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEquipment**
> EquipmentJsonhalRead getEquipment(identifier, xKeyclicApp, xOrganizationId, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieves a Equipment resource.

Retrieves a Equipment resource.

### Example
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = EquipmentApi();
final identifier = identifier_example; // String | Equipment identifier
final xKeyclicApp = xKeyclicApp_example; // String | 
final xOrganizationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    final result = api_instance.getEquipment(identifier, xKeyclicApp, xOrganizationId, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling EquipmentApi->getEquipment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Equipment identifier | 
 **xKeyclicApp** | **String**|  | 
 **xOrganizationId** | **String**|  | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**EquipmentJsonhalRead**](EquipmentJsonhalRead.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEquipmentCollection**
> GetEquipmentCollection200Response getEquipmentCollection(xKeyclicApp, xOrganizationId, page, limit, pagination, search, createdAtLeftSquareBracketBeforeRightSquareBracket, createdAtLeftSquareBracketStrictlyBeforeRightSquareBracket, createdAtLeftSquareBracketAfterRightSquareBracket, createdAtLeftSquareBracketStrictlyAfterRightSquareBracket, updatedAtLeftSquareBracketBeforeRightSquareBracket, updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket, updatedAtLeftSquareBracketAfterRightSquareBracket, updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket, orderLeftSquareBracketCreatedAtRightSquareBracket, orderLeftSquareBracketNameRightSquareBracket, orderLeftSquareBracketUpdatedAtRightSquareBracket, level, levelLeftSquareBracketRightSquareBracket, parent, parentLeftSquareBracketRightSquareBracket, subtree, commissioningDateLeftSquareBracketBeforeRightSquareBracket, commissioningDateLeftSquareBracketStrictlyBeforeRightSquareBracket, commissioningDateLeftSquareBracketAfterRightSquareBracket, commissioningDateLeftSquareBracketStrictlyAfterRightSquareBracket, retirementDateLeftSquareBracketBeforeRightSquareBracket, retirementDateLeftSquareBracketStrictlyBeforeRightSquareBracket, retirementDateLeftSquareBracketAfterRightSquareBracket, retirementDateLeftSquareBracketStrictlyAfterRightSquareBracket, warrantyPeriodStartDateLeftSquareBracketBeforeRightSquareBracket, warrantyPeriodStartDateLeftSquareBracketStrictlyBeforeRightSquareBracket, warrantyPeriodStartDateLeftSquareBracketAfterRightSquareBracket, warrantyPeriodStartDateLeftSquareBracketStrictlyAfterRightSquareBracket, warrantyPeriodEndDateLeftSquareBracketBeforeRightSquareBracket, warrantyPeriodEndDateLeftSquareBracketStrictlyBeforeRightSquareBracket, warrantyPeriodEndDateLeftSquareBracketAfterRightSquareBracket, warrantyPeriodEndDateLeftSquareBracketStrictlyAfterRightSquareBracket, orderLeftSquareBracketBrandPeriodNameRightSquareBracket, orderLeftSquareBracketCommissioningDateRightSquareBracket, orderLeftSquareBracketLifetimeRightSquareBracket, orderLeftSquareBracketModelRightSquareBracket, orderLeftSquareBracketMpnRightSquareBracket, orderLeftSquareBracketRetirementDateRightSquareBracket, orderLeftSquareBracketSerialNumberRightSquareBracket, orderLeftSquareBracketWarrantyPeriodStartDateRightSquareBracket, orderLeftSquareBracketWarrantyPeriodEndDateRightSquareBracket, brandPeriodIdentifier, brandPeriodIdentifierLeftSquareBracketRightSquareBracket, model, mpn, quotes, quotesLeftSquareBracketRightSquareBracket, serialNumber, statePeriodIdentifier, statePeriodIdentifierLeftSquareBracketRightSquareBracket, typePeriodIdentifier, typePeriodIdentifierLeftSquareBracketRightSquareBracket, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieves the collection of Equipment resources.

Retrieves the collection of Equipment resources.

### Example
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = EquipmentApi();
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
final updatedAtLeftSquareBracketBeforeRightSquareBracket = updatedAtLeftSquareBracketBeforeRightSquareBracket_example; // String | 
final updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket = updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket_example; // String | 
final updatedAtLeftSquareBracketAfterRightSquareBracket = updatedAtLeftSquareBracketAfterRightSquareBracket_example; // String | 
final updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket = updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket_example; // String | 
final orderLeftSquareBracketCreatedAtRightSquareBracket = orderLeftSquareBracketCreatedAtRightSquareBracket_example; // String | 
final orderLeftSquareBracketNameRightSquareBracket = orderLeftSquareBracketNameRightSquareBracket_example; // String | 
final orderLeftSquareBracketUpdatedAtRightSquareBracket = orderLeftSquareBracketUpdatedAtRightSquareBracket_example; // String | 
final level = 56; // int | 
final levelLeftSquareBracketRightSquareBracket = []; // List<int> | 
final parent = parent_example; // String | 
final parentLeftSquareBracketRightSquareBracket = []; // List<String> | 
final subtree = subtree_example; // String | 
final commissioningDateLeftSquareBracketBeforeRightSquareBracket = commissioningDateLeftSquareBracketBeforeRightSquareBracket_example; // String | 
final commissioningDateLeftSquareBracketStrictlyBeforeRightSquareBracket = commissioningDateLeftSquareBracketStrictlyBeforeRightSquareBracket_example; // String | 
final commissioningDateLeftSquareBracketAfterRightSquareBracket = commissioningDateLeftSquareBracketAfterRightSquareBracket_example; // String | 
final commissioningDateLeftSquareBracketStrictlyAfterRightSquareBracket = commissioningDateLeftSquareBracketStrictlyAfterRightSquareBracket_example; // String | 
final retirementDateLeftSquareBracketBeforeRightSquareBracket = retirementDateLeftSquareBracketBeforeRightSquareBracket_example; // String | 
final retirementDateLeftSquareBracketStrictlyBeforeRightSquareBracket = retirementDateLeftSquareBracketStrictlyBeforeRightSquareBracket_example; // String | 
final retirementDateLeftSquareBracketAfterRightSquareBracket = retirementDateLeftSquareBracketAfterRightSquareBracket_example; // String | 
final retirementDateLeftSquareBracketStrictlyAfterRightSquareBracket = retirementDateLeftSquareBracketStrictlyAfterRightSquareBracket_example; // String | 
final warrantyPeriodStartDateLeftSquareBracketBeforeRightSquareBracket = warrantyPeriodStartDateLeftSquareBracketBeforeRightSquareBracket_example; // String | 
final warrantyPeriodStartDateLeftSquareBracketStrictlyBeforeRightSquareBracket = warrantyPeriodStartDateLeftSquareBracketStrictlyBeforeRightSquareBracket_example; // String | 
final warrantyPeriodStartDateLeftSquareBracketAfterRightSquareBracket = warrantyPeriodStartDateLeftSquareBracketAfterRightSquareBracket_example; // String | 
final warrantyPeriodStartDateLeftSquareBracketStrictlyAfterRightSquareBracket = warrantyPeriodStartDateLeftSquareBracketStrictlyAfterRightSquareBracket_example; // String | 
final warrantyPeriodEndDateLeftSquareBracketBeforeRightSquareBracket = warrantyPeriodEndDateLeftSquareBracketBeforeRightSquareBracket_example; // String | 
final warrantyPeriodEndDateLeftSquareBracketStrictlyBeforeRightSquareBracket = warrantyPeriodEndDateLeftSquareBracketStrictlyBeforeRightSquareBracket_example; // String | 
final warrantyPeriodEndDateLeftSquareBracketAfterRightSquareBracket = warrantyPeriodEndDateLeftSquareBracketAfterRightSquareBracket_example; // String | 
final warrantyPeriodEndDateLeftSquareBracketStrictlyAfterRightSquareBracket = warrantyPeriodEndDateLeftSquareBracketStrictlyAfterRightSquareBracket_example; // String | 
final orderLeftSquareBracketBrandPeriodNameRightSquareBracket = orderLeftSquareBracketBrandPeriodNameRightSquareBracket_example; // String | 
final orderLeftSquareBracketCommissioningDateRightSquareBracket = orderLeftSquareBracketCommissioningDateRightSquareBracket_example; // String | 
final orderLeftSquareBracketLifetimeRightSquareBracket = orderLeftSquareBracketLifetimeRightSquareBracket_example; // String | 
final orderLeftSquareBracketModelRightSquareBracket = orderLeftSquareBracketModelRightSquareBracket_example; // String | 
final orderLeftSquareBracketMpnRightSquareBracket = orderLeftSquareBracketMpnRightSquareBracket_example; // String | 
final orderLeftSquareBracketRetirementDateRightSquareBracket = orderLeftSquareBracketRetirementDateRightSquareBracket_example; // String | 
final orderLeftSquareBracketSerialNumberRightSquareBracket = orderLeftSquareBracketSerialNumberRightSquareBracket_example; // String | 
final orderLeftSquareBracketWarrantyPeriodStartDateRightSquareBracket = orderLeftSquareBracketWarrantyPeriodStartDateRightSquareBracket_example; // String | 
final orderLeftSquareBracketWarrantyPeriodEndDateRightSquareBracket = orderLeftSquareBracketWarrantyPeriodEndDateRightSquareBracket_example; // String | 
final brandPeriodIdentifier = brandPeriodIdentifier_example; // String | 
final brandPeriodIdentifierLeftSquareBracketRightSquareBracket = []; // List<String> | 
final model = model_example; // String | 
final mpn = mpn_example; // String | 
final quotes = quotes_example; // String | 
final quotesLeftSquareBracketRightSquareBracket = []; // List<String> | 
final serialNumber = serialNumber_example; // String | 
final statePeriodIdentifier = statePeriodIdentifier_example; // String | 
final statePeriodIdentifierLeftSquareBracketRightSquareBracket = []; // List<String> | 
final typePeriodIdentifier = typePeriodIdentifier_example; // String | 
final typePeriodIdentifierLeftSquareBracketRightSquareBracket = []; // List<String> | 
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    final result = api_instance.getEquipmentCollection(xKeyclicApp, xOrganizationId, page, limit, pagination, search, createdAtLeftSquareBracketBeforeRightSquareBracket, createdAtLeftSquareBracketStrictlyBeforeRightSquareBracket, createdAtLeftSquareBracketAfterRightSquareBracket, createdAtLeftSquareBracketStrictlyAfterRightSquareBracket, updatedAtLeftSquareBracketBeforeRightSquareBracket, updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket, updatedAtLeftSquareBracketAfterRightSquareBracket, updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket, orderLeftSquareBracketCreatedAtRightSquareBracket, orderLeftSquareBracketNameRightSquareBracket, orderLeftSquareBracketUpdatedAtRightSquareBracket, level, levelLeftSquareBracketRightSquareBracket, parent, parentLeftSquareBracketRightSquareBracket, subtree, commissioningDateLeftSquareBracketBeforeRightSquareBracket, commissioningDateLeftSquareBracketStrictlyBeforeRightSquareBracket, commissioningDateLeftSquareBracketAfterRightSquareBracket, commissioningDateLeftSquareBracketStrictlyAfterRightSquareBracket, retirementDateLeftSquareBracketBeforeRightSquareBracket, retirementDateLeftSquareBracketStrictlyBeforeRightSquareBracket, retirementDateLeftSquareBracketAfterRightSquareBracket, retirementDateLeftSquareBracketStrictlyAfterRightSquareBracket, warrantyPeriodStartDateLeftSquareBracketBeforeRightSquareBracket, warrantyPeriodStartDateLeftSquareBracketStrictlyBeforeRightSquareBracket, warrantyPeriodStartDateLeftSquareBracketAfterRightSquareBracket, warrantyPeriodStartDateLeftSquareBracketStrictlyAfterRightSquareBracket, warrantyPeriodEndDateLeftSquareBracketBeforeRightSquareBracket, warrantyPeriodEndDateLeftSquareBracketStrictlyBeforeRightSquareBracket, warrantyPeriodEndDateLeftSquareBracketAfterRightSquareBracket, warrantyPeriodEndDateLeftSquareBracketStrictlyAfterRightSquareBracket, orderLeftSquareBracketBrandPeriodNameRightSquareBracket, orderLeftSquareBracketCommissioningDateRightSquareBracket, orderLeftSquareBracketLifetimeRightSquareBracket, orderLeftSquareBracketModelRightSquareBracket, orderLeftSquareBracketMpnRightSquareBracket, orderLeftSquareBracketRetirementDateRightSquareBracket, orderLeftSquareBracketSerialNumberRightSquareBracket, orderLeftSquareBracketWarrantyPeriodStartDateRightSquareBracket, orderLeftSquareBracketWarrantyPeriodEndDateRightSquareBracket, brandPeriodIdentifier, brandPeriodIdentifierLeftSquareBracketRightSquareBracket, model, mpn, quotes, quotesLeftSquareBracketRightSquareBracket, serialNumber, statePeriodIdentifier, statePeriodIdentifierLeftSquareBracketRightSquareBracket, typePeriodIdentifier, typePeriodIdentifierLeftSquareBracketRightSquareBracket, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling EquipmentApi->getEquipmentCollection: $e\n');
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
 **updatedAtLeftSquareBracketBeforeRightSquareBracket** | **String**|  | [optional] 
 **updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket** | **String**|  | [optional] 
 **updatedAtLeftSquareBracketAfterRightSquareBracket** | **String**|  | [optional] 
 **updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket** | **String**|  | [optional] 
 **orderLeftSquareBracketCreatedAtRightSquareBracket** | **String**|  | [optional] 
 **orderLeftSquareBracketNameRightSquareBracket** | **String**|  | [optional] 
 **orderLeftSquareBracketUpdatedAtRightSquareBracket** | **String**|  | [optional] 
 **level** | **int**|  | [optional] 
 **levelLeftSquareBracketRightSquareBracket** | [**List<int>**](int.md)|  | [optional] [default to const []]
 **parent** | **String**|  | [optional] 
 **parentLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **subtree** | **String**|  | [optional] 
 **commissioningDateLeftSquareBracketBeforeRightSquareBracket** | **String**|  | [optional] 
 **commissioningDateLeftSquareBracketStrictlyBeforeRightSquareBracket** | **String**|  | [optional] 
 **commissioningDateLeftSquareBracketAfterRightSquareBracket** | **String**|  | [optional] 
 **commissioningDateLeftSquareBracketStrictlyAfterRightSquareBracket** | **String**|  | [optional] 
 **retirementDateLeftSquareBracketBeforeRightSquareBracket** | **String**|  | [optional] 
 **retirementDateLeftSquareBracketStrictlyBeforeRightSquareBracket** | **String**|  | [optional] 
 **retirementDateLeftSquareBracketAfterRightSquareBracket** | **String**|  | [optional] 
 **retirementDateLeftSquareBracketStrictlyAfterRightSquareBracket** | **String**|  | [optional] 
 **warrantyPeriodStartDateLeftSquareBracketBeforeRightSquareBracket** | **String**|  | [optional] 
 **warrantyPeriodStartDateLeftSquareBracketStrictlyBeforeRightSquareBracket** | **String**|  | [optional] 
 **warrantyPeriodStartDateLeftSquareBracketAfterRightSquareBracket** | **String**|  | [optional] 
 **warrantyPeriodStartDateLeftSquareBracketStrictlyAfterRightSquareBracket** | **String**|  | [optional] 
 **warrantyPeriodEndDateLeftSquareBracketBeforeRightSquareBracket** | **String**|  | [optional] 
 **warrantyPeriodEndDateLeftSquareBracketStrictlyBeforeRightSquareBracket** | **String**|  | [optional] 
 **warrantyPeriodEndDateLeftSquareBracketAfterRightSquareBracket** | **String**|  | [optional] 
 **warrantyPeriodEndDateLeftSquareBracketStrictlyAfterRightSquareBracket** | **String**|  | [optional] 
 **orderLeftSquareBracketBrandPeriodNameRightSquareBracket** | **String**|  | [optional] 
 **orderLeftSquareBracketCommissioningDateRightSquareBracket** | **String**|  | [optional] 
 **orderLeftSquareBracketLifetimeRightSquareBracket** | **String**|  | [optional] 
 **orderLeftSquareBracketModelRightSquareBracket** | **String**|  | [optional] 
 **orderLeftSquareBracketMpnRightSquareBracket** | **String**|  | [optional] 
 **orderLeftSquareBracketRetirementDateRightSquareBracket** | **String**|  | [optional] 
 **orderLeftSquareBracketSerialNumberRightSquareBracket** | **String**|  | [optional] 
 **orderLeftSquareBracketWarrantyPeriodStartDateRightSquareBracket** | **String**|  | [optional] 
 **orderLeftSquareBracketWarrantyPeriodEndDateRightSquareBracket** | **String**|  | [optional] 
 **brandPeriodIdentifier** | **String**|  | [optional] 
 **brandPeriodIdentifierLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **model** | **String**|  | [optional] 
 **mpn** | **String**|  | [optional] 
 **quotes** | **String**|  | [optional] 
 **quotesLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **serialNumber** | **String**|  | [optional] 
 **statePeriodIdentifier** | **String**|  | [optional] 
 **statePeriodIdentifierLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **typePeriodIdentifier** | **String**|  | [optional] 
 **typePeriodIdentifierLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**GetEquipmentCollection200Response**](GetEquipmentCollection200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchEquipment**
> EquipmentJsonhalRead patchEquipment(identifier, xKeyclicApp, xOrganizationId, equipmentEditEquipmentCommandWrite, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Updates the Equipment resource.

Updates the Equipment resource.

### Example
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = EquipmentApi();
final identifier = identifier_example; // String | Equipment identifier
final xKeyclicApp = xKeyclicApp_example; // String | 
final xOrganizationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final equipmentEditEquipmentCommandWrite = EquipmentEditEquipmentCommandWrite(); // EquipmentEditEquipmentCommandWrite | The updated Equipment resource
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    final result = api_instance.patchEquipment(identifier, xKeyclicApp, xOrganizationId, equipmentEditEquipmentCommandWrite, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling EquipmentApi->patchEquipment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Equipment identifier | 
 **xKeyclicApp** | **String**|  | 
 **xOrganizationId** | **String**|  | 
 **equipmentEditEquipmentCommandWrite** | [**EquipmentEditEquipmentCommandWrite**](EquipmentEditEquipmentCommandWrite.md)| The updated Equipment resource | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**EquipmentJsonhalRead**](EquipmentJsonhalRead.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/merge-patch+json
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postEquipment**
> EquipmentJsonhalRead postEquipment(xKeyclicApp, xOrganizationId, equipmentCreateEquipmentCommandWrite, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Creates a Equipment resource.

Creates a Equipment resource.

### Example
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = EquipmentApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final xOrganizationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final equipmentCreateEquipmentCommandWrite = EquipmentCreateEquipmentCommandWrite(); // EquipmentCreateEquipmentCommandWrite | The new Equipment resource
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    final result = api_instance.postEquipment(xKeyclicApp, xOrganizationId, equipmentCreateEquipmentCommandWrite, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling EquipmentApi->postEquipment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | 
 **xOrganizationId** | **String**|  | 
 **equipmentCreateEquipmentCommandWrite** | [**EquipmentCreateEquipmentCommandWrite**](EquipmentCreateEquipmentCommandWrite.md)| The new Equipment resource | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**EquipmentJsonhalRead**](EquipmentJsonhalRead.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

