# keyclic_sdk_api_platform.model.QuoteJsonhalRead

## Load the model package
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**QuoteJsonhalReadLinks**](QuoteJsonhalReadLinks.md) |  | [optional] 
**authorContactPoint** | [**ContactPointJsonhalRead**](ContactPointJsonhalRead.md) |  | [optional] 
**expirationDate** | [**DateTime**](DateTime.md) | The date and time the quote is not valid anymore, in ISO 8601 format. | [optional] 
**origin** | **String** |  | [optional] 
**providerAddress** | [**PostalAddressJsonhalRead**](PostalAddressJsonhalRead.md) |  | [optional] 
**providerContactPoint** | [**ContactPointJsonhalRead**](ContactPointJsonhalRead.md) |  | [optional] 
**resolutionDate** | [**DateTime**](DateTime.md) | The date and time the quote was approved or rejected, in ISO 8601 format. | [optional] 
**amountExcludingTax** | [**PriceJsonhalRead**](PriceJsonhalRead.md) |  | 
**amountIncludingTax** | [**PriceJsonhalRead**](PriceJsonhalRead.md) |  | 
**issueDate** | [**DateTime**](DateTime.md) | The date and time the quote was created outside the app, in ISO 8601 format. | 
**name** | **String** | A descriptive title or name for the quote that summarizes its purpose or scope. | 
**number** | **String** | A unique identifier assigned to the quote for tracking and reference purposes. | 
**id** | **String** | The resource identifier. | [optional] [readonly] 
**tags** | **List<String>** |  | [optional] [default to const []]
**createdAt** | [**DateTime**](DateTime.md) | The date and time when the resource was created, in UTC format. | [optional] [readonly] 
**updatedAt** | [**DateTime**](DateTime.md) | The date and time when the resource was updated, in UTC format. | [optional] [readonly] 
**embedded** | [**QuoteJsonhalReadEmbedded**](QuoteJsonhalReadEmbedded.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


