# keyclic_sdk_api_platform.model.ApplicationJsonhalRead

## Load the model package
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**ApplicationJsonhalReadLinks**](ApplicationJsonhalReadLinks.md) |  | [optional] 
**about** | [**AboutJsonhalRead**](AboutJsonhalRead.md) |  | [optional] 
**agreement** | [**AgreementJsonhalRead**](AgreementJsonhalRead.md) |  | [optional] 
**configuration** | [**ConfigurationJsonhalRead**](ConfigurationJsonhalRead.md) |  | [optional] 
**contactPoints** | [**List<ContactPointJsonhalApplicationRead>**](ContactPointJsonhalApplicationRead.md) |  | [optional] [default to const []]
**name** | **String** |  | 
**token** | **String** | The token of the Application, which is used in request application header, to define the context of the current application. | 
**version** | **String** |  | 
**id** | **String** | The resource identifier. | [optional] [readonly] 
**createdAt** | [**DateTime**](DateTime.md) | The date and time when the resource was created, in UTC format. | [optional] [readonly] 
**updatedAt** | [**DateTime**](DateTime.md) | The date and time when the resource was updated, in UTC format. | [optional] [readonly] 
**type** | **String** |  | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


