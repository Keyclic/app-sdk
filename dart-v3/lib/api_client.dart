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

  /// Get AuthApi instance
  AuthApi getAuthApi() {
    return AuthApi(this);
  }

  /// Get BookmarkApi instance
  BookmarkApi getBookmarkApi() {
    return BookmarkApi(this);
  }

  /// Get BrandApi instance
  BrandApi getBrandApi() {
    return BrandApi(this);
  }

  /// Get BusinessHoursApi instance
  BusinessHoursApi getBusinessHoursApi() {
    return BusinessHoursApi(this);
  }

  /// Get CategoryApi instance
  CategoryApi getCategoryApi() {
    return CategoryApi(this);
  }

  /// Get CategoryTypeApi instance
  CategoryTypeApi getCategoryTypeApi() {
    return CategoryTypeApi(this);
  }

  /// Get ConnectorApi instance
  ConnectorApi getConnectorApi() {
    return ConnectorApi(this);
  }

  /// Get ContractApi instance
  ContractApi getContractApi() {
    return ContractApi(this);
  }

  /// Get ContractTypeApi instance
  ContractTypeApi getContractTypeApi() {
    return ContractTypeApi(this);
  }

  /// Get DocumentApi instance
  DocumentApi getDocumentApi() {
    return DocumentApi(this);
  }

  /// Get DocumentTypeApi instance
  DocumentTypeApi getDocumentTypeApi() {
    return DocumentTypeApi(this);
  }

  /// Get EquipmentApi instance
  EquipmentApi getEquipmentApi() {
    return EquipmentApi(this);
  }

  /// Get ExportApi instance
  ExportApi getExportApi() {
    return ExportApi(this);
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

  /// Get MemberApi instance
  MemberApi getMemberApi() {
    return MemberApi(this);
  }

  /// Get MetricApi instance
  MetricApi getMetricApi() {
    return MetricApi(this);
  }

  /// Get OccupantApi instance
  OccupantApi getOccupantApi() {
    return OccupantApi(this);
  }

  /// Get PlaceApi instance
  PlaceApi getPlaceApi() {
    return PlaceApi(this);
  }

  /// Get PublicationApi instance
  PublicationApi getPublicationApi() {
    return PublicationApi(this);
  }

  /// Get QuoteApi instance
  QuoteApi getQuoteApi() {
    return QuoteApi(this);
  }

  /// Get ReviewApi instance
  ReviewApi getReviewApi() {
    return ReviewApi(this);
  }

  /// Get ReviewRequestApi instance
  ReviewRequestApi getReviewRequestApi() {
    return ReviewRequestApi(this);
  }

  /// Get ServiceApi instance
  ServiceApi getServiceApi() {
    return ServiceApi(this);
  }

  /// Get ServiceOfferApi instance
  ServiceOfferApi getServiceOfferApi() {
    return ServiceOfferApi(this);
  }

  /// Get SlaPolicyApi instance
  SlaPolicyApi getSlaPolicyApi() {
    return SlaPolicyApi(this);
  }

  /// Get TargetGroupApi instance
  TargetGroupApi getTargetGroupApi() {
    return TargetGroupApi(this);
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

  /// Get WorkflowTransitionApi instance
  WorkflowTransitionApi getWorkflowTransitionApi() {
    return WorkflowTransitionApi(this);
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
        case 'ArchivingJsonhalOrganizationPreferenceRead':
          return ArchivingJsonhalOrganizationPreferenceRead.fromJson(value);
        case 'AssetJsonhalRead':
          return AssetJsonhalRead.fromJson(value);
        case 'AssetJsonhalReadLinks':
          return AssetJsonhalReadLinks.fromJson(value);
        case 'AssetTypeJsonhalRead':
          return AssetTypeJsonhalRead.fromJson(value);
        case 'AssetTypeJsonhalReadLinks':
          return AssetTypeJsonhalReadLinks.fromJson(value);
        case 'AssignmentJsonhalRead':
          return AssignmentJsonhalRead.fromJson(value);
        case 'AssignmentJsonhalReadLinks':
          return AssignmentJsonhalReadLinks.fromJson(value);
        case 'BillingJsonhalRead':
          return BillingJsonhalRead.fromJson(value);
        case 'BillingWrite':
          return BillingWrite.fromJson(value);
        case 'BookmarkJsonhalRead':
          return BookmarkJsonhalRead.fromJson(value);
        case 'BookmarkJsonhalReadEmbedded':
          return BookmarkJsonhalReadEmbedded.fromJson(value);
        case 'BrandJsonhalRead':
          return BrandJsonhalRead.fromJson(value);
        case 'BusinessHoursJsonhalRead':
          return BusinessHoursJsonhalRead.fromJson(value);
        case 'CategoryJsonhalRead':
          return CategoryJsonhalRead.fromJson(value);
        case 'CategoryJsonhalReadEmbedded':
          return CategoryJsonhalReadEmbedded.fromJson(value);
        case 'CategoryJsonhalReadLinks':
          return CategoryJsonhalReadLinks.fromJson(value);
        case 'CategoryTypeJsonhalRead':
          return CategoryTypeJsonhalRead.fromJson(value);
        case 'CollaboratorJsonhalRead':
          return CollaboratorJsonhalRead.fromJson(value);
        case 'CollaboratorJsonhalReadEmbedded':
          return CollaboratorJsonhalReadEmbedded.fromJson(value);
        case 'CollaboratorJsonhalReadLinks':
          return CollaboratorJsonhalReadLinks.fromJson(value);
        case 'ConditionJsonhalRead':
          return ConditionJsonhalRead.fromJson(value);
        case 'ConnectionJsonhalAuthProfileRead':
          return ConnectionJsonhalAuthProfileRead.fromJson(value);
        case 'ConnectorJsonhalRead':
          return ConnectorJsonhalRead.fromJson(value);
        case 'ContactJsonhalRead':
          return ContactJsonhalRead.fromJson(value);
        case 'ContactPointJsonhalRead':
          return ContactPointJsonhalRead.fromJson(value);
        case 'ContactPointWrite':
          return ContactPointWrite.fromJson(value);
        case 'ContractCreateContractCommandWrite':
          return ContractCreateContractCommandWrite.fromJson(value);
        case 'ContractEditContractCommandWrite':
          return ContractEditContractCommandWrite.fromJson(value);
        case 'ContractJsonhalOrganizationPreferenceRead':
          return ContractJsonhalOrganizationPreferenceRead.fromJson(value);
        case 'ContractJsonhalRead':
          return ContractJsonhalRead.fromJson(value);
        case 'ContractJsonhalReadLinks':
          return ContractJsonhalReadLinks.fromJson(value);
        case 'ContractTypeJsonhalRead':
          return ContractTypeJsonhalRead.fromJson(value);
        case 'DocumentTransitionJsonhalRead':
          return DocumentTransitionJsonhalRead.fromJson(value);
        case 'DocumentTypeJsonhalRead':
          return DocumentTypeJsonhalRead.fromJson(value);
        case 'DurationJsonhalRead':
          return DurationJsonhalRead.fromJson(value);
        case 'EquipmentCreateEquipmentCommandWrite':
          return EquipmentCreateEquipmentCommandWrite.fromJson(value);
        case 'EquipmentEditEquipmentCommandWrite':
          return EquipmentEditEquipmentCommandWrite.fromJson(value);
        case 'EquipmentJsonhalOrganizationPreferenceRead':
          return EquipmentJsonhalOrganizationPreferenceRead.fromJson(value);
        case 'EquipmentJsonhalRead':
          return EquipmentJsonhalRead.fromJson(value);
        case 'EquipmentJsonhalReadLinks':
          return EquipmentJsonhalReadLinks.fromJson(value);
        case 'ExportJsonhalRead':
          return ExportJsonhalRead.fromJson(value);
        case 'FeedbackJsonhalRead':
          return FeedbackJsonhalRead.fromJson(value);
        case 'FeedbackJsonhalReadLinks':
          return FeedbackJsonhalReadLinks.fromJson(value);
        case 'FileCreateFileCommandWrite':
          return FileCreateFileCommandWrite.fromJson(value);
        case 'FileJsonhalRead':
          return FileJsonhalRead.fromJson(value);
        case 'FormJsonhalOrganizationPreferenceRead':
          return FormJsonhalOrganizationPreferenceRead.fromJson(value);
        case 'GeoCoordinatesJsonhalRead':
          return GeoCoordinatesJsonhalRead.fromJson(value);
        case 'GetAssetCollection200Response':
          return GetAssetCollection200Response.fromJson(value);
        case 'GetAssetCollection200ResponseEmbedded':
          return GetAssetCollection200ResponseEmbedded.fromJson(value);
        case 'GetAssetTypeCollection200Response':
          return GetAssetTypeCollection200Response.fromJson(value);
        case 'GetAssetTypeCollection200ResponseEmbedded':
          return GetAssetTypeCollection200ResponseEmbedded.fromJson(value);
        case 'GetAuthToken200Response':
          return GetAuthToken200Response.fromJson(value);
        case 'GetAuthTokenRequest':
          return GetAuthTokenRequest.fromJson(value);
        case 'GetBookmarkCollection200Response':
          return GetBookmarkCollection200Response.fromJson(value);
        case 'GetBookmarkCollection200ResponseEmbedded':
          return GetBookmarkCollection200ResponseEmbedded.fromJson(value);
        case 'GetBrandCollection200Response':
          return GetBrandCollection200Response.fromJson(value);
        case 'GetBrandCollection200ResponseEmbedded':
          return GetBrandCollection200ResponseEmbedded.fromJson(value);
        case 'GetBusinessHoursCollection200Response':
          return GetBusinessHoursCollection200Response.fromJson(value);
        case 'GetBusinessHoursCollection200ResponseEmbedded':
          return GetBusinessHoursCollection200ResponseEmbedded.fromJson(value);
        case 'GetCategoryCollection200Response':
          return GetCategoryCollection200Response.fromJson(value);
        case 'GetCategoryCollection200ResponseEmbedded':
          return GetCategoryCollection200ResponseEmbedded.fromJson(value);
        case 'GetCategoryTypeCollection200Response':
          return GetCategoryTypeCollection200Response.fromJson(value);
        case 'GetCategoryTypeCollection200ResponseEmbedded':
          return GetCategoryTypeCollection200ResponseEmbedded.fromJson(value);
        case 'GetContractCollection200Response':
          return GetContractCollection200Response.fromJson(value);
        case 'GetContractCollection200ResponseEmbedded':
          return GetContractCollection200ResponseEmbedded.fromJson(value);
        case 'GetContractTypeCollection200Response':
          return GetContractTypeCollection200Response.fromJson(value);
        case 'GetContractTypeCollection200ResponseEmbedded':
          return GetContractTypeCollection200ResponseEmbedded.fromJson(value);
        case 'GetEquipmentCollection200Response':
          return GetEquipmentCollection200Response.fromJson(value);
        case 'GetEquipmentCollection200ResponseEmbedded':
          return GetEquipmentCollection200ResponseEmbedded.fromJson(value);
        case 'GetExportCollection200Response':
          return GetExportCollection200Response.fromJson(value);
        case 'GetExportCollection200ResponseEmbedded':
          return GetExportCollection200ResponseEmbedded.fromJson(value);
        case 'GetIntegrationCollection200Response':
          return GetIntegrationCollection200Response.fromJson(value);
        case 'GetIntegrationCollection200ResponseEmbedded':
          return GetIntegrationCollection200ResponseEmbedded.fromJson(value);
        case 'GetIntegrationLinkCollection200Response':
          return GetIntegrationLinkCollection200Response.fromJson(value);
        case 'GetIntegrationLinkCollection200ResponseEmbedded':
          return GetIntegrationLinkCollection200ResponseEmbedded.fromJson(
              value);
        case 'GetMemberCollection200Response':
          return GetMemberCollection200Response.fromJson(value);
        case 'GetMemberCollection200ResponseEmbedded':
          return GetMemberCollection200ResponseEmbedded.fromJson(value);
        case 'GetOccupantCollection200Response':
          return GetOccupantCollection200Response.fromJson(value);
        case 'GetOccupantCollection200ResponseEmbedded':
          return GetOccupantCollection200ResponseEmbedded.fromJson(value);
        case 'GetPlaceCollection200Response':
          return GetPlaceCollection200Response.fromJson(value);
        case 'GetPlaceCollection200ResponseEmbedded':
          return GetPlaceCollection200ResponseEmbedded.fromJson(value);
        case 'GetPlaceCollection200ResponseLinks':
          return GetPlaceCollection200ResponseLinks.fromJson(value);
        case 'GetPlaceCollection200ResponseLinksFirst':
          return GetPlaceCollection200ResponseLinksFirst.fromJson(value);
        case 'GetPlaceCollection200ResponseLinksSelf':
          return GetPlaceCollection200ResponseLinksSelf.fromJson(value);
        case 'GetPublicationCollection200Response':
          return GetPublicationCollection200Response.fromJson(value);
        case 'GetPublicationCollection200ResponseEmbedded':
          return GetPublicationCollection200ResponseEmbedded.fromJson(value);
        case 'GetQuoteCollection200Response':
          return GetQuoteCollection200Response.fromJson(value);
        case 'GetQuoteCollection200ResponseEmbedded':
          return GetQuoteCollection200ResponseEmbedded.fromJson(value);
        case 'GetReviewCollection200Response':
          return GetReviewCollection200Response.fromJson(value);
        case 'GetReviewCollection200ResponseEmbedded':
          return GetReviewCollection200ResponseEmbedded.fromJson(value);
        case 'GetReviewRequestCollection200Response':
          return GetReviewRequestCollection200Response.fromJson(value);
        case 'GetReviewRequestCollection200ResponseEmbedded':
          return GetReviewRequestCollection200ResponseEmbedded.fromJson(value);
        case 'GetServiceCollection200Response':
          return GetServiceCollection200Response.fromJson(value);
        case 'GetServiceCollection200ResponseEmbedded':
          return GetServiceCollection200ResponseEmbedded.fromJson(value);
        case 'GetSlaPolicyCollection200Response':
          return GetSlaPolicyCollection200Response.fromJson(value);
        case 'GetSlaPolicyCollection200ResponseEmbedded':
          return GetSlaPolicyCollection200ResponseEmbedded.fromJson(value);
        case 'GetTicketCollection200Response':
          return GetTicketCollection200Response.fromJson(value);
        case 'GetTicketCollection200ResponseEmbedded':
          return GetTicketCollection200ResponseEmbedded.fromJson(value);
        case 'GetTicketDocumentTypes200Response':
          return GetTicketDocumentTypes200Response.fromJson(value);
        case 'GetTicketDocumentTypes200ResponseEmbedded':
          return GetTicketDocumentTypes200ResponseEmbedded.fromJson(value);
        case 'GetTicketGeoCollection200Response':
          return GetTicketGeoCollection200Response.fromJson(value);
        case 'GetTicketMetrics200Response':
          return GetTicketMetrics200Response.fromJson(value);
        case 'GetTicketMetrics200ResponseEmbedded':
          return GetTicketMetrics200ResponseEmbedded.fromJson(value);
        case 'GetTicketTargetGroups200Response':
          return GetTicketTargetGroups200Response.fromJson(value);
        case 'GetTicketTargetGroups200ResponseEmbedded':
          return GetTicketTargetGroups200ResponseEmbedded.fromJson(value);
        case 'GetTicketTypeCollection200Response':
          return GetTicketTypeCollection200Response.fromJson(value);
        case 'GetTicketTypeCollection200ResponseEmbedded':
          return GetTicketTypeCollection200ResponseEmbedded.fromJson(value);
        case 'GetTicketWorkflowTransitions200Response':
          return GetTicketWorkflowTransitions200Response.fromJson(value);
        case 'GetTicketWorkflowTransitions200ResponseEmbedded':
          return GetTicketWorkflowTransitions200ResponseEmbedded.fromJson(
              value);
        case 'IntegrationJsonhalRead':
          return IntegrationJsonhalRead.fromJson(value);
        case 'IntegrationJsonhalReadLinks':
          return IntegrationJsonhalReadLinks.fromJson(value);
        case 'IntegrationLinkCreateLinkCommandWrite':
          return IntegrationLinkCreateLinkCommandWrite.fromJson(value);
        case 'IntegrationLinkEditLinkCommandWrite':
          return IntegrationLinkEditLinkCommandWrite.fromJson(value);
        case 'IntegrationLinkJsonhalRead':
          return IntegrationLinkJsonhalRead.fromJson(value);
        case 'MarkerJsonhalRead':
          return MarkerJsonhalRead.fromJson(value);
        case 'MemberJsonhalRead':
          return MemberJsonhalRead.fromJson(value);
        case 'MetricJsonhalRead':
          return MetricJsonhalRead.fromJson(value);
        case 'NodeJsonhalRead':
          return NodeJsonhalRead.fromJson(value);
        case 'OccupantJsonhalRead':
          return OccupantJsonhalRead.fromJson(value);
        case 'OccupantJsonhalReadEmbedded':
          return OccupantJsonhalReadEmbedded.fromJson(value);
        case 'OrganizationJsonhalRead':
          return OrganizationJsonhalRead.fromJson(value);
        case 'OrganizationJsonhalReadLinks':
          return OrganizationJsonhalReadLinks.fromJson(value);
        case 'PersonJsonhalRead':
          return PersonJsonhalRead.fromJson(value);
        case 'PlaceCreatePlaceCommandWriteCreate':
          return PlaceCreatePlaceCommandWriteCreate.fromJson(value);
        case 'PlaceEditPlaceCommandWriteEdit':
          return PlaceEditPlaceCommandWriteEdit.fromJson(value);
        case 'PlaceJsonhalRead':
          return PlaceJsonhalRead.fromJson(value);
        case 'PointJsonhalRead':
          return PointJsonhalRead.fromJson(value);
        case 'PostalAddressJsonhalRead':
          return PostalAddressJsonhalRead.fromJson(value);
        case 'PostalAddressWrite':
          return PostalAddressWrite.fromJson(value);
        case 'PostalAddressWriteCreate':
          return PostalAddressWriteCreate.fromJson(value);
        case 'PostalAddressWriteEdit':
          return PostalAddressWriteEdit.fromJson(value);
        case 'PreferencesAssetRead':
          return PreferencesAssetRead.fromJson(value);
        case 'PreferencesJsonhalAssetRead':
          return PreferencesJsonhalAssetRead.fromJson(value);
        case 'PreferencesJsonhalOrganizationRead':
          return PreferencesJsonhalOrganizationRead.fromJson(value);
        case 'PriceJsonhalRead':
          return PriceJsonhalRead.fromJson(value);
        case 'PriceWrite':
          return PriceWrite.fromJson(value);
        case 'ProfileJsonhalAuthProfileRead':
          return ProfileJsonhalAuthProfileRead.fromJson(value);
        case 'ProfileProfileInput':
          return ProfileProfileInput.fromJson(value);
        case 'PublicationJsonhalRead':
          return PublicationJsonhalRead.fromJson(value);
        case 'PublicationJsonhalReadEmbedded':
          return PublicationJsonhalReadEmbedded.fromJson(value);
        case 'PublicationJsonhalReadLinks':
          return PublicationJsonhalReadLinks.fromJson(value);
        case 'QuoteCreateQuoteCommandWrite':
          return QuoteCreateQuoteCommandWrite.fromJson(value);
        case 'QuoteEditQuoteCommandWrite':
          return QuoteEditQuoteCommandWrite.fromJson(value);
        case 'QuoteJsonhalOrganizationPreferenceRead':
          return QuoteJsonhalOrganizationPreferenceRead.fromJson(value);
        case 'QuoteJsonhalRead':
          return QuoteJsonhalRead.fromJson(value);
        case 'QuoteJsonhalReadEmbedded':
          return QuoteJsonhalReadEmbedded.fromJson(value);
        case 'QuoteJsonhalReadLinks':
          return QuoteJsonhalReadLinks.fromJson(value);
        case 'ReferenceJsonhalOrganizationPreferenceRead':
          return ReferenceJsonhalOrganizationPreferenceRead.fromJson(value);
        case 'RenewalJsonhalRead':
          return RenewalJsonhalRead.fromJson(value);
        case 'RenewalWrite':
          return RenewalWrite.fromJson(value);
        case 'ReviewJsonhalOrganizationPreferenceRead':
          return ReviewJsonhalOrganizationPreferenceRead.fromJson(value);
        case 'ReviewJsonhalRead':
          return ReviewJsonhalRead.fromJson(value);
        case 'ReviewJsonhalReadLinks':
          return ReviewJsonhalReadLinks.fromJson(value);
        case 'ReviewRequestJsonhalRead':
          return ReviewRequestJsonhalRead.fromJson(value);
        case 'ReviewRequestJsonhalReadEmbedded':
          return ReviewRequestJsonhalReadEmbedded.fromJson(value);
        case 'ReviewRequestJsonhalReadLinks':
          return ReviewRequestJsonhalReadLinks.fromJson(value);
        case 'RoleJsonhalRead':
          return RoleJsonhalRead.fromJson(value);
        case 'ServiceJsonhalRead':
          return ServiceJsonhalRead.fromJson(value);
        case 'ServiceJsonhalReadEmbedded':
          return ServiceJsonhalReadEmbedded.fromJson(value);
        case 'ServiceOfferCreateOfferCommandWrite':
          return ServiceOfferCreateOfferCommandWrite.fromJson(value);
        case 'ServiceOfferJsonhalRead':
          return ServiceOfferJsonhalRead.fromJson(value);
        case 'ServiceOfferJsonhalReadLinks':
          return ServiceOfferJsonhalReadLinks.fromJson(value);
        case 'SlaJsonhalOrganizationPreferenceRead':
          return SlaJsonhalOrganizationPreferenceRead.fromJson(value);
        case 'SlaPolicyJsonhalRead':
          return SlaPolicyJsonhalRead.fromJson(value);
        case 'SlaPolicyJsonhalReadEmbedded':
          return SlaPolicyJsonhalReadEmbedded.fromJson(value);
        case 'SlaPolicyJsonhalReadLinks':
          return SlaPolicyJsonhalReadLinks.fromJson(value);
        case 'TargetGroupJsonhalRead':
          return TargetGroupJsonhalRead.fromJson(value);
        case 'TicketCreateTicketCommandWrite':
          return TicketCreateTicketCommandWrite.fromJson(value);
        case 'TicketEditTicketCommandWrite':
          return TicketEditTicketCommandWrite.fromJson(value);
        case 'TicketJsongeoRead':
          return TicketJsongeoRead.fromJson(value);
        case 'TicketJsongeoReadGeometry':
          return TicketJsongeoReadGeometry.fromJson(value);
        case 'TicketJsonhalRead':
          return TicketJsonhalRead.fromJson(value);
        case 'TicketJsonhalReadEmbedded':
          return TicketJsonhalReadEmbedded.fromJson(value);
        case 'TicketJsonhalReadLinks':
          return TicketJsonhalReadLinks.fromJson(value);
        case 'TicketPriorityJsonhalRead':
          return TicketPriorityJsonhalRead.fromJson(value);
        case 'TicketTypeJsonhalRead':
          return TicketTypeJsonhalRead.fromJson(value);
        case 'UserJsonhalAuthProfileRead':
          return UserJsonhalAuthProfileRead.fromJson(value);
        case 'WarrantyJsonhalRead':
          return WarrantyJsonhalRead.fromJson(value);
        case 'WarrantyWrite':
          return WarrantyWrite.fromJson(value);
        case 'WorkflowStateJsonhalRead':
          return WorkflowStateJsonhalRead.fromJson(value);
        case 'WorkflowTransitionJsonhalRead':
          return WorkflowTransitionJsonhalRead.fromJson(value);
        case 'WorkflowTransitionJsonhalReadEmbedded':
          return WorkflowTransitionJsonhalReadEmbedded.fromJson(value);
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
