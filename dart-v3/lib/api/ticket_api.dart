//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class TicketApi {
  const TicketApi(this._apiClient);

  final ApiPlatformClient _apiClient;

  /// Retrieves a Ticket resource.
  /// Retrieves a Ticket resource.
  ///
  /// Parameters:
  /// * [identifier] - Task identifier
  /// * [xKeyclicApp] -
  /// * [xOrganizationId] -
  /// * [acceptLanguage] -
  /// * [xDateTime] -
  /// * [xKeyclicAppPlatform] -
  /// * [xKeyclicAppVersion] -
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketJsonhalRead] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<TicketJsonhalRead>> getTicket({
    required String identifier,
    required String xKeyclicApp,
    required String xOrganizationId,
    String? acceptLanguage,
    DateTime? xDateTime,
    String? xKeyclicAppPlatform,
    String? xKeyclicAppVersion,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final String path = r'/tickets/{identifier}'
        .replaceAll('{' r'identifier' '}', identifier.toString());
    final options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        // to string ??
        if (acceptLanguage != null) r'Accept-Language': acceptLanguage,
        if (xDateTime != null) r'X-Date-Time': xDateTime,
        r'X-Keyclic-App': xKeyclicApp,
        if (xKeyclicAppPlatform != null)
          r'X-Keyclic-App-Platform': xKeyclicAppPlatform,
        if (xKeyclicAppVersion != null)
          r'X-Keyclic-App-Version': xKeyclicAppVersion,
        r'X-Organization-Id': xOrganizationId,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'apiKey',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final response = await _apiClient.dio.request<Object>(
      path,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    TicketJsonhalRead responseData;

    try {
      responseData = await _apiClient.deserializeAsync<TicketJsonhalRead>(
          response.data!, 'TicketJsonhalRead');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<TicketJsonhalRead>(
      data: responseData,
      headers: response.headers,
      isRedirect: response.isRedirect,
      requestOptions: response.requestOptions,
      redirects: response.redirects,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
      extra: response.extra,
    );
  }

  /// Retrieves the collection of Ticket resources.
  /// Retrieves the collection of Ticket resources.
  ///
  /// Parameters:
  /// * [xKeyclicApp] -
  /// * [xOrganizationId] -
  /// * [page] - The collection page number
  /// * [limit] - The number of items per page
  /// * [pagination] - Enable or disable pagination
  /// * [createdAtLeftSquareBracketBeforeRightSquareBracket] -
  /// * [createdAtLeftSquareBracketStrictlyBeforeRightSquareBracket] -
  /// * [createdAtLeftSquareBracketAfterRightSquareBracket] -
  /// * [createdAtLeftSquareBracketStrictlyAfterRightSquareBracket] -
  /// * [scheduledAtLeftSquareBracketBeforeRightSquareBracket] -
  /// * [scheduledAtLeftSquareBracketStrictlyBeforeRightSquareBracket] -
  /// * [scheduledAtLeftSquareBracketAfterRightSquareBracket] -
  /// * [scheduledAtLeftSquareBracketStrictlyAfterRightSquareBracket] -
  /// * [updatedAtLeftSquareBracketBeforeRightSquareBracket] -
  /// * [updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket] -
  /// * [updatedAtLeftSquareBracketAfterRightSquareBracket] -
  /// * [updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket] -
  /// * [existsLeftSquareBracketAssignmentsRightSquareBracket] -
  /// * [existsLeftSquareBracketDocumentsRightSquareBracket] -
  /// * [orderLeftSquareBracketCreatedAtRightSquareBracket] -
  /// * [orderLeftSquareBracketScheduledAtRightSquareBracket] -
  /// * [orderLeftSquareBracketUpdatedAtRightSquareBracket] -
  /// * [assignmentsPeriodService] -
  /// * [assignmentsPeriodServiceLeftSquareBracketRightSquareBracket] -
  /// * [category] -
  /// * [categoryLeftSquareBracketRightSquareBracket] -
  /// * [childrenPeriodAssignmentsPeriodMember] -
  /// * [childrenPeriodAssignmentsPeriodMemberLeftSquareBracketRightSquareBracket] -
  /// * [childrenPeriodState] -
  /// * [childrenPeriodStateLeftSquareBracketRightSquareBracket] -
  /// * [createdBy] -
  /// * [createdByLeftSquareBracketRightSquareBracket] -
  /// * [level] -
  /// * [levelLeftSquareBracketRightSquareBracket] -
  /// * [organization] -
  /// * [organizationLeftSquareBracketRightSquareBracket] -
  /// * [phase] -
  /// * [phaseLeftSquareBracketRightSquareBracket] -
  /// * [priority] -
  /// * [priorityLeftSquareBracketRightSquareBracket] -
  /// * [reviewsPeriodReviewRating] -
  /// * [reviewsPeriodReviewRatingLeftSquareBracketRightSquareBracket] -
  /// * [state] -
  /// * [stateLeftSquareBracketRightSquareBracket] -
  /// * [acceptLanguage] -
  /// * [xDateTime] -
  /// * [xKeyclicAppPlatform] -
  /// * [xKeyclicAppVersion] -
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GetTickets200Response] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GetTickets200Response>> getTickets({
    required String xKeyclicApp,
    required String xOrganizationId,
    int? page,
    int? limit,
    bool? pagination,
    String? createdAtLeftSquareBracketBeforeRightSquareBracket,
    String? createdAtLeftSquareBracketStrictlyBeforeRightSquareBracket,
    String? createdAtLeftSquareBracketAfterRightSquareBracket,
    String? createdAtLeftSquareBracketStrictlyAfterRightSquareBracket,
    String? scheduledAtLeftSquareBracketBeforeRightSquareBracket,
    String? scheduledAtLeftSquareBracketStrictlyBeforeRightSquareBracket,
    String? scheduledAtLeftSquareBracketAfterRightSquareBracket,
    String? scheduledAtLeftSquareBracketStrictlyAfterRightSquareBracket,
    String? updatedAtLeftSquareBracketBeforeRightSquareBracket,
    String? updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket,
    String? updatedAtLeftSquareBracketAfterRightSquareBracket,
    String? updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket,
    bool? existsLeftSquareBracketAssignmentsRightSquareBracket,
    bool? existsLeftSquareBracketDocumentsRightSquareBracket,
    String? orderLeftSquareBracketCreatedAtRightSquareBracket,
    String? orderLeftSquareBracketScheduledAtRightSquareBracket,
    String? orderLeftSquareBracketUpdatedAtRightSquareBracket,
    String? assignmentsPeriodService,
    List<String>? assignmentsPeriodServiceLeftSquareBracketRightSquareBracket,
    String? category,
    List<String>? categoryLeftSquareBracketRightSquareBracket,
    String? childrenPeriodAssignmentsPeriodMember,
    List<String>?
        childrenPeriodAssignmentsPeriodMemberLeftSquareBracketRightSquareBracket,
    String? childrenPeriodState,
    List<String>? childrenPeriodStateLeftSquareBracketRightSquareBracket,
    String? createdBy,
    List<String>? createdByLeftSquareBracketRightSquareBracket,
    int? level,
    List<int>? levelLeftSquareBracketRightSquareBracket,
    String? organization,
    List<String>? organizationLeftSquareBracketRightSquareBracket,
    String? phase,
    List<String>? phaseLeftSquareBracketRightSquareBracket,
    String? priority,
    List<String>? priorityLeftSquareBracketRightSquareBracket,
    int? reviewsPeriodReviewRating,
    List<int>? reviewsPeriodReviewRatingLeftSquareBracketRightSquareBracket,
    String? state,
    List<String>? stateLeftSquareBracketRightSquareBracket,
    String? acceptLanguage,
    DateTime? xDateTime,
    String? xKeyclicAppPlatform,
    String? xKeyclicAppVersion,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final String path = r'/tickets';
    final options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        // to string ??
        if (acceptLanguage != null) r'Accept-Language': acceptLanguage,
        if (xDateTime != null) r'X-Date-Time': xDateTime,
        r'X-Keyclic-App': xKeyclicApp,
        if (xKeyclicAppPlatform != null)
          r'X-Keyclic-App-Platform': xKeyclicAppPlatform,
        if (xKeyclicAppVersion != null)
          r'X-Keyclic-App-Version': xKeyclicAppVersion,
        r'X-Organization-Id': xOrganizationId,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'apiKey',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final queryParameters = <String, dynamic>{
      if (page != null) r'page': encodeQueryParameter(page),
      if (limit != null) r'limit': encodeQueryParameter(limit),
      if (pagination != null) r'pagination': encodeQueryParameter(pagination),
      if (createdAtLeftSquareBracketBeforeRightSquareBracket != null)
        r'createdAt[before]': encodeQueryParameter(
            createdAtLeftSquareBracketBeforeRightSquareBracket),
      if (createdAtLeftSquareBracketStrictlyBeforeRightSquareBracket != null)
        r'createdAt[strictly_before]': encodeQueryParameter(
            createdAtLeftSquareBracketStrictlyBeforeRightSquareBracket),
      if (createdAtLeftSquareBracketAfterRightSquareBracket != null)
        r'createdAt[after]': encodeQueryParameter(
            createdAtLeftSquareBracketAfterRightSquareBracket),
      if (createdAtLeftSquareBracketStrictlyAfterRightSquareBracket != null)
        r'createdAt[strictly_after]': encodeQueryParameter(
            createdAtLeftSquareBracketStrictlyAfterRightSquareBracket),
      if (scheduledAtLeftSquareBracketBeforeRightSquareBracket != null)
        r'scheduledAt[before]': encodeQueryParameter(
            scheduledAtLeftSquareBracketBeforeRightSquareBracket),
      if (scheduledAtLeftSquareBracketStrictlyBeforeRightSquareBracket != null)
        r'scheduledAt[strictly_before]': encodeQueryParameter(
            scheduledAtLeftSquareBracketStrictlyBeforeRightSquareBracket),
      if (scheduledAtLeftSquareBracketAfterRightSquareBracket != null)
        r'scheduledAt[after]': encodeQueryParameter(
            scheduledAtLeftSquareBracketAfterRightSquareBracket),
      if (scheduledAtLeftSquareBracketStrictlyAfterRightSquareBracket != null)
        r'scheduledAt[strictly_after]': encodeQueryParameter(
            scheduledAtLeftSquareBracketStrictlyAfterRightSquareBracket),
      if (updatedAtLeftSquareBracketBeforeRightSquareBracket != null)
        r'updatedAt[before]': encodeQueryParameter(
            updatedAtLeftSquareBracketBeforeRightSquareBracket),
      if (updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket != null)
        r'updatedAt[strictly_before]': encodeQueryParameter(
            updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket),
      if (updatedAtLeftSquareBracketAfterRightSquareBracket != null)
        r'updatedAt[after]': encodeQueryParameter(
            updatedAtLeftSquareBracketAfterRightSquareBracket),
      if (updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket != null)
        r'updatedAt[strictly_after]': encodeQueryParameter(
            updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket),
      if (existsLeftSquareBracketAssignmentsRightSquareBracket != null)
        r'exists[assignments]': encodeQueryParameter(
            existsLeftSquareBracketAssignmentsRightSquareBracket),
      if (existsLeftSquareBracketDocumentsRightSquareBracket != null)
        r'exists[documents]': encodeQueryParameter(
            existsLeftSquareBracketDocumentsRightSquareBracket),
      if (orderLeftSquareBracketCreatedAtRightSquareBracket != null)
        r'order[createdAt]': encodeQueryParameter(
            orderLeftSquareBracketCreatedAtRightSquareBracket),
      if (orderLeftSquareBracketScheduledAtRightSquareBracket != null)
        r'order[scheduledAt]': encodeQueryParameter(
            orderLeftSquareBracketScheduledAtRightSquareBracket),
      if (orderLeftSquareBracketUpdatedAtRightSquareBracket != null)
        r'order[updatedAt]': encodeQueryParameter(
            orderLeftSquareBracketUpdatedAtRightSquareBracket),
      if (assignmentsPeriodService != null)
        r'assignments.service': encodeQueryParameter(assignmentsPeriodService),
      if (assignmentsPeriodServiceLeftSquareBracketRightSquareBracket != null)
        r'assignments.service[]': encodeCollectionQueryParameter(
            assignmentsPeriodServiceLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (category != null) r'category': encodeQueryParameter(category),
      if (categoryLeftSquareBracketRightSquareBracket != null)
        r'category[]': encodeCollectionQueryParameter(
            categoryLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (childrenPeriodAssignmentsPeriodMember != null)
        r'children.assignments.member':
            encodeQueryParameter(childrenPeriodAssignmentsPeriodMember),
      if (childrenPeriodAssignmentsPeriodMemberLeftSquareBracketRightSquareBracket !=
          null)
        r'children.assignments.member[]': encodeCollectionQueryParameter(
            childrenPeriodAssignmentsPeriodMemberLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (childrenPeriodState != null)
        r'children.state': encodeQueryParameter(childrenPeriodState),
      if (childrenPeriodStateLeftSquareBracketRightSquareBracket != null)
        r'children.state[]': encodeCollectionQueryParameter(
            childrenPeriodStateLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (createdBy != null) r'createdBy': encodeQueryParameter(createdBy),
      if (createdByLeftSquareBracketRightSquareBracket != null)
        r'createdBy[]': encodeCollectionQueryParameter(
            createdByLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (level != null) r'level': encodeQueryParameter(level),
      if (levelLeftSquareBracketRightSquareBracket != null)
        r'level[]': encodeCollectionQueryParameter(
            levelLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (organization != null)
        r'organization': encodeQueryParameter(organization),
      if (organizationLeftSquareBracketRightSquareBracket != null)
        r'organization[]': encodeCollectionQueryParameter(
            organizationLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (phase != null) r'phase': encodeQueryParameter(phase),
      if (phaseLeftSquareBracketRightSquareBracket != null)
        r'phase[]': encodeCollectionQueryParameter(
            phaseLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (priority != null) r'priority': encodeQueryParameter(priority),
      if (priorityLeftSquareBracketRightSquareBracket != null)
        r'priority[]': encodeCollectionQueryParameter(
            priorityLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (reviewsPeriodReviewRating != null)
        r'reviews.reviewRating':
            encodeQueryParameter(reviewsPeriodReviewRating),
      if (reviewsPeriodReviewRatingLeftSquareBracketRightSquareBracket != null)
        r'reviews.reviewRating[]': encodeCollectionQueryParameter(
            reviewsPeriodReviewRatingLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (state != null) r'state': encodeQueryParameter(state),
      if (stateLeftSquareBracketRightSquareBracket != null)
        r'state[]': encodeCollectionQueryParameter(
            stateLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
    };

    final response = await _apiClient.dio.request<Object>(
      path,
      options: options,
      queryParameters: queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    GetTickets200Response responseData;

    try {
      responseData = await _apiClient.deserializeAsync<GetTickets200Response>(
          response.data!, 'GetTickets200Response');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<GetTickets200Response>(
      data: responseData,
      headers: response.headers,
      isRedirect: response.isRedirect,
      requestOptions: response.requestOptions,
      redirects: response.redirects,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
      extra: response.extra,
    );
  }
}