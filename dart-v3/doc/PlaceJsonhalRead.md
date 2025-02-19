# keyclic_sdk_api_platform.model.PlaceJsonhalRead

## Load the model package
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**AssetJsonhalReadLinks**](AssetJsonhalReadLinks.md) |  | [optional] 
**branchCode** | **String** |  | [optional] 
**id** | **String** | The resource identifier. | [optional] [readonly] 
**createdAt** | [**DateTime**](DateTime.md) | The date and time when the resource was created, in UTC format. | [optional] [readonly] 
**updatedAt** | [**DateTime**](DateTime.md) | The date and time when the resource was updated, in UTC format. | [optional] [readonly] 
**description** | **String** |  | [optional] 
**name** | **String** |  | 
**preferences** | [**PreferencesJsonhalAssetRead**](PreferencesJsonhalAssetRead.md) |  | [optional] 
**path** | [**List<NodeJsonhalRead>**](NodeJsonhalRead.md) |  | [optional] [readonly] [default to const []]
**address** | [**PostalAddressJsonhalRead**](PostalAddressJsonhalRead.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


