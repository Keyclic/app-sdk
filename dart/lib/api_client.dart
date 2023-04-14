//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ApiClient {
  ApiClient({
    Dio? dio,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  }) : this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: 10000,
              receiveTimeout: 30000,
            )) {
    this.dio.interceptors.addAll(interceptors ??
        [
          OAuthInterceptor(),
          BasicAuthInterceptor(),
          BearerAuthInterceptor(),
          ApiKeyAuthInterceptor(),
        ]);
  }

  static const String basePath = r'https://api.keyclic.com';

  final Dio dio;
  // final Logger _logger = Logger('ApiClient');

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

  /// Get ApplicationApi instance
  ApplicationApi getApplicationApi() {
    return ApplicationApi(this);
  }

  /// Get ArticleApi instance
  ArticleApi getArticleApi() {
    return ArticleApi(this);
  }

  /// Get AssignmentApi instance
  AssignmentApi getAssignmentApi() {
    return AssignmentApi(this);
  }

  /// Get BookmarkApi instance
  BookmarkApi getBookmarkApi() {
    return BookmarkApi(this);
  }

  /// Get BusinessActivityApi instance
  BusinessActivityApi getBusinessActivityApi() {
    return BusinessActivityApi(this);
  }

  /// Get CategoryApi instance
  CategoryApi getCategoryApi() {
    return CategoryApi(this);
  }

  /// Get ConfigurationApi instance
  ConfigurationApi getConfigurationApi() {
    return ConfigurationApi(this);
  }

  /// Get ConnectorApi instance
  ConnectorApi getConnectorApi() {
    return ConnectorApi(this);
  }

  /// Get ContributionApi instance
  ContributionApi getContributionApi() {
    return ContributionApi(this);
  }

  /// Get DeviceApi instance
  DeviceApi getDeviceApi() {
    return DeviceApi(this);
  }

  /// Get DigitalDocumentApi instance
  DigitalDocumentApi getDigitalDocumentApi() {
    return DigitalDocumentApi(this);
  }

  /// Get DispatcherApi instance
  DispatcherApi getDispatcherApi() {
    return DispatcherApi(this);
  }

  /// Get DocumentApi instance
  DocumentApi getDocumentApi() {
    return DocumentApi(this);
  }

  /// Get ExportApi instance
  ExportApi getExportApi() {
    return ExportApi(this);
  }

  /// Get ExternalServiceApi instance
  ExternalServiceApi getExternalServiceApi() {
    return ExternalServiceApi(this);
  }

  /// Get FeedApi instance
  FeedApi getFeedApi() {
    return FeedApi(this);
  }

  /// Get FeedbackApi instance
  FeedbackApi getFeedbackApi() {
    return FeedbackApi(this);
  }

  /// Get InternalServiceApi instance
  InternalServiceApi getInternalServiceApi() {
    return InternalServiceApi(this);
  }

  /// Get InvitationApi instance
  InvitationApi getInvitationApi() {
    return InvitationApi(this);
  }

  /// Get KnowledgeBaseApi instance
  KnowledgeBaseApi getKnowledgeBaseApi() {
    return KnowledgeBaseApi(this);
  }

  /// Get MarkerApi instance
  MarkerApi getMarkerApi() {
    return MarkerApi(this);
  }

  /// Get MemberApi instance
  MemberApi getMemberApi() {
    return MemberApi(this);
  }

  /// Get NoteApi instance
  NoteApi getNoteApi() {
    return NoteApi(this);
  }

  /// Get OccupantApi instance
  OccupantApi getOccupantApi() {
    return OccupantApi(this);
  }

  /// Get OperationApi instance
  OperationApi getOperationApi() {
    return OperationApi(this);
  }

  /// Get OrganizationApi instance
  OrganizationApi getOrganizationApi() {
    return OrganizationApi(this);
  }

  /// Get PdfApi instance
  PdfApi getPdfApi() {
    return PdfApi(this);
  }

  /// Get PersonApi instance
  PersonApi getPersonApi() {
    return PersonApi(this);
  }

  /// Get PlaceApi instance
  PlaceApi getPlaceApi() {
    return PlaceApi(this);
  }

  /// Get PlanApi instance
  PlanApi getPlanApi() {
    return PlanApi(this);
  }

  /// Get ProcedureApi instance
  ProcedureApi getProcedureApi() {
    return ProcedureApi(this);
  }

  /// Get PublicationApi instance
  PublicationApi getPublicationApi() {
    return PublicationApi(this);
  }

  /// Get ReportApi instance
  ReportApi getReportApi() {
    return ReportApi(this);
  }

  /// Get ReviewApi instance
  ReviewApi getReviewApi() {
    return ReviewApi(this);
  }

  /// Get ReviewRequestApi instance
  ReviewRequestApi getReviewRequestApi() {
    return ReviewRequestApi(this);
  }

  /// Get RoleApi instance
  RoleApi getRoleApi() {
    return RoleApi(this);
  }

  /// Get RuleApi instance
  RuleApi getRuleApi() {
    return RuleApi(this);
  }

  /// Get SectionApi instance
  SectionApi getSectionApi() {
    return SectionApi(this);
  }

  /// Get SecurityApi instance
  SecurityApi getSecurityApi() {
    return SecurityApi(this);
  }

  /// Get ServiceApi instance
  ServiceApi getServiceApi() {
    return ServiceApi(this);
  }

  /// Get SignerApi instance
  SignerApi getSignerApi() {
    return SignerApi(this);
  }

  /// Get TemplateApi instance
  TemplateApi getTemplateApi() {
    return TemplateApi(this);
  }

  /// Get WebhookApi instance
  WebhookApi getWebhookApi() {
    return WebhookApi(this);
  }

  /// Get WorkflowApi instance
  WorkflowApi getWorkflowApi() {
    return WorkflowApi(this);
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
        case 'AssignmentLinksMember':
          return AssignmentLinksMember.fromJson(value);
        case 'AssignmentLinksMemberIriTemplate':
          return AssignmentLinksMemberIriTemplate.fromJson(value);
        case 'AssignmentLinksMemberIriTemplateMapping':
          return AssignmentLinksMemberIriTemplateMapping.fromJson(value);
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
        case 'DocumentLinksProcedure':
          return DocumentLinksProcedure.fromJson(value);
        case 'DocumentLinksProcedureIriTemplate':
          return DocumentLinksProcedureIriTemplate.fromJson(value);
        case 'DocumentLinksProcedureIriTemplateMapping':
          return DocumentLinksProcedureIriTemplateMapping.fromJson(value);
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
        case 'Feed':
          return Feed.fromJson(value);
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
        case 'FeedbackLinksImages':
          return FeedbackLinksImages.fromJson(value);
        case 'FeedbackLinksImagesIriTemplate':
          return FeedbackLinksImagesIriTemplate.fromJson(value);
        case 'FeedbackLinksImagesIriTemplateMapping':
          return FeedbackLinksImagesIriTemplateMapping.fromJson(value);
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
        case 'MessageData':
          return MessageData.fromJson(value);
        case 'Metric':
          return Metric.fromJson(value);
        case 'ModelExport':
          return ModelExport.fromJson(value);
        case 'NodePath':
          return NodePath.fromJson(value);
        case 'Note':
          return Note.fromJson(value);
        case 'NoteCollection':
          return NoteCollection.fromJson(value);
        case 'NoteLinks':
          return NoteLinks.fromJson(value);
        case 'NoteLinksAbout':
          return NoteLinksAbout.fromJson(value);
        case 'NoteLinksAboutIriTemplate':
          return NoteLinksAboutIriTemplate.fromJson(value);
        case 'NoteLinksAuthor':
          return NoteLinksAuthor.fromJson(value);
        case 'NoteLinksAuthorIriTemplate':
          return NoteLinksAuthorIriTemplate.fromJson(value);
        case 'NoteLinksSelf':
          return NoteLinksSelf.fromJson(value);
        case 'NoteLinksSelfIriTemplate':
          return NoteLinksSelfIriTemplate.fromJson(value);
        case 'NoteLinksSelfIriTemplateMapping':
          return NoteLinksSelfIriTemplateMapping.fromJson(value);
        case 'NotePagination':
          return NotePagination.fromJson(value);
        case 'NotePaginationAllOf':
          return NotePaginationAllOf.fromJson(value);
        case 'NotePatch':
          return NotePatch.fromJson(value);
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
        case 'OperationLinksAssignments':
          return OperationLinksAssignments.fromJson(value);
        case 'OperationLinksAssignmentsIriTemplate':
          return OperationLinksAssignmentsIriTemplate.fromJson(value);
        case 'OperationLinksAssignmentsIriTemplateMapping':
          return OperationLinksAssignmentsIriTemplateMapping.fromJson(value);
        case 'OperationLinksFeedback':
          return OperationLinksFeedback.fromJson(value);
        case 'OperationLinksFeedbackIriTemplate':
          return OperationLinksFeedbackIriTemplate.fromJson(value);
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
        case 'PlaceEmbeddedTargetGroupsInner':
          return PlaceEmbeddedTargetGroupsInner.fromJson(value);
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
        case 'PreferencesElectronicSignature':
          return PreferencesElectronicSignature.fromJson(value);
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
        case 'Procedure':
          return Procedure.fromJson(value);
        case 'ProcedureData':
          return ProcedureData.fromJson(value);
        case 'ProcedureEmbedded':
          return ProcedureEmbedded.fromJson(value);
        case 'ProcedureLinks':
          return ProcedureLinks.fromJson(value);
        case 'ProcedureLinksDocument':
          return ProcedureLinksDocument.fromJson(value);
        case 'ProcedureLinksDocumentIriTemplate':
          return ProcedureLinksDocumentIriTemplate.fromJson(value);
        case 'ProcedureLinksSelf':
          return ProcedureLinksSelf.fromJson(value);
        case 'ProcedureLinksSelfIriTemplate':
          return ProcedureLinksSelfIriTemplate.fromJson(value);
        case 'ProcedureWorkflowData':
          return ProcedureWorkflowData.fromJson(value);
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
        case 'ReviewRequestLinksItemToReviewIriTemplateMapping':
          return ReviewRequestLinksItemToReviewIriTemplateMapping.fromJson(
              value);
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
        case 'SignerCollection':
          return SignerCollection.fromJson(value);
        case 'SignerData':
          return SignerData.fromJson(value);
        case 'SignerLinks':
          return SignerLinks.fromJson(value);
        case 'SignerLinksProcedure':
          return SignerLinksProcedure.fromJson(value);
        case 'SignerLinksProcedureIriTemplate':
          return SignerLinksProcedureIriTemplate.fromJson(value);
        case 'SignerLinksSelf':
          return SignerLinksSelf.fromJson(value);
        case 'SignerLinksSelfIriTemplate':
          return SignerLinksSelfIriTemplate.fromJson(value);
        case 'SignerLinksSelfIriTemplateMapping':
          return SignerLinksSelfIriTemplateMapping.fromJson(value);
        case 'SignerPagination':
          return SignerPagination.fromJson(value);
        case 'SignerPaginationAllOf':
          return SignerPaginationAllOf.fromJson(value);
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
