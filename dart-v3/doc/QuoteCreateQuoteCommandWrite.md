# keyclic_sdk_api_platform.model.QuoteCreateQuoteCommandWrite

## Load the model package
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amountExcludingTax** | [**PriceWrite**](PriceWrite.md) |  | 
**amountIncludingTax** | [**PriceWrite**](PriceWrite.md) |  | 
**author** | **String** |  | [optional] 
**authorContactPoint** | [**ContactPointWrite**](ContactPointWrite.md) |  | [optional] 
**equipments** | **List<String>** |  | [optional] [default to const []]
**expirationDate** | [**DateTime**](DateTime.md) |  | [optional] 
**files** | **List<String>** |  | [default to const []]
**issueDate** | [**DateTime**](DateTime.md) |  | 
**name** | **String** |  | 
**number** | **String** |  | 
**origin** | **String** |  | [optional] 
**place** | **String** |  | 
**provider** | **String** |  | [optional] 
**providerAddress** | [**PostalAddressWrite**](PostalAddressWrite.md) |  | [optional] 
**providerContactPoint** | [**ContactPointWrite**](ContactPointWrite.md) |  | [optional] 
**resolutionDate** | [**DateTime**](DateTime.md) |  | [optional] 
**state** | **String** |  | [optional] 
**task** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


