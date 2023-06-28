# keyclic_sdk_api_platform.model.ContractJsonhalRead

## Load the model package
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**AssetJsonhalReadLinks**](AssetJsonhalReadLinks.md) |  | [optional] 
**billing** | [**ContractJsonhalReadBilling**](ContractJsonhalReadBilling.md) |  | [optional] 
**description** | **String** | Detailed description of the contract. | [optional] 
**duration** | **String** | Duration of the contract in ISO 8601 duration format. | [optional] 
**effectiveDate** | [**DateTime**](DateTime.md) | The date and time the contract becomes effective, in ISO 8601 format. The effective date must be in the future and must not be earlier than the billing start date. | [optional] 
**name** | **String** | Name of the contract. | 
**number** | **String** | Number assigned to the contract by the organization. Each contract must have a unique contract number to ensure that contracts can be easily identified and tracked. | 
**onCall** | **bool** | The onCall property represents whether a staff member is currently available for on-call duties. | [optional] 
**provider** | [**ContractJsonhalReadProvider**](ContractJsonhalReadProvider.md) |  | [optional] 
**renewal** | [**RenewalJsonhalRead**](RenewalJsonhalRead.md) |  | [optional] 
**signedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**state** | **String** | Current state of the contract. | [default to 'DRAFT']
**terminationDate** | [**DateTime**](DateTime.md) | The date and time the contract is terminated, in ISO 8601 format. The termination date must be in the future and must not be earlier than the effective date. | [optional] [readonly] 
**type** | **String** | The type of the contract defined by the organization. | [optional] 
**id** | **String** | The resource identifier. | [optional] [readonly] 
**createdAt** | [**DateTime**](DateTime.md) | The date and time when the resource was created, in UTC format. | [optional] [readonly] 
**updatedAt** | [**DateTime**](DateTime.md) | The date and time when the resource was updated, in UTC format. | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


