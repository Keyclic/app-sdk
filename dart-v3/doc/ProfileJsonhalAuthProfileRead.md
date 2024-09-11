# keyclic_sdk_api_platform.model.ProfileJsonhalAuthProfileRead

## Load the model package
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**ArchivingJsonhalOrganizationPreferenceReadLinks**](ArchivingJsonhalOrganizationPreferenceReadLinks.md) |  | [optional] 
**types** | **List<String>** | Available connection types for the given email address. These might include password, enterprise, social. | [optional] [readonly] [default to const []]
**connections** | [**List<ConnectionJsonhalAuthProfileRead>**](ConnectionJsonhalAuthProfileRead.md) |  | [optional] [default to const []]
**user** | [**UserJsonhalAuthProfileRead**](UserJsonhalAuthProfileRead.md) |  | [optional] 
**firstConnection** | **bool** | Represents whether a user is making their first connection or interaction with the service. | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


