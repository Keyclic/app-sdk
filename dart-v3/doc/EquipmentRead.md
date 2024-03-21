# keyclic_sdk_api_platform.model.EquipmentRead

## Load the model package
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**brand** | **String** | The brand of the asset. The brand refers to the specific manufacturer or company that produces or sells an asset. | [optional] 
**commissioningDate** | [**DateTime**](DateTime.md) | The date when an asset is officially put into service or operation. | [optional] 
**lifetime** | **String** | The expected or estimated duration of an asset's useful life or operational lifespan. | [optional] 
**model** | **String** | The model of the asset. The model provides detailed information about the features, capabilities, and technical specifications of the asset. | [optional] 
**mpn** | **String** | The Manufacturer Part Number (MPN) is a unique identifier assigned by the manufacturer to a specific part or component of an asset. | [optional] 
**retirementDate** | [**DateTime**](DateTime.md) | The date when an asset is expected to reach the end of its operational life based on the commissioning date and the estimated lifetime. | [optional] [readonly] 
**serialNumber** | **String** | The unique identifier assigned to an individual asset, allowing for easy identification and tracking. | [optional] 
**type** | **String** |  | [optional] 
**id** | **String** | The resource identifier. | [optional] [readonly] 
**createdAt** | [**DateTime**](DateTime.md) | The date and time when the resource was created, in UTC format. | [optional] [readonly] 
**updatedAt** | [**DateTime**](DateTime.md) | The date and time when the resource was updated, in UTC format. | [optional] [readonly] 
**warranty** | [**WarrantyRead**](WarrantyRead.md) |  | [optional] 
**description** | **String** |  | [optional] 
**name** | **String** |  | 
**parent** | **String** |  | [optional] 
**state** | **String** |  | [optional] 
**preferences** | [**PreferencesRead**](PreferencesRead.md) |  | [optional] 
**address** | [**PostalAddressRead**](PostalAddressRead.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


