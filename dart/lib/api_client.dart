//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ApiClient {
  ApiClient({
    this.basePath = 'https://api.keyclic.com',
    this.debug = false,
  }) {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications[r'bearer'] = ApiKeyAuth('header', 'Authorization');
  }

  final String basePath;
  final bool debug;

  final _authentications = <String, Authentication>{};
  final _defaultHeaderMap = <String, String>{};
  final Logger _logger = Logger('ApiClient');

  var _client = Client();

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  ///
  /// If the [newClient] is null, an [ArgumentError] is thrown.
  set client(Client newClient) {
    if (newClient == null) {
      throw ArgumentError('New client instance cannot be null.');
    }
    _client = newClient;
  }

  void addDefaultHeader(String key, String value) {
    _defaultHeaderMap[key] = value;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  /// Returns an unmodifiable [Map] of the authentications, since none should be added
  /// or deleted.
  Map<String, Authentication> get authentications =>
      Map.unmodifiable(_authentications);

  T getAuthentication<T extends Authentication>(String name) {
    final authentication = _authentications[name];
    return authentication is T ? authentication : null;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI({
    String path,
    String method,
    List<QueryParam> queryParams,
    Object body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String contentType,
    List<String> authNames,
  }) async {
    _updateParamsForAuth(authNames, queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);

    final urlEncodedQueryParams = <String>[
      for (final param in queryParams)
        if (param.value != null) '$param',
    ];

    final queryString = urlEncodedQueryParams.isNotEmpty
        ? '?${urlEncodedQueryParams.join('&')}'
        : '';

    final Uri uri = Uri.parse('$basePath$path$queryString');

    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (body is MultipartFile &&
          (contentType == null ||
              !contentType.toLowerCase().startsWith('multipart/form-data'))) {
        final request = StreamedRequest(method, uri);
        request
          ..headers.addAll(headerParams)
          ..contentLength = body.length;
        body.finalize().listen(
              request.sink.add,
              onDone: request.sink.close,
              onError: (error, trace) => request.sink.close(),
              cancelOnError: true,
            );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request
          ..fields.addAll(body.fields)
          ..files.addAll(body.files)
          ..headers.addAll(body.headers)
          ..headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
          ? formParams
          : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      if (debug) {
        _logger.info('$method $uri');
      }

      switch (method) {
        case 'POST':
          return await _client.post(uri,
              headers: nullableHeaderParams, body: msgBody);
        case 'PUT':
          return await _client.put(uri,
              headers: nullableHeaderParams, body: msgBody);
        case 'DELETE':
          return await _client.delete(uri, headers: nullableHeaderParams);
        case 'PATCH':
          return await _client.patch(uri,
              headers: nullableHeaderParams, body: msgBody);
        case 'HEAD':
          return await _client.head(uri, headers: nullableHeaderParams);
        case 'GET':
          return await _client.get(uri, headers: nullableHeaderParams);
      }
      // the next 3 exceptions come from dart:io which cannot be used for web clients
    } /* on SocketException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'Socket operation failed: $method $path', e, trace,);
    } on TlsException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'TLS/SSL communication failed: $method $path', e, trace,);
    } on IOException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'I/O operation failed: $method $path', e, trace,);
    }*/
    on ClientException catch (e, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        e,
        trace,
      );
    } on Exception catch (e, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        e,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  Future<dynamic> deserializeAsync(String json, String targetType,
          {bool growable}) async =>
      // ignore: deprecated_member_use_from_same_package
      deserialize(json, targetType, growable: growable);

  @Deprecated(
      'Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String json, String targetType, {bool growable}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType =
        targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
        ? json
        : _deserialize(jsonDecode(json), targetType,
            growable: growable == true);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object value) async => serialize(value);

  @Deprecated(
      'Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object value) => value == null ? '' : json.encode(value);

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(
    List<String> authNames,
    List<QueryParam> queryParams,
    Map<String, String> headerParams,
  ) {
    for (final authName in authNames) {
      final auth = _authentications[authName];
      if (auth == null) {
        throw ArgumentError('Authentication undefined: $authName');
      }
      auth.applyToParams(queryParams, headerParams);
    }
  }

  static dynamic _deserialize(dynamic value, String targetType,
      {bool growable}) {
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
          break;
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'Activity':
          return Activity.fromJson(value);
        case 'ActivityAggregatedPagination':
          return ActivityAggregatedPagination.fromJson(value);
        case 'ActivityEntity':
          return ActivityEntity.fromJson(value);
        case 'ActivityGroup':
          return ActivityGroup.fromJson(value);
        case 'ActivityPagination':
          return ActivityPagination.fromJson(value);
        case 'AgreementOlderThan':
          return AgreementOlderThan.fromJson(value);
        case 'AgreementPrivacyPolicy':
          return AgreementPrivacyPolicy.fromJson(value);
        case 'AgreementTermsOfService':
          return AgreementTermsOfService.fromJson(value);
        case 'Application':
          return Application.fromJson(value);
        case 'ApplicationAbout':
          return ApplicationAbout.fromJson(value);
        case 'ApplicationAgreement':
          return ApplicationAgreement.fromJson(value);
        case 'ApplicationConfiguration':
          return ApplicationConfiguration.fromJson(value);
        case 'ApplicationContactPoint':
          return ApplicationContactPoint.fromJson(value);
        case 'ApplicationLinks':
          return ApplicationLinks.fromJson(value);
        case 'ApplicationLinksKnowledgeBase':
          return ApplicationLinksKnowledgeBase.fromJson(value);
        case 'ApplicationLinksKnowledgeBaseIriTemplate':
          return ApplicationLinksKnowledgeBaseIriTemplate.fromJson(value);
        case 'ApplicationLinksKnowledgeBaseIriTemplateMapping':
          return ApplicationLinksKnowledgeBaseIriTemplateMapping.fromJson(
              value);
        case 'ApplicationLinksSelf':
          return ApplicationLinksSelf.fromJson(value);
        case 'ApplicationLinksSelfIriTemplate':
          return ApplicationLinksSelfIriTemplate.fromJson(value);
        case 'ApplicationLinksSelfIriTemplateMapping':
          return ApplicationLinksSelfIriTemplateMapping.fromJson(value);
        case 'Article':
          return Article.fromJson(value);
        case 'ArticleCollection':
          return ArticleCollection.fromJson(value);
        case 'ArticleLinks':
          return ArticleLinks.fromJson(value);
        case 'ArticleLinksSection':
          return ArticleLinksSection.fromJson(value);
        case 'ArticleLinksSectionIriTemplate':
          return ArticleLinksSectionIriTemplate.fromJson(value);
        case 'ArticleLinksSectionIriTemplateMapping':
          return ArticleLinksSectionIriTemplateMapping.fromJson(value);
        case 'ArticleLinksSelf':
          return ArticleLinksSelf.fromJson(value);
        case 'ArticleLinksSelfIriTemplate':
          return ArticleLinksSelfIriTemplate.fromJson(value);
        case 'ArticleLinksSelfIriTemplateMapping':
          return ArticleLinksSelfIriTemplateMapping.fromJson(value);
        case 'ArticlePagination':
          return ArticlePagination.fromJson(value);
        case 'ArticlePaginationAllOf':
          return ArticlePaginationAllOf.fromJson(value);
        case 'AssignData':
          return AssignData.fromJson(value);
        case 'Assignment':
          return Assignment.fromJson(value);
        case 'AssignmentCollection':
          return AssignmentCollection.fromJson(value);
        case 'AssignmentData':
          return AssignmentData.fromJson(value);
        case 'AssignmentEmbedded':
          return AssignmentEmbedded.fromJson(value);
        case 'AssignmentLinks':
          return AssignmentLinks.fromJson(value);
        case 'AssignmentLinksReport':
          return AssignmentLinksReport.fromJson(value);
        case 'AssignmentLinksReportIriTemplate':
          return AssignmentLinksReportIriTemplate.fromJson(value);
        case 'AssignmentLinksReportIriTemplateMapping':
          return AssignmentLinksReportIriTemplateMapping.fromJson(value);
        case 'AssignmentLinksSelf':
          return AssignmentLinksSelf.fromJson(value);
        case 'AssignmentLinksSelfIriTemplate':
          return AssignmentLinksSelfIriTemplate.fromJson(value);
        case 'AssignmentLinksSelfIriTemplateMapping':
          return AssignmentLinksSelfIriTemplateMapping.fromJson(value);
        case 'AssignmentLinksService':
          return AssignmentLinksService.fromJson(value);
        case 'AssignmentLinksServiceIriTemplate':
          return AssignmentLinksServiceIriTemplate.fromJson(value);
        case 'AssignmentLinksServiceIriTemplateMapping':
          return AssignmentLinksServiceIriTemplateMapping.fromJson(value);
        case 'AssignmentPagination':
          return AssignmentPagination.fromJson(value);
        case 'AssignmentPaginationAllOf':
          return AssignmentPaginationAllOf.fromJson(value);
        case 'Binary':
          return Binary.fromJson(value);
        case 'BinaryCollection':
          return BinaryCollection.fromJson(value);
        case 'BinaryPagination':
          return BinaryPagination.fromJson(value);
        case 'BinaryPaginationAllOf':
          return BinaryPaginationAllOf.fromJson(value);
        case 'Bookmark':
          return Bookmark.fromJson(value);
        case 'BookmarkCollection':
          return BookmarkCollection.fromJson(value);
        case 'BookmarkData':
          return BookmarkData.fromJson(value);
        case 'BookmarkEmbedded':
          return BookmarkEmbedded.fromJson(value);
        case 'BookmarkLinks':
          return BookmarkLinks.fromJson(value);
        case 'BookmarkLinksMember':
          return BookmarkLinksMember.fromJson(value);
        case 'BookmarkLinksMemberIriTemplate':
          return BookmarkLinksMemberIriTemplate.fromJson(value);
        case 'BookmarkLinksMemberIriTemplateMapping':
          return BookmarkLinksMemberIriTemplateMapping.fromJson(value);
        case 'BookmarkLinksPlace':
          return BookmarkLinksPlace.fromJson(value);
        case 'BookmarkLinksPlaceIriTemplate':
          return BookmarkLinksPlaceIriTemplate.fromJson(value);
        case 'BookmarkLinksPlaceIriTemplateMapping':
          return BookmarkLinksPlaceIriTemplateMapping.fromJson(value);
        case 'BookmarkLinksSelf':
          return BookmarkLinksSelf.fromJson(value);
        case 'BookmarkLinksSelfIriTemplate':
          return BookmarkLinksSelfIriTemplate.fromJson(value);
        case 'BookmarkLinksSelfIriTemplateMapping':
          return BookmarkLinksSelfIriTemplateMapping.fromJson(value);
        case 'BookmarkPagination':
          return BookmarkPagination.fromJson(value);
        case 'BookmarkPaginationAllOf':
          return BookmarkPaginationAllOf.fromJson(value);
        case 'BusinessActivity':
          return BusinessActivity.fromJson(value);
        case 'BusinessActivityCollection':
          return BusinessActivityCollection.fromJson(value);
        case 'BusinessActivityLinks':
          return BusinessActivityLinks.fromJson(value);
        case 'BusinessActivityLinksImage':
          return BusinessActivityLinksImage.fromJson(value);
        case 'BusinessActivityLinksImageIriTemplate':
          return BusinessActivityLinksImageIriTemplate.fromJson(value);
        case 'BusinessActivityLinksImageIriTemplateMapping':
          return BusinessActivityLinksImageIriTemplateMapping.fromJson(value);
        case 'BusinessActivityLinksSchema':
          return BusinessActivityLinksSchema.fromJson(value);
        case 'BusinessActivityLinksSchemaIriTemplate':
          return BusinessActivityLinksSchemaIriTemplate.fromJson(value);
        case 'BusinessActivityLinksSelf':
          return BusinessActivityLinksSelf.fromJson(value);
        case 'BusinessActivityLinksSelfIriTemplate':
          return BusinessActivityLinksSelfIriTemplate.fromJson(value);
        case 'BusinessActivityLinksThumbnail':
          return BusinessActivityLinksThumbnail.fromJson(value);
        case 'BusinessActivityLinksThumbnailIriTemplate':
          return BusinessActivityLinksThumbnailIriTemplate.fromJson(value);
        case 'BusinessActivityPagination':
          return BusinessActivityPagination.fromJson(value);
        case 'BusinessActivityPaginationAllOf':
          return BusinessActivityPaginationAllOf.fromJson(value);
        case 'BusinessActivitySchema':
          return BusinessActivitySchema.fromJson(value);
        case 'Category':
          return Category.fromJson(value);
        case 'CategoryCollection':
          return CategoryCollection.fromJson(value);
        case 'CategoryData':
          return CategoryData.fromJson(value);
        case 'CategoryEmbedded':
          return CategoryEmbedded.fromJson(value);
        case 'CategoryLinks':
          return CategoryLinks.fromJson(value);
        case 'CategoryLinksOrganization':
          return CategoryLinksOrganization.fromJson(value);
        case 'CategoryLinksOrganizationIriTemplate':
          return CategoryLinksOrganizationIriTemplate.fromJson(value);
        case 'CategoryLinksOrganizationIriTemplateMapping':
          return CategoryLinksOrganizationIriTemplateMapping.fromJson(value);
        case 'CategoryLinksSelf':
          return CategoryLinksSelf.fromJson(value);
        case 'CategoryLinksSelfIriTemplate':
          return CategoryLinksSelfIriTemplate.fromJson(value);
        case 'CategoryLinksSelfIriTemplateMapping':
          return CategoryLinksSelfIriTemplateMapping.fromJson(value);
        case 'CategoryPagination':
          return CategoryPagination.fromJson(value);
        case 'CategoryPaginationAllOf':
          return CategoryPaginationAllOf.fromJson(value);
        case 'CategoryPatch':
          return CategoryPatch.fromJson(value);
        case 'Chart':
          return Chart.fromJson(value);
        case 'Checkpoint':
          return Checkpoint.fromJson(value);
        case 'CheckpointEmbedded':
          return CheckpointEmbedded.fromJson(value);
        case 'CheckpointLinks':
          return CheckpointLinks.fromJson(value);
        case 'CheckpointLinksOrganization':
          return CheckpointLinksOrganization.fromJson(value);
        case 'CheckpointLinksOrganizationIriTemplate':
          return CheckpointLinksOrganizationIriTemplate.fromJson(value);
        case 'CheckpointState':
          return CheckpointState.fromJson(value);
        case 'CommentData':
          return CommentData.fromJson(value);
        case 'ConditionListCondition':
          return ConditionListCondition.fromJson(value);
        case 'Configuration':
          return Configuration.fromJson(value);
        case 'ConfigurationLinks':
          return ConfigurationLinks.fromJson(value);
        case 'ConfigurationLinksSelf':
          return ConfigurationLinksSelf.fromJson(value);
        case 'ConfigurationLinksSelfIriTemplate':
          return ConfigurationLinksSelfIriTemplate.fromJson(value);
        case 'ConfigurationLinksSelfIriTemplateMapping':
          return ConfigurationLinksSelfIriTemplateMapping.fromJson(value);
        case 'ConfigurationMemberType':
          return ConfigurationMemberType.fromJson(value);
        case 'ConfigurationOperationType':
          return ConfigurationOperationType.fromJson(value);
        case 'ConfigurationPlaceType':
          return ConfigurationPlaceType.fromJson(value);
        case 'ConfigurationReportType':
          return ConfigurationReportType.fromJson(value);
        case 'Contribution':
          return Contribution.fromJson(value);
        case 'ContributionCollection':
          return ContributionCollection.fromJson(value);
        case 'ContributionData':
          return ContributionData.fromJson(value);
        case 'ContributionLinks':
          return ContributionLinks.fromJson(value);
        case 'ContributionLinksContributor':
          return ContributionLinksContributor.fromJson(value);
        case 'ContributionLinksContributorIriTemplate':
          return ContributionLinksContributorIriTemplate.fromJson(value);
        case 'ContributionLinksContributorIriTemplateMapping':
          return ContributionLinksContributorIriTemplateMapping.fromJson(value);
        case 'ContributionLinksFeedback':
          return ContributionLinksFeedback.fromJson(value);
        case 'ContributionLinksFeedbackIriTemplate':
          return ContributionLinksFeedbackIriTemplate.fromJson(value);
        case 'ContributionLinksFeedbackIriTemplateMapping':
          return ContributionLinksFeedbackIriTemplateMapping.fromJson(value);
        case 'ContributionPagination':
          return ContributionPagination.fromJson(value);
        case 'ContributionPaginationAllOf':
          return ContributionPaginationAllOf.fromJson(value);
        case 'Device':
          return Device.fromJson(value);
        case 'DeviceData':
          return DeviceData.fromJson(value);
        case 'DeviceLinks':
          return DeviceLinks.fromJson(value);
        case 'DeviceLinksPerson':
          return DeviceLinksPerson.fromJson(value);
        case 'DeviceLinksPersonIriTemplate':
          return DeviceLinksPersonIriTemplate.fromJson(value);
        case 'DeviceLinksSelf':
          return DeviceLinksSelf.fromJson(value);
        case 'DeviceLinksSelfIriTemplate':
          return DeviceLinksSelfIriTemplate.fromJson(value);
        case 'DeviceLinksSelfIriTemplateMapping':
          return DeviceLinksSelfIriTemplateMapping.fromJson(value);
        case 'Dispatcher':
          return Dispatcher.fromJson(value);
        case 'Document':
          return Document.fromJson(value);
        case 'DocumentCollection':
          return DocumentCollection.fromJson(value);
        case 'DocumentData':
          return DocumentData.fromJson(value);
        case 'DocumentDataFile':
          return DocumentDataFile.fromJson(value);
        case 'DocumentDataPermission':
          return DocumentDataPermission.fromJson(value);
        case 'DocumentEmbedded':
          return DocumentEmbedded.fromJson(value);
        case 'DocumentFile':
          return DocumentFile.fromJson(value);
        case 'DocumentLinks':
          return DocumentLinks.fromJson(value);
        case 'DocumentLinksCreatedBy':
          return DocumentLinksCreatedBy.fromJson(value);
        case 'DocumentLinksCreatedByIriTemplate':
          return DocumentLinksCreatedByIriTemplate.fromJson(value);
        case 'DocumentLinksFile':
          return DocumentLinksFile.fromJson(value);
        case 'DocumentLinksFileIriTemplate':
          return DocumentLinksFileIriTemplate.fromJson(value);
        case 'DocumentLinksFileIriTemplateMapping':
          return DocumentLinksFileIriTemplateMapping.fromJson(value);
        case 'DocumentLinksSelf':
          return DocumentLinksSelf.fromJson(value);
        case 'DocumentLinksSelfIriTemplate':
          return DocumentLinksSelfIriTemplate.fromJson(value);
        case 'DocumentPagination':
          return DocumentPagination.fromJson(value);
        case 'DocumentPaginationAllOf':
          return DocumentPaginationAllOf.fromJson(value);
        case 'DocumentPatch':
          return DocumentPatch.fromJson(value);
        case 'DocumentPatchFile':
          return DocumentPatchFile.fromJson(value);
        case 'DocumentPatchPermission':
          return DocumentPatchPermission.fromJson(value);
        case 'DocumentPermission':
          return DocumentPermission.fromJson(value);
        case 'DocumentType':
          return DocumentType.fromJson(value);
        case 'DocumentWorkflowData':
          return DocumentWorkflowData.fromJson(value);
        case 'Duration':
          return Duration.fromJson(value);
        case 'ExportData':
          return ExportData.fromJson(value);
        case 'ExternalService':
          return ExternalService.fromJson(value);
        case 'ExternalServiceCollection':
          return ExternalServiceCollection.fromJson(value);
        case 'ExternalServiceContactPoint':
          return ExternalServiceContactPoint.fromJson(value);
        case 'ExternalServiceData':
          return ExternalServiceData.fromJson(value);
        case 'ExternalServiceEmbedded':
          return ExternalServiceEmbedded.fromJson(value);
        case 'ExternalServiceLinks':
          return ExternalServiceLinks.fromJson(value);
        case 'ExternalServiceLinksProvider':
          return ExternalServiceLinksProvider.fromJson(value);
        case 'ExternalServiceLinksProviderIriTemplate':
          return ExternalServiceLinksProviderIriTemplate.fromJson(value);
        case 'ExternalServiceLinksSelf':
          return ExternalServiceLinksSelf.fromJson(value);
        case 'ExternalServiceLinksSelfIriTemplate':
          return ExternalServiceLinksSelfIriTemplate.fromJson(value);
        case 'ExternalServiceLinksSelfIriTemplateMapping':
          return ExternalServiceLinksSelfIriTemplateMapping.fromJson(value);
        case 'ExternalServicePagination':
          return ExternalServicePagination.fromJson(value);
        case 'ExternalServicePaginationAllOf':
          return ExternalServicePaginationAllOf.fromJson(value);
        case 'ExternalServicePatch':
          return ExternalServicePatch.fromJson(value);
        case 'ExternalServicePatchAddress':
          return ExternalServicePatchAddress.fromJson(value);
        case 'ExternalServicePatchContactPoint':
          return ExternalServicePatchContactPoint.fromJson(value);
        case 'ExternalServicePostalAddress':
          return ExternalServicePostalAddress.fromJson(value);
        case 'Feature':
          return Feature.fromJson(value);
        case 'FeatureGeometry':
          return FeatureGeometry.fromJson(value);
        case 'Feedback':
          return Feedback.fromJson(value);
        case 'FeedbackCollection':
          return FeedbackCollection.fromJson(value);
        case 'FeedbackData':
          return FeedbackData.fromJson(value);
        case 'FeedbackDataGeo':
          return FeedbackDataGeo.fromJson(value);
        case 'FeedbackDataGeoPoint':
          return FeedbackDataGeoPoint.fromJson(value);
        case 'FeedbackEmbedded':
          return FeedbackEmbedded.fromJson(value);
        case 'FeedbackGeoCoordinates':
          return FeedbackGeoCoordinates.fromJson(value);
        case 'FeedbackLinks':
          return FeedbackLinks.fromJson(value);
        case 'FeedbackLinksBusinessActivity':
          return FeedbackLinksBusinessActivity.fromJson(value);
        case 'FeedbackLinksBusinessActivityIriTemplate':
          return FeedbackLinksBusinessActivityIriTemplate.fromJson(value);
        case 'FeedbackLinksCategory':
          return FeedbackLinksCategory.fromJson(value);
        case 'FeedbackLinksCategoryIriTemplate':
          return FeedbackLinksCategoryIriTemplate.fromJson(value);
        case 'FeedbackLinksImage':
          return FeedbackLinksImage.fromJson(value);
        case 'FeedbackLinksImageIriTemplate':
          return FeedbackLinksImageIriTemplate.fromJson(value);
        case 'FeedbackLinksImageIriTemplateMapping':
          return FeedbackLinksImageIriTemplateMapping.fromJson(value);
        case 'FeedbackLinksImages':
          return FeedbackLinksImages.fromJson(value);
        case 'FeedbackLinksImagesIriTemplate':
          return FeedbackLinksImagesIriTemplate.fromJson(value);
        case 'FeedbackLinksPlans':
          return FeedbackLinksPlans.fromJson(value);
        case 'FeedbackLinksPlansIriTemplate':
          return FeedbackLinksPlansIriTemplate.fromJson(value);
        case 'FeedbackLinksPlansIriTemplateMapping':
          return FeedbackLinksPlansIriTemplateMapping.fromJson(value);
        case 'FeedbackLinksReport':
          return FeedbackLinksReport.fromJson(value);
        case 'FeedbackLinksReportIriTemplate':
          return FeedbackLinksReportIriTemplate.fromJson(value);
        case 'FeedbackLinksReporter':
          return FeedbackLinksReporter.fromJson(value);
        case 'FeedbackLinksReporterIriTemplate':
          return FeedbackLinksReporterIriTemplate.fromJson(value);
        case 'FeedbackLinksSelf':
          return FeedbackLinksSelf.fromJson(value);
        case 'FeedbackLinksSelfIriTemplate':
          return FeedbackLinksSelfIriTemplate.fromJson(value);
        case 'FeedbackLinksTracking':
          return FeedbackLinksTracking.fromJson(value);
        case 'FeedbackLinksTrackingIriTemplate':
          return FeedbackLinksTrackingIriTemplate.fromJson(value);
        case 'FeedbackPagination':
          return FeedbackPagination.fromJson(value);
        case 'FeedbackPaginationAllOf':
          return FeedbackPaginationAllOf.fromJson(value);
        case 'FeedbackWorkflowTransitionData':
          return FeedbackWorkflowTransitionData.fromJson(value);
        case 'FileData':
          return FileData.fromJson(value);
        case 'GeoShape':
          return GeoShape.fromJson(value);
        case 'GeoShapeCentroid':
          return GeoShapeCentroid.fromJson(value);
        case 'ImageData':
          return ImageData.fromJson(value);
        case 'InternalService':
          return InternalService.fromJson(value);
        case 'InternalServiceCollection':
          return InternalServiceCollection.fromJson(value);
        case 'InternalServiceContactPoint':
          return InternalServiceContactPoint.fromJson(value);
        case 'InternalServiceData':
          return InternalServiceData.fromJson(value);
        case 'InternalServiceDataAddress':
          return InternalServiceDataAddress.fromJson(value);
        case 'InternalServiceDataContactPoint':
          return InternalServiceDataContactPoint.fromJson(value);
        case 'InternalServiceEmbedded':
          return InternalServiceEmbedded.fromJson(value);
        case 'InternalServiceLinks':
          return InternalServiceLinks.fromJson(value);
        case 'InternalServiceLinksOrganization':
          return InternalServiceLinksOrganization.fromJson(value);
        case 'InternalServiceLinksOrganizationIriTemplate':
          return InternalServiceLinksOrganizationIriTemplate.fromJson(value);
        case 'InternalServiceLinksSelf':
          return InternalServiceLinksSelf.fromJson(value);
        case 'InternalServiceLinksSelfIriTemplate':
          return InternalServiceLinksSelfIriTemplate.fromJson(value);
        case 'InternalServiceLinksSelfIriTemplateMapping':
          return InternalServiceLinksSelfIriTemplateMapping.fromJson(value);
        case 'InternalServicePagination':
          return InternalServicePagination.fromJson(value);
        case 'InternalServicePaginationAllOf':
          return InternalServicePaginationAllOf.fromJson(value);
        case 'InternalServicePatch':
          return InternalServicePatch.fromJson(value);
        case 'InternalServicePostalAddress':
          return InternalServicePostalAddress.fromJson(value);
        case 'Invitation':
          return Invitation.fromJson(value);
        case 'InvitationData':
          return InvitationData.fromJson(value);
        case 'InvitationEmbedded':
          return InvitationEmbedded.fromJson(value);
        case 'InvitationLinks':
          return InvitationLinks.fromJson(value);
        case 'InvitationLinksMember':
          return InvitationLinksMember.fromJson(value);
        case 'InvitationLinksMemberIriTemplate':
          return InvitationLinksMemberIriTemplate.fromJson(value);
        case 'InvitationLinksSelf':
          return InvitationLinksSelf.fromJson(value);
        case 'InvitationLinksSelfIriTemplate':
          return InvitationLinksSelfIriTemplate.fromJson(value);
        case 'InvitationLinksSelfIriTemplateMapping':
          return InvitationLinksSelfIriTemplateMapping.fromJson(value);
        case 'ItemsChoice':
          return ItemsChoice.fromJson(value);
        case 'KnowledgeBase':
          return KnowledgeBase.fromJson(value);
        case 'KnowledgeBaseLinks':
          return KnowledgeBaseLinks.fromJson(value);
        case 'KnowledgeBaseLinksSelf':
          return KnowledgeBaseLinksSelf.fromJson(value);
        case 'KnowledgeBaseLinksSelfIriTemplate':
          return KnowledgeBaseLinksSelfIriTemplate.fromJson(value);
        case 'LegacySignatureData':
          return LegacySignatureData.fromJson(value);
        case 'LegacySignatureDataSigner':
          return LegacySignatureDataSigner.fromJson(value);
        case 'LoginData':
          return LoginData.fromJson(value);
        case 'Marker':
          return Marker.fromJson(value);
        case 'MarkerData':
          return MarkerData.fromJson(value);
        case 'MarkerDataPoint':
          return MarkerDataPoint.fromJson(value);
        case 'MarkerLinks':
          return MarkerLinks.fromJson(value);
        case 'MarkerLinksPlan':
          return MarkerLinksPlan.fromJson(value);
        case 'MarkerLinksPlanIriTemplate':
          return MarkerLinksPlanIriTemplate.fromJson(value);
        case 'MarkerLinksPlanIriTemplateMapping':
          return MarkerLinksPlanIriTemplateMapping.fromJson(value);
        case 'MarkerLinksSelf':
          return MarkerLinksSelf.fromJson(value);
        case 'MarkerLinksSelfIriTemplate':
          return MarkerLinksSelfIriTemplate.fromJson(value);
        case 'MarkerLinksSelfIriTemplateMapping':
          return MarkerLinksSelfIriTemplateMapping.fromJson(value);
        case 'Member':
          return Member.fromJson(value);
        case 'MemberCollection':
          return MemberCollection.fromJson(value);
        case 'MemberContactPoint':
          return MemberContactPoint.fromJson(value);
        case 'MemberData':
          return MemberData.fromJson(value);
        case 'MemberEmbedded':
          return MemberEmbedded.fromJson(value);
        case 'MemberLinks':
          return MemberLinks.fromJson(value);
        case 'MemberLinksOrganization':
          return MemberLinksOrganization.fromJson(value);
        case 'MemberLinksOrganizationIriTemplate':
          return MemberLinksOrganizationIriTemplate.fromJson(value);
        case 'MemberLinksPerson':
          return MemberLinksPerson.fromJson(value);
        case 'MemberLinksPersonIriTemplate':
          return MemberLinksPersonIriTemplate.fromJson(value);
        case 'MemberLinksSelf':
          return MemberLinksSelf.fromJson(value);
        case 'MemberLinksSelfIriTemplate':
          return MemberLinksSelfIriTemplate.fromJson(value);
        case 'MemberPagination':
          return MemberPagination.fromJson(value);
        case 'MemberPaginationAllOf':
          return MemberPaginationAllOf.fromJson(value);
        case 'MemberPatch':
          return MemberPatch.fromJson(value);
        case 'MemberPatchContactPoint':
          return MemberPatchContactPoint.fromJson(value);
        case 'MemberTypeRole':
          return MemberTypeRole.fromJson(value);
        case 'Metric':
          return Metric.fromJson(value);
        case 'ModelExport':
          return ModelExport.fromJson(value);
        case 'NodePath':
          return NodePath.fromJson(value);
        case 'Occupant':
          return Occupant.fromJson(value);
        case 'OccupantCollection':
          return OccupantCollection.fromJson(value);
        case 'OccupantData':
          return OccupantData.fromJson(value);
        case 'OccupantLinks':
          return OccupantLinks.fromJson(value);
        case 'OccupantLinksMember':
          return OccupantLinksMember.fromJson(value);
        case 'OccupantLinksMemberIriTemplate':
          return OccupantLinksMemberIriTemplate.fromJson(value);
        case 'OccupantLinksPlace':
          return OccupantLinksPlace.fromJson(value);
        case 'OccupantLinksPlaceIriTemplate':
          return OccupantLinksPlaceIriTemplate.fromJson(value);
        case 'OccupantLinksSelf':
          return OccupantLinksSelf.fromJson(value);
        case 'OccupantLinksSelfIriTemplate':
          return OccupantLinksSelfIriTemplate.fromJson(value);
        case 'OccupantLinksSelfIriTemplateMapping':
          return OccupantLinksSelfIriTemplateMapping.fromJson(value);
        case 'OccupantPagination':
          return OccupantPagination.fromJson(value);
        case 'OccupantPaginationAllOf':
          return OccupantPaginationAllOf.fromJson(value);
        case 'Operation':
          return Operation.fromJson(value);
        case 'OperationCollection':
          return OperationCollection.fromJson(value);
        case 'OperationData':
          return OperationData.fromJson(value);
        case 'OperationEmbedded':
          return OperationEmbedded.fromJson(value);
        case 'OperationEmbeddedWorkflow':
          return OperationEmbeddedWorkflow.fromJson(value);
        case 'OperationLinks':
          return OperationLinks.fromJson(value);
        case 'OperationLinksFeedback':
          return OperationLinksFeedback.fromJson(value);
        case 'OperationLinksFeedbackIriTemplate':
          return OperationLinksFeedbackIriTemplate.fromJson(value);
        case 'OperationLinksImage':
          return OperationLinksImage.fromJson(value);
        case 'OperationLinksImageIriTemplate':
          return OperationLinksImageIriTemplate.fromJson(value);
        case 'OperationLinksImageIriTemplateMapping':
          return OperationLinksImageIriTemplateMapping.fromJson(value);
        case 'OperationLinksImages':
          return OperationLinksImages.fromJson(value);
        case 'OperationLinksImagesIriTemplate':
          return OperationLinksImagesIriTemplate.fromJson(value);
        case 'OperationLinksImagesIriTemplateMapping':
          return OperationLinksImagesIriTemplateMapping.fromJson(value);
        case 'OperationLinksOperator':
          return OperationLinksOperator.fromJson(value);
        case 'OperationLinksOperatorIriTemplate':
          return OperationLinksOperatorIriTemplate.fromJson(value);
        case 'OperationLinksOrganization':
          return OperationLinksOrganization.fromJson(value);
        case 'OperationLinksOrganizationIriTemplate':
          return OperationLinksOrganizationIriTemplate.fromJson(value);
        case 'OperationLinksReport':
          return OperationLinksReport.fromJson(value);
        case 'OperationLinksReportIriTemplate':
          return OperationLinksReportIriTemplate.fromJson(value);
        case 'OperationLinksSelf':
          return OperationLinksSelf.fromJson(value);
        case 'OperationLinksSelfIriTemplate':
          return OperationLinksSelfIriTemplate.fromJson(value);
        case 'OperationLinksSelfIriTemplateMapping':
          return OperationLinksSelfIriTemplateMapping.fromJson(value);
        case 'OperationLinksTracking':
          return OperationLinksTracking.fromJson(value);
        case 'OperationLinksTrackingIriTemplate':
          return OperationLinksTrackingIriTemplate.fromJson(value);
        case 'OperationPagination':
          return OperationPagination.fromJson(value);
        case 'OperationPaginationAllOf':
          return OperationPaginationAllOf.fromJson(value);
        case 'OperationPriority':
          return OperationPriority.fromJson(value);
        case 'OperationSignature':
          return OperationSignature.fromJson(value);
        case 'OperationTypeWorkflow':
          return OperationTypeWorkflow.fromJson(value);
        case 'Organization':
          return Organization.fromJson(value);
        case 'OrganizationCollection':
          return OrganizationCollection.fromJson(value);
        case 'OrganizationLinks':
          return OrganizationLinks.fromJson(value);
        case 'OrganizationLinksApplication':
          return OrganizationLinksApplication.fromJson(value);
        case 'OrganizationLinksApplicationIriTemplate':
          return OrganizationLinksApplicationIriTemplate.fromJson(value);
        case 'OrganizationLinksBusinessActivity':
          return OrganizationLinksBusinessActivity.fromJson(value);
        case 'OrganizationLinksBusinessActivityIriTemplate':
          return OrganizationLinksBusinessActivityIriTemplate.fromJson(value);
        case 'OrganizationLinksConfiguration':
          return OrganizationLinksConfiguration.fromJson(value);
        case 'OrganizationLinksConfigurationIriTemplate':
          return OrganizationLinksConfigurationIriTemplate.fromJson(value);
        case 'OrganizationLinksDispatcher':
          return OrganizationLinksDispatcher.fromJson(value);
        case 'OrganizationLinksDispatcherIriTemplate':
          return OrganizationLinksDispatcherIriTemplate.fromJson(value);
        case 'OrganizationLinksDispatcherIriTemplateMapping':
          return OrganizationLinksDispatcherIriTemplateMapping.fromJson(value);
        case 'OrganizationLinksLogo':
          return OrganizationLinksLogo.fromJson(value);
        case 'OrganizationLinksLogoIriTemplate':
          return OrganizationLinksLogoIriTemplate.fromJson(value);
        case 'OrganizationLinksSelf':
          return OrganizationLinksSelf.fromJson(value);
        case 'OrganizationLinksSelfIriTemplate':
          return OrganizationLinksSelfIriTemplate.fromJson(value);
        case 'OrganizationPagination':
          return OrganizationPagination.fromJson(value);
        case 'OrganizationPaginationAllOf':
          return OrganizationPaginationAllOf.fromJson(value);
        case 'OrganizationPatch':
          return OrganizationPatch.fromJson(value);
        case 'OrganizationPatchPreferences':
          return OrganizationPatchPreferences.fromJson(value);
        case 'OrganizationPatchPreferencesReference':
          return OrganizationPatchPreferencesReference.fromJson(value);
        case 'OrganizationPostalAddress':
          return OrganizationPostalAddress.fromJson(value);
        case 'OrganizationPreferences':
          return OrganizationPreferences.fromJson(value);
        case 'Pagination':
          return Pagination.fromJson(value);
        case 'PaginationLink':
          return PaginationLink.fromJson(value);
        case 'PaginationLinks':
          return PaginationLinks.fromJson(value);
        case 'PasswordChangeData':
          return PasswordChangeData.fromJson(value);
        case 'Permission':
          return PermissionTypeTransformer().decode(value);

        case 'Person':
          return Person.fromJson(value);
        case 'PersonAgreement':
          return PersonAgreement.fromJson(value);
        case 'PersonLinks':
          return PersonLinks.fromJson(value);
        case 'PersonLinksImage':
          return PersonLinksImage.fromJson(value);
        case 'PersonLinksImageIriTemplate':
          return PersonLinksImageIriTemplate.fromJson(value);
        case 'PersonLinksSelf':
          return PersonLinksSelf.fromJson(value);
        case 'PersonLinksSelfIriTemplate':
          return PersonLinksSelfIriTemplate.fromJson(value);
        case 'PersonPatch':
          return PersonPatch.fromJson(value);
        case 'PersonPatchAgreement':
          return PersonPatchAgreement.fromJson(value);
        case 'PersonPatchPreferences':
          return PersonPatchPreferences.fromJson(value);
        case 'PersonPatchPreferencesNotification':
          return PersonPatchPreferencesNotification.fromJson(value);
        case 'PersonPreferences':
          return PersonPreferences.fromJson(value);
        case 'Place':
          return Place.fromJson(value);
        case 'PlaceCollection':
          return PlaceCollection.fromJson(value);
        case 'PlaceData':
          return PlaceData.fromJson(value);
        case 'PlaceEmbedded':
          return PlaceEmbedded.fromJson(value);
        case 'PlaceEmbeddedTargetGroups':
          return PlaceEmbeddedTargetGroups.fromJson(value);
        case 'PlaceLinks':
          return PlaceLinks.fromJson(value);
        case 'PlaceLinksChildren':
          return PlaceLinksChildren.fromJson(value);
        case 'PlaceLinksChildrenIriTemplate':
          return PlaceLinksChildrenIriTemplate.fromJson(value);
        case 'PlaceLinksChildrenIriTemplateMapping':
          return PlaceLinksChildrenIriTemplateMapping.fromJson(value);
        case 'PlaceLinksGeo':
          return PlaceLinksGeo.fromJson(value);
        case 'PlaceLinksGeoIriTemplate':
          return PlaceLinksGeoIriTemplate.fromJson(value);
        case 'PlaceLinksOrganization':
          return PlaceLinksOrganization.fromJson(value);
        case 'PlaceLinksOrganizationIriTemplate':
          return PlaceLinksOrganizationIriTemplate.fromJson(value);
        case 'PlaceLinksPlans':
          return PlaceLinksPlans.fromJson(value);
        case 'PlaceLinksPlansIriTemplate':
          return PlaceLinksPlansIriTemplate.fromJson(value);
        case 'PlaceLinksSelf':
          return PlaceLinksSelf.fromJson(value);
        case 'PlaceLinksSelfIriTemplate':
          return PlaceLinksSelfIriTemplate.fromJson(value);
        case 'PlacePagination':
          return PlacePagination.fromJson(value);
        case 'PlacePaginationAllOf':
          return PlacePaginationAllOf.fromJson(value);
        case 'PlacePatch':
          return PlacePatch.fromJson(value);
        case 'PlacePostalAddress':
          return PlacePostalAddress.fromJson(value);
        case 'PlacePreferences':
          return PlacePreferences.fromJson(value);
        case 'PlaceTypeWorkflow':
          return PlaceTypeWorkflow.fromJson(value);
        case 'Plan':
          return Plan.fromJson(value);
        case 'PlanCollection':
          return PlanCollection.fromJson(value);
        case 'PlanData':
          return PlanData.fromJson(value);
        case 'PlanLinks':
          return PlanLinks.fromJson(value);
        case 'PlanLinksImage':
          return PlanLinksImage.fromJson(value);
        case 'PlanLinksImageIriTemplate':
          return PlanLinksImageIriTemplate.fromJson(value);
        case 'PlanLinksPlace':
          return PlanLinksPlace.fromJson(value);
        case 'PlanLinksPlaceIriTemplate':
          return PlanLinksPlaceIriTemplate.fromJson(value);
        case 'PlanLinksSelf':
          return PlanLinksSelf.fromJson(value);
        case 'PlanLinksSelfIriTemplate':
          return PlanLinksSelfIriTemplate.fromJson(value);
        case 'PlanPagination':
          return PlanPagination.fromJson(value);
        case 'PlanPaginationAllOf':
          return PlanPaginationAllOf.fromJson(value);
        case 'PlanPatch':
          return PlanPatch.fromJson(value);
        case 'Point':
          return Point.fromJson(value);
        case 'Polygon':
          return Polygon.fromJson(value);
        case 'PreferencesForm':
          return PreferencesForm.fromJson(value);
        case 'PreferencesNotification':
          return PreferencesNotification.fromJson(value);
        case 'PreferencesReference':
          return PreferencesReference.fromJson(value);
        case 'Problem':
          return Problem.fromJson(value);
        case 'ProblemEmbedded':
          return ProblemEmbedded.fromJson(value);
        case 'PropertyConditionList':
          return PropertyConditionList.fromJson(value);
        case 'PropertyItems':
          return PropertyItems.fromJson(value);
        case 'Publication':
          return Publication.fromJson(value);
        case 'PublicationCollection':
          return PublicationCollection.fromJson(value);
        case 'PublicationData':
          return PublicationData.fromJson(value);
        case 'PublicationEmbedded':
          return PublicationEmbedded.fromJson(value);
        case 'PublicationLinks':
          return PublicationLinks.fromJson(value);
        case 'PublicationLinksAuthor':
          return PublicationLinksAuthor.fromJson(value);
        case 'PublicationLinksAuthorIriTemplate':
          return PublicationLinksAuthorIriTemplate.fromJson(value);
        case 'PublicationLinksFeed':
          return PublicationLinksFeed.fromJson(value);
        case 'PublicationLinksFeedIriTemplate':
          return PublicationLinksFeedIriTemplate.fromJson(value);
        case 'PublicationLinksOrganization':
          return PublicationLinksOrganization.fromJson(value);
        case 'PublicationLinksOrganizationIriTemplate':
          return PublicationLinksOrganizationIriTemplate.fromJson(value);
        case 'PublicationLinksSelf':
          return PublicationLinksSelf.fromJson(value);
        case 'PublicationLinksSelfIriTemplate':
          return PublicationLinksSelfIriTemplate.fromJson(value);
        case 'PublicationLinksSelfIriTemplateMapping':
          return PublicationLinksSelfIriTemplateMapping.fromJson(value);
        case 'PublicationPagination':
          return PublicationPagination.fromJson(value);
        case 'PublicationPaginationAllOf':
          return PublicationPaginationAllOf.fromJson(value);
        case 'RegisterData':
          return RegisterData.fromJson(value);
        case 'RegisterDataAgreement':
          return RegisterDataAgreement.fromJson(value);
        case 'Report':
          return Report.fromJson(value);
        case 'ReportCollection':
          return ReportCollection.fromJson(value);
        case 'ReportEmbedded':
          return ReportEmbedded.fromJson(value);
        case 'ReportLinks':
          return ReportLinks.fromJson(value);
        case 'ReportLinksCategory':
          return ReportLinksCategory.fromJson(value);
        case 'ReportLinksCategoryIriTemplate':
          return ReportLinksCategoryIriTemplate.fromJson(value);
        case 'ReportLinksChildren':
          return ReportLinksChildren.fromJson(value);
        case 'ReportLinksChildrenIriTemplate':
          return ReportLinksChildrenIriTemplate.fromJson(value);
        case 'ReportLinksChildrenIriTemplateMapping':
          return ReportLinksChildrenIriTemplateMapping.fromJson(value);
        case 'ReportLinksFeedback':
          return ReportLinksFeedback.fromJson(value);
        case 'ReportLinksFeedbackIriTemplate':
          return ReportLinksFeedbackIriTemplate.fromJson(value);
        case 'ReportLinksOperations':
          return ReportLinksOperations.fromJson(value);
        case 'ReportLinksOperationsIriTemplate':
          return ReportLinksOperationsIriTemplate.fromJson(value);
        case 'ReportLinksOrganization':
          return ReportLinksOrganization.fromJson(value);
        case 'ReportLinksOrganizationIriTemplate':
          return ReportLinksOrganizationIriTemplate.fromJson(value);
        case 'ReportLinksPlace':
          return ReportLinksPlace.fromJson(value);
        case 'ReportLinksPlaceIriTemplate':
          return ReportLinksPlaceIriTemplate.fromJson(value);
        case 'ReportLinksSelf':
          return ReportLinksSelf.fromJson(value);
        case 'ReportLinksSelfIriTemplate':
          return ReportLinksSelfIriTemplate.fromJson(value);
        case 'ReportLinksTracking':
          return ReportLinksTracking.fromJson(value);
        case 'ReportLinksTrackingIriTemplate':
          return ReportLinksTrackingIriTemplate.fromJson(value);
        case 'ReportPagination':
          return ReportPagination.fromJson(value);
        case 'ReportPaginationAllOf':
          return ReportPaginationAllOf.fromJson(value);
        case 'ReportPriority':
          return ReportPriority.fromJson(value);
        case 'ReportTypePriority':
          return ReportTypePriority.fromJson(value);
        case 'ReportTypeWorkflow':
          return ReportTypeWorkflow.fromJson(value);
        case 'ResetPasswordData':
          return ResetPasswordData.fromJson(value);
        case 'Review':
          return Review.fromJson(value);
        case 'ReviewCollection':
          return ReviewCollection.fromJson(value);
        case 'ReviewData':
          return ReviewData.fromJson(value);
        case 'ReviewLinks':
          return ReviewLinks.fromJson(value);
        case 'ReviewLinksAuthor':
          return ReviewLinksAuthor.fromJson(value);
        case 'ReviewLinksAuthorIriTemplate':
          return ReviewLinksAuthorIriTemplate.fromJson(value);
        case 'ReviewLinksItemReviewed':
          return ReviewLinksItemReviewed.fromJson(value);
        case 'ReviewLinksItemReviewedIriTemplate':
          return ReviewLinksItemReviewedIriTemplate.fromJson(value);
        case 'ReviewLinksSelf':
          return ReviewLinksSelf.fromJson(value);
        case 'ReviewLinksSelfIriTemplate':
          return ReviewLinksSelfIriTemplate.fromJson(value);
        case 'ReviewLinksSelfIriTemplateMapping':
          return ReviewLinksSelfIriTemplateMapping.fromJson(value);
        case 'ReviewPagination':
          return ReviewPagination.fromJson(value);
        case 'ReviewPaginationAllOf':
          return ReviewPaginationAllOf.fromJson(value);
        case 'ReviewRequest':
          return ReviewRequest.fromJson(value);
        case 'ReviewRequestCollection':
          return ReviewRequestCollection.fromJson(value);
        case 'ReviewRequestEmbedded':
          return ReviewRequestEmbedded.fromJson(value);
        case 'ReviewRequestLinks':
          return ReviewRequestLinks.fromJson(value);
        case 'ReviewRequestLinksItemToReview':
          return ReviewRequestLinksItemToReview.fromJson(value);
        case 'ReviewRequestLinksItemToReviewIriTemplate':
          return ReviewRequestLinksItemToReviewIriTemplate.fromJson(value);
        case 'ReviewRequestLinksOrganization':
          return ReviewRequestLinksOrganization.fromJson(value);
        case 'ReviewRequestLinksOrganizationIriTemplate':
          return ReviewRequestLinksOrganizationIriTemplate.fromJson(value);
        case 'ReviewRequestLinksReview':
          return ReviewRequestLinksReview.fromJson(value);
        case 'ReviewRequestLinksReviewIriTemplate':
          return ReviewRequestLinksReviewIriTemplate.fromJson(value);
        case 'ReviewRequestLinksReviewer':
          return ReviewRequestLinksReviewer.fromJson(value);
        case 'ReviewRequestLinksReviewerIriTemplate':
          return ReviewRequestLinksReviewerIriTemplate.fromJson(value);
        case 'ReviewRequestLinksSelf':
          return ReviewRequestLinksSelf.fromJson(value);
        case 'ReviewRequestLinksSelfIriTemplate':
          return ReviewRequestLinksSelfIriTemplate.fromJson(value);
        case 'ReviewRequestLinksSelfIriTemplateMapping':
          return ReviewRequestLinksSelfIriTemplateMapping.fromJson(value);
        case 'ReviewRequestPagination':
          return ReviewRequestPagination.fromJson(value);
        case 'ReviewRequestPaginationAllOf':
          return ReviewRequestPaginationAllOf.fromJson(value);
        case 'Role':
          return Role.fromJson(value);
        case 'Rule':
          return Rule.fromJson(value);
        case 'RuleCollection':
          return RuleCollection.fromJson(value);
        case 'RuleData':
          return RuleData.fromJson(value);
        case 'RuleEmbedded':
          return RuleEmbedded.fromJson(value);
        case 'RuleLinks':
          return RuleLinks.fromJson(value);
        case 'RuleLinksSelf':
          return RuleLinksSelf.fromJson(value);
        case 'RuleLinksSelfIriTemplate':
          return RuleLinksSelfIriTemplate.fromJson(value);
        case 'RuleLinksSelfIriTemplateMapping':
          return RuleLinksSelfIriTemplateMapping.fromJson(value);
        case 'RulePagination':
          return RulePagination.fromJson(value);
        case 'RulePaginationAllOf':
          return RulePaginationAllOf.fromJson(value);
        case 'RulePatch':
          return RulePatch.fromJson(value);
        case 'Run':
          return Run.fromJson(value);
        case 'RunData':
          return RunData.fromJson(value);
        case 'Schema':
          return Schema.fromJson(value);
        case 'SchemaProperty':
          return SchemaProperty.fromJson(value);
        case 'Section':
          return Section.fromJson(value);
        case 'SectionCollection':
          return SectionCollection.fromJson(value);
        case 'SectionLinks':
          return SectionLinks.fromJson(value);
        case 'SectionLinksSelf':
          return SectionLinksSelf.fromJson(value);
        case 'SectionLinksSelfIriTemplate':
          return SectionLinksSelfIriTemplate.fromJson(value);
        case 'SectionPagination':
          return SectionPagination.fromJson(value);
        case 'SectionPaginationAllOf':
          return SectionPaginationAllOf.fromJson(value);
        case 'Service':
          return Service.fromJson(value);
        case 'ServiceCollection':
          return ServiceCollection.fromJson(value);
        case 'ServiceContactPoint':
          return ServiceContactPoint.fromJson(value);
        case 'ServiceMemberData':
          return ServiceMemberData.fromJson(value);
        case 'ServicePagination':
          return ServicePagination.fromJson(value);
        case 'ServicePaginationAllOf':
          return ServicePaginationAllOf.fromJson(value);
        case 'ServicePostalAddress':
          return ServicePostalAddress.fromJson(value);
        case 'SignatureData':
          return SignatureData.fromJson(value);
        case 'SignatureSigner':
          return SignatureSigner.fromJson(value);
        case 'Signer':
          return Signer.fromJson(value);
        case 'SignerData':
          return SignerData.fromJson(value);
        case 'SignerLinks':
          return SignerLinks.fromJson(value);
        case 'SignerLinksSelf':
          return SignerLinksSelf.fromJson(value);
        case 'SignerLinksSelfIriTemplate':
          return SignerLinksSelfIriTemplate.fromJson(value);
        case 'SignerLinksSelfIriTemplateMapping':
          return SignerLinksSelfIriTemplateMapping.fromJson(value);
        case 'SignerSignature':
          return SignerSignature.fromJson(value);
        case 'State':
          return State.fromJson(value);
        case 'SuccessLogin':
          return SuccessLogin.fromJson(value);
        case 'SuccessLoginCredentials':
          return SuccessLoginCredentials.fromJson(value);
        case 'TaskPatch':
          return TaskPatch.fromJson(value);
        case 'Template':
          return Template.fromJson(value);
        case 'TemplateCollection':
          return TemplateCollection.fromJson(value);
        case 'TemplateData':
          return TemplateData.fromJson(value);
        case 'TemplatePagination':
          return TemplatePagination.fromJson(value);
        case 'TemplatePaginationAllOf':
          return TemplatePaginationAllOf.fromJson(value);
        case 'TemplatePatch':
          return TemplatePatch.fromJson(value);
        case 'Tracking':
          return Tracking.fromJson(value);
        case 'TrackingCheckpoint':
          return TrackingCheckpoint.fromJson(value);
        case 'TrackingProgression':
          return TrackingProgression.fromJson(value);
        case 'TransitionState':
          return TransitionState.fromJson(value);
        case 'Workflow':
          return Workflow.fromJson(value);
        case 'WorkflowData':
          return WorkflowData.fromJson(value);
        case 'WorkflowLinks':
          return WorkflowLinks.fromJson(value);
        case 'WorkflowLinksSelf':
          return WorkflowLinksSelf.fromJson(value);
        case 'WorkflowLinksSelfIriTemplate':
          return WorkflowLinksSelfIriTemplate.fromJson(value);
        case 'WorkflowLinksSelfIriTemplateMapping':
          return WorkflowLinksSelfIriTemplateMapping.fromJson(value);
        case 'WorkflowState':
          return WorkflowState.fromJson(value);
        case 'WorkflowTransition':
          return WorkflowTransition.fromJson(value);
        default:
          Match match;
          if (value is List &&
              (match = _regList.firstMatch(targetType)) != null) {
            targetType = match[1]; // ignore: parameter_assignments
            return value
                .map((v) => _deserialize(v, targetType, growable: growable))
                .toList(growable: growable);
          }
          if (value is Set &&
              (match = _regSet.firstMatch(targetType)) != null) {
            targetType = match[1]; // ignore: parameter_assignments
            return value
                .map((v) => _deserialize(v, targetType, growable: growable))
                .toSet();
          }
          if (value is Map &&
              (match = _regMap.firstMatch(targetType)) != null) {
            targetType = match[1]; // ignore: parameter_assignments
            return Map.fromIterables(
              value.keys,
              value.values
                  .map((v) => _deserialize(v, targetType, growable: growable)),
            );
          }
          break;
      }
    } catch (error, trace) {
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

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    @required this.json,
    @required this.targetType,
    this.growable,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
      ? message.json
      : ApiClient._deserialize(
          jsonDecode(message.json),
          targetType,
          growable: message.growable == true,
        );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object value) async =>
    value == null ? '' : json.encode(value);
