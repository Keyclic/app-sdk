# keyclic_sdk_api_platform.model.ProfileAuthProfileRead

## Load the model package
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**types** | **List<String>** | Available connection types for the given email address. These might include password, enterprise, social. | [optional] [readonly] [default to const []]
**connections** | [**List<ConnectionAuthProfileRead>**](ConnectionAuthProfileRead.md) |  | [optional] [default to const []]
**user** | [**UserAuthProfileRead**](UserAuthProfileRead.md) |  | [optional] 
**firstConnection** | **bool** | Represents whether a user is making their first connection or interaction with the service. | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


