//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ApiPlatformClient {
  ApiPlatformClient({
    Dio? dio,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  }) : this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
            )) {
    this.dio.interceptors.addAll(interceptors ??
        [
          OAuthInterceptor(),
          BasicAuthInterceptor(),
          BearerAuthInterceptor(),
          ApiKeyAuthInterceptor(),
        ]);
  }

  static const String basePath = r'http://localhost';

  final Dio dio;
  // final Logger _logger = Logger('ApiPlatformClient');

  void setOAuthToken(String name, String token) {
    for (final interceptor in dio.interceptors) {
      if (interceptor is OAuthInterceptor) {
        interceptor.tokens[name] = token;
        break;
      }
    }
  }

  void setBearerAuth(String name, String token) {
    for (final interceptor in dio.interceptors) {
      if (interceptor is BearerAuthInterceptor) {
        interceptor.tokens[name] = token;
        break;
      }
    }
  }

  void setBasicAuth(String name, String username, String password) {
    for (final interceptor in dio.interceptors) {
      if (interceptor is BasicAuthInterceptor) {
        interceptor.authInfo[name] = BasicAuthInfo(username, password);
        break;
      }
    }
  }

  void setApiKey(String name, String apiKey) {
    // ApiKeyAuth('query', '');
    for (final interceptor in dio.interceptors) {
      if (interceptor is ApiKeyAuthInterceptor) {
        interceptor.apiKeys[name] = apiKey;
        break;
      }
    }
  }

  /// Get AssetApi instance
  AssetApi getAssetApi() {
    return AssetApi(this);
  }

  /// Get AssetTypeApi instance
  AssetTypeApi getAssetTypeApi() {
    return AssetTypeApi(this);
  }

  /// Get AttachmentApi instance
  AttachmentApi getAttachmentApi() {
    return AttachmentApi(this);
  }

  /// Get BrandApi instance
  BrandApi getBrandApi() {
    return BrandApi(this);
  }

  /// Get ContractApi instance
  ContractApi getContractApi() {
    return ContractApi(this);
  }

  /// Get ContractTypeApi instance
  ContractTypeApi getContractTypeApi() {
    return ContractTypeApi(this);
  }

  /// Get EquipmentApi instance
  EquipmentApi getEquipmentApi() {
    return EquipmentApi(this);
  }

  /// Get FileApi instance
  FileApi getFileApi() {
    return FileApi(this);
  }

  /// Get IntegrationApi instance
  IntegrationApi getIntegrationApi() {
    return IntegrationApi(this);
  }

  /// Get IntegrationLinkApi instance
  IntegrationLinkApi getIntegrationLinkApi() {
    return IntegrationLinkApi(this);
  }

  /// Get TicketApi instance
  TicketApi getTicketApi() {
    return TicketApi(this);
  }

  /// Get TicketTypeApi instance
  TicketTypeApi getTicketTypeApi() {
    return TicketTypeApi(this);
  }

  /// Get WorkflowStateApi instance
  WorkflowStateApi getWorkflowStateApi() {
    return WorkflowStateApi(this);
  }

  Future<Response<Object>> invokeAPI({
    required String path,
    Object? body,
    Options? options,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    return dio.request<Object>(
      path,
      data: body,
      options: options,
      queryParameters: queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  Future<T> deserializeAsync<T>(dynamic json, String targetType,
          {bool growable = false}) async =>
      // ignore: deprecated_member_use_from_same_package
      deserialize(json, targetType, growable: growable) as T;

  @Deprecated(
      'Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(dynamic json, String targetType,
      {bool growable = false}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType =
        targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
        ? jsonEncode(json)
        : _deserialize(json, targetType, growable: growable == true);
  }

  static dynamic _deserialize(dynamic value, String targetType,
      {bool growable = false}) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'AssetJsonhalRead':
          return AssetJsonhalRead.fromJson(value);
        case 'AssetJsonhalReadLinks':
          return AssetJsonhalReadLinks.fromJson(value);
        case 'AssetRead':
          return AssetRead.fromJson(value);
        case 'AssetTypeJsonhalRead':
          return AssetTypeJsonhalRead.fromJson(value);
        case 'AssetTypeJsonhalReadLinks':
          return AssetTypeJsonhalReadLinks.fromJson(value);
        case 'AssetTypeRead':
          return AssetTypeRead.fromJson(value);
        case 'AttachmentCreateAttachmentCommandWrite':
          return AttachmentCreateAttachmentCommandWrite.fromJson(value);
        case 'AttachmentJsonhalRead':
          return AttachmentJsonhalRead.fromJson(value);
        case 'AttachmentJsonhalReadLinks':
          return AttachmentJsonhalReadLinks.fromJson(value);
        case 'AttachmentRead':
          return AttachmentRead.fromJson(value);
        case 'BillingJsonhalRead':
          return BillingJsonhalRead.fromJson(value);
        case 'BillingRead':
          return BillingRead.fromJson(value);
        case 'BillingWrite':
          return BillingWrite.fromJson(value);
        case 'BrandJsonhalRead':
          return BrandJsonhalRead.fromJson(value);
        case 'BrandRead':
          return BrandRead.fromJson(value);
        case 'ContractCreateContractCommandWrite':
          return ContractCreateContractCommandWrite.fromJson(value);
        case 'ContractCreateContractCommandWriteBilling':
          return ContractCreateContractCommandWriteBilling.fromJson(value);
        case 'ContractCreateContractCommandWriteRenewal':
          return ContractCreateContractCommandWriteRenewal.fromJson(value);
        case 'ContractEditContractCommandWrite':
          return ContractEditContractCommandWrite.fromJson(value);
        case 'ContractJsonhalRead':
          return ContractJsonhalRead.fromJson(value);
        case 'ContractJsonhalReadLinks':
          return ContractJsonhalReadLinks.fromJson(value);
        case 'ContractRead':
          return ContractRead.fromJson(value);
        case 'ContractTypeJsonhalRead':
          return ContractTypeJsonhalRead.fromJson(value);
        case 'ContractTypeRead':
          return ContractTypeRead.fromJson(value);
        case 'EquipmentCreateEquipmentCommandWrite':
          return EquipmentCreateEquipmentCommandWrite.fromJson(value);
        case 'EquipmentCreateEquipmentCommandWriteWarranty':
          return EquipmentCreateEquipmentCommandWriteWarranty.fromJson(value);
        case 'EquipmentEditEquipmentCommandWrite':
          return EquipmentEditEquipmentCommandWrite.fromJson(value);
        case 'EquipmentJsonhalRead':
          return EquipmentJsonhalRead.fromJson(value);
        case 'EquipmentJsonhalReadLinks':
          return EquipmentJsonhalReadLinks.fromJson(value);
        case 'EquipmentRead':
          return EquipmentRead.fromJson(value);
        case 'FileCreateFileCommandWrite':
          return FileCreateFileCommandWrite.fromJson(value);
        case 'FileJsonhalRead':
          return FileJsonhalRead.fromJson(value);
        case 'FileRead':
          return FileRead.fromJson(value);
        case 'GetAssetTypes200Response':
          return GetAssetTypes200Response.fromJson(value);
        case 'GetAssetTypes200ResponseEmbedded':
          return GetAssetTypes200ResponseEmbedded.fromJson(value);
        case 'GetAssetTypes200ResponseLinks':
          return GetAssetTypes200ResponseLinks.fromJson(value);
        case 'GetAssetTypes200ResponseLinksFirst':
          return GetAssetTypes200ResponseLinksFirst.fromJson(value);
        case 'GetAssetTypes200ResponseLinksSelf':
          return GetAssetTypes200ResponseLinksSelf.fromJson(value);
        case 'GetAssets200Response':
          return GetAssets200Response.fromJson(value);
        case 'GetAssets200ResponseEmbedded':
          return GetAssets200ResponseEmbedded.fromJson(value);
        case 'GetAttachments200Response':
          return GetAttachments200Response.fromJson(value);
        case 'GetAttachments200ResponseEmbedded':
          return GetAttachments200ResponseEmbedded.fromJson(value);
        case 'GetBrands200Response':
          return GetBrands200Response.fromJson(value);
        case 'GetBrands200ResponseEmbedded':
          return GetBrands200ResponseEmbedded.fromJson(value);
        case 'GetContractTypes200Response':
          return GetContractTypes200Response.fromJson(value);
        case 'GetContractTypes200ResponseEmbedded':
          return GetContractTypes200ResponseEmbedded.fromJson(value);
        case 'GetContracts200Response':
          return GetContracts200Response.fromJson(value);
        case 'GetContracts200ResponseEmbedded':
          return GetContracts200ResponseEmbedded.fromJson(value);
        case 'GetEquipments200Response':
          return GetEquipments200Response.fromJson(value);
        case 'GetEquipments200ResponseEmbedded':
          return GetEquipments200ResponseEmbedded.fromJson(value);
        case 'GetFiles200Response':
          return GetFiles200Response.fromJson(value);
        case 'GetFiles200ResponseEmbedded':
          return GetFiles200ResponseEmbedded.fromJson(value);
        case 'GetIntegrationLinks200Response':
          return GetIntegrationLinks200Response.fromJson(value);
        case 'GetIntegrationLinks200ResponseEmbedded':
          return GetIntegrationLinks200ResponseEmbedded.fromJson(value);
        case 'GetIntegrations200Response':
          return GetIntegrations200Response.fromJson(value);
        case 'GetIntegrations200ResponseEmbedded':
          return GetIntegrations200ResponseEmbedded.fromJson(value);
        case 'GetTicketTypes200Response':
          return GetTicketTypes200Response.fromJson(value);
        case 'GetTicketTypes200ResponseEmbedded':
          return GetTicketTypes200ResponseEmbedded.fromJson(value);
        case 'GetTickets200Response':
          return GetTickets200Response.fromJson(value);
        case 'GetTickets200ResponseEmbedded':
          return GetTickets200ResponseEmbedded.fromJson(value);
        case 'IntegrationIntegrationRead':
          return IntegrationIntegrationRead.fromJson(value);
        case 'IntegrationJsonhalIntegrationRead':
          return IntegrationJsonhalIntegrationRead.fromJson(value);
        case 'IntegrationLinkCreateLinkCommandWrite':
          return IntegrationLinkCreateLinkCommandWrite.fromJson(value);
        case 'IntegrationLinkEditLinkCommandWrite':
          return IntegrationLinkEditLinkCommandWrite.fromJson(value);
        case 'IntegrationLinkJsonhalRead':
          return IntegrationLinkJsonhalRead.fromJson(value);
        case 'IntegrationLinkRead':
          return IntegrationLinkRead.fromJson(value);
        case 'PriceJsonhalRead':
          return PriceJsonhalRead.fromJson(value);
        case 'PriceRead':
          return PriceRead.fromJson(value);
        case 'PriceWrite':
          return PriceWrite.fromJson(value);
        case 'RenewalJsonhalRead':
          return RenewalJsonhalRead.fromJson(value);
        case 'RenewalRead':
          return RenewalRead.fromJson(value);
        case 'RenewalWrite':
          return RenewalWrite.fromJson(value);
        case 'TicketJsonhalRead':
          return TicketJsonhalRead.fromJson(value);
        case 'TicketRead':
          return TicketRead.fromJson(value);
        case 'TicketTypeJsonhalRead':
          return TicketTypeJsonhalRead.fromJson(value);
        case 'TicketTypeRead':
          return TicketTypeRead.fromJson(value);
        case 'WarrantyJsonhalRead':
          return WarrantyJsonhalRead.fromJson(value);
        case 'WarrantyRead':
          return WarrantyRead.fromJson(value);
        case 'WarrantyWrite':
          return WarrantyWrite.fromJson(value);
        case 'WorkflowStateJsonhalRead':
          return WorkflowStateJsonhalRead.fromJson(value);
        case 'WorkflowStateRead':
          return WorkflowStateRead.fromJson(value);
        default:
          Match? match;
          if (value is List &&
              (match = _regList.firstMatch(targetType)) != null) {
            targetType = match![1]!; // ignore: parameter_assignments
            return value
                .map((v) => _deserialize(v, targetType, growable: growable))
                .toList(growable: growable);
          }
          if (value is Set &&
              (match = _regSet.firstMatch(targetType)) != null) {
            targetType = match![1]!; // ignore: parameter_assignments
            return value
                .map((v) => _deserialize(v, targetType, growable: growable))
                .toSet();
          }
          if (value is Map &&
              (match = _regMap.firstMatch(targetType)) != null) {
            targetType = match![1]!; // ignore: parameter_assignments
            return Map.fromIterables(
              value.keys,
              value.values
                  .map((v) => _deserialize(v, targetType, growable: growable)),
            );
          }
          break;
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.internalServerError,
        'Exception during deserialization.',
        error,
        trace,
      );
    }
    throw ApiException(
      HttpStatus.internalServerError,
      'Could not find a suitable class for deserialization',
    );
  }
}
