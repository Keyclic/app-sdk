//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PersonApi {
  const PersonApi(this._apiClient);

  final ApiClient _apiClient;

  /// Retrieve all Document resources.
  ///
  ///
  /// Parameters:
  /// * [xKeyclicApp]
  /// * [person] - The identifier of the resource.
  /// * [acceptLanguage]
  /// * [xDateTime]
  /// * [xKeyclicAppPlatform]
  /// * [xKeyclicAppVersion]
  /// * [orderLeftSquareBracketRightSquareBracket]
  /// * [after]
  /// * [before]
  /// * [organization]
  /// * [organizationsLeftSquareBracketRightSquareBracket]
  /// * [state]
  /// * [statesLeftSquareBracketRightSquareBracket]
  /// * [page] - Page of the overview.
  /// * [limit] - Page of the overview.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [DocumentPagination] as data
  /// Throws [DioError] if API call or serialization fails
  /// Keyclic API documentation.
  /// Also see [Retrieve all Document resources. Documentation](https://docs.keyclic.com/fr/master/overview.html)
  Future<Response<DocumentPagination>> cgetDocumentsByPerson({
    required String xKeyclicApp,
    required String person,
    String? acceptLanguage,
    DateTime? xDateTime,
    String? xKeyclicAppPlatform,
    String? xKeyclicAppVersion,
    List<String>? orderLeftSquareBracketRightSquareBracket,
    DateTime? after,
    DateTime? before,
    String? organization,
    List<String>? organizationsLeftSquareBracketRightSquareBracket,
    String? state,
    List<String>? statesLeftSquareBracketRightSquareBracket,
    int? page,
    int? limit,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final String path = r'/people/{person}/documents'
        .replaceAll('{' r'person' '}', person.toString());
    final options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        // to string ??
        if (acceptLanguage != null) r'accept-language': acceptLanguage,
        if (xDateTime != null) r'x-date-time': xDateTime,
        r'x-keyclic-app': xKeyclicApp,
        if (xKeyclicAppPlatform != null)
          r'x-keyclic-app-platform': xKeyclicAppPlatform,
        if (xKeyclicAppVersion != null)
          r'x-keyclic-app-version': xKeyclicAppVersion,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'bearer',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final queryParameters = <String, dynamic>{
      if (orderLeftSquareBracketRightSquareBracket != null)
        r'order[]': encodeCollectionQueryParameter(
            orderLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (after != null) r'after': encodeQueryParameter(after),
      if (before != null) r'before': encodeQueryParameter(before),
      if (organization != null)
        r'organization': encodeQueryParameter(organization),
      if (organizationsLeftSquareBracketRightSquareBracket != null)
        r'organizations[]': encodeCollectionQueryParameter(
            organizationsLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (state != null) r'state': encodeQueryParameter(state),
      if (statesLeftSquareBracketRightSquareBracket != null)
        r'states[]': encodeCollectionQueryParameter(
            statesLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (page != null) r'page': encodeQueryParameter(page),
      if (limit != null) r'limit': encodeQueryParameter(limit),
    };

    final response = await _apiClient.dio.request<Object>(
      path,
      options: options,
      queryParameters: queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    DocumentPagination responseData;

    try {
      responseData = await _apiClient.deserializeAsync<DocumentPagination>(
          response.data!, 'DocumentPagination');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<DocumentPagination>(
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

  /// Retrieve all Membership resources.
  ///
  ///
  /// Parameters:
  /// * [xKeyclicApp]
  /// * [person] - The identifier of the resource.
  /// * [acceptLanguage]
  /// * [xDateTime]
  /// * [xKeyclicAppPlatform]
  /// * [xKeyclicAppVersion]
  /// * [orderLeftSquareBracketRightSquareBracket]
  /// * [after]
  /// * [before]
  /// * [organization]
  /// * [organizationsLeftSquareBracketRightSquareBracket]
  /// * [permission]
  /// * [query]
  /// * [role]
  /// * [rolesLeftSquareBracketRightSquareBracket]
  /// * [type]
  /// * [page] - Page of the overview.
  /// * [limit] - Page of the overview.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [MemberPagination] as data
  /// Throws [DioError] if API call or serialization fails
  /// Keyclic API documentation.
  /// Also see [Retrieve all Membership resources. Documentation](https://docs.keyclic.com/fr/master/overview.html)
  Future<Response<MemberPagination>> cgetMembershipsByPerson({
    required String xKeyclicApp,
    required String person,
    String? acceptLanguage,
    DateTime? xDateTime,
    String? xKeyclicAppPlatform,
    String? xKeyclicAppVersion,
    List<String>? orderLeftSquareBracketRightSquareBracket,
    DateTime? after,
    DateTime? before,
    String? organization,
    List<String>? organizationsLeftSquareBracketRightSquareBracket,
    String? permission,
    String? query,
    String? role,
    List<String>? rolesLeftSquareBracketRightSquareBracket,
    String? type,
    int? page,
    int? limit,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final String path = r'/people/{person}/memberships'
        .replaceAll('{' r'person' '}', person.toString());
    final options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        // to string ??
        if (acceptLanguage != null) r'accept-language': acceptLanguage,
        if (xDateTime != null) r'x-date-time': xDateTime,
        r'x-keyclic-app': xKeyclicApp,
        if (xKeyclicAppPlatform != null)
          r'x-keyclic-app-platform': xKeyclicAppPlatform,
        if (xKeyclicAppVersion != null)
          r'x-keyclic-app-version': xKeyclicAppVersion,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'bearer',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final queryParameters = <String, dynamic>{
      if (orderLeftSquareBracketRightSquareBracket != null)
        r'order[]': encodeCollectionQueryParameter(
            orderLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (after != null) r'after': encodeQueryParameter(after),
      if (before != null) r'before': encodeQueryParameter(before),
      if (organization != null)
        r'organization': encodeQueryParameter(organization),
      if (organizationsLeftSquareBracketRightSquareBracket != null)
        r'organizations[]': encodeCollectionQueryParameter(
            organizationsLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (permission != null) r'permission': encodeQueryParameter(permission),
      if (query != null) r'query': encodeQueryParameter(query),
      if (role != null) r'role': encodeQueryParameter(role),
      if (rolesLeftSquareBracketRightSquareBracket != null)
        r'roles[]': encodeCollectionQueryParameter(
            rolesLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (type != null) r'type': encodeQueryParameter(type),
      if (page != null) r'page': encodeQueryParameter(page),
      if (limit != null) r'limit': encodeQueryParameter(limit),
    };

    final response = await _apiClient.dio.request<Object>(
      path,
      options: options,
      queryParameters: queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    MemberPagination responseData;

    try {
      responseData = await _apiClient.deserializeAsync<MemberPagination>(
          response.data!, 'MemberPagination');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<MemberPagination>(
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

  /// Retrieve all Operation resources.
  ///
  ///
  /// Parameters:
  /// * [xKeyclicApp]
  /// * [person] - The identifier of the resource.
  /// * [acceptLanguage]
  /// * [xDateTime]
  /// * [xKeyclicAppPlatform]
  /// * [xKeyclicAppVersion]
  /// * [orderLeftSquareBracketRightSquareBracket]
  /// * [archived]
  /// * [asset]
  /// * [assetsLeftSquareBracketRightSquareBracket]
  /// * [assignedTo]
  /// * [assignedTosLeftSquareBracketRightSquareBracket]
  /// * [batch]
  /// * [batchesLeftSquareBracketRightSquareBracket]
  /// * [category]
  /// * [categoriesLeftSquareBracketRightSquareBracket]
  /// * [createdBy]
  /// * [createdBiesLeftSquareBracketRightSquareBracket]
  /// * [after]
  /// * [before]
  /// * [deep]
  /// * [delegatedTo]
  /// * [delegatedTosLeftSquareBracketRightSquareBracket]
  /// * [hasDocuments]
  /// * [isNull]
  /// * [leaf]
  /// * [level]
  /// * [managedBy]
  /// * [managedBiesLeftSquareBracketRightSquareBracket]
  /// * [member]
  /// * [membersLeftSquareBracketRightSquareBracket]
  /// * [operationStateAll]
  /// * [operationState]
  /// * [operationStatesLeftSquareBracketRightSquareBracket]
  /// * [organization]
  /// * [organizationsLeftSquareBracketRightSquareBracket]
  /// * [phase]
  /// * [phasesLeftSquareBracketRightSquareBracket]
  /// * [place]
  /// * [placesLeftSquareBracketRightSquareBracket]
  /// * [priority]
  /// * [prioritiesLeftSquareBracketRightSquareBracket]
  /// * [query]
  /// * [ratingLeftSquareBracketRightSquareBracket]
  /// * [scheduledAtAfter]
  /// * [scheduledAtBefore]
  /// * [state]
  /// * [statesLeftSquareBracketRightSquareBracket]
  /// * [visibilityLeftSquareBracketRightSquareBracket]
  /// * [page] - Page of the overview.
  /// * [limit] - Page of the overview.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [OperationPagination] as data
  /// Throws [DioError] if API call or serialization fails
  /// Keyclic API documentation.
  /// Also see [Retrieve all Operation resources. Documentation](https://docs.keyclic.com/fr/master/overview.html)
  Future<Response<OperationPagination>> cgetOperationsByPerson({
    required String xKeyclicApp,
    required String person,
    String? acceptLanguage,
    DateTime? xDateTime,
    String? xKeyclicAppPlatform,
    String? xKeyclicAppVersion,
    List<String>? orderLeftSquareBracketRightSquareBracket,
    String? archived,
    String? asset,
    List<String>? assetsLeftSquareBracketRightSquareBracket,
    String? assignedTo,
    List<String>? assignedTosLeftSquareBracketRightSquareBracket,
    String? batch,
    List<String>? batchesLeftSquareBracketRightSquareBracket,
    String? category,
    List<String>? categoriesLeftSquareBracketRightSquareBracket,
    String? createdBy,
    List<String>? createdBiesLeftSquareBracketRightSquareBracket,
    DateTime? after,
    DateTime? before,
    String? deep,
    String? delegatedTo,
    List<String>? delegatedTosLeftSquareBracketRightSquareBracket,
    String? hasDocuments,
    String? isNull,
    String? leaf,
    String? level,
    String? managedBy,
    List<String>? managedBiesLeftSquareBracketRightSquareBracket,
    String? member,
    List<String>? membersLeftSquareBracketRightSquareBracket,
    String? operationStateAll,
    String? operationState,
    List<String>? operationStatesLeftSquareBracketRightSquareBracket,
    String? organization,
    List<String>? organizationsLeftSquareBracketRightSquareBracket,
    String? phase,
    List<String>? phasesLeftSquareBracketRightSquareBracket,
    String? place,
    List<String>? placesLeftSquareBracketRightSquareBracket,
    String? priority,
    List<String>? prioritiesLeftSquareBracketRightSquareBracket,
    String? query,
    List<String>? ratingLeftSquareBracketRightSquareBracket,
    DateTime? scheduledAtAfter,
    DateTime? scheduledAtBefore,
    String? state,
    List<String>? statesLeftSquareBracketRightSquareBracket,
    List<String>? visibilityLeftSquareBracketRightSquareBracket,
    int? page,
    int? limit,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final String path = r'/people/{person}/operations'
        .replaceAll('{' r'person' '}', person.toString());
    final options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        // to string ??
        if (acceptLanguage != null) r'accept-language': acceptLanguage,
        if (xDateTime != null) r'x-date-time': xDateTime,
        r'x-keyclic-app': xKeyclicApp,
        if (xKeyclicAppPlatform != null)
          r'x-keyclic-app-platform': xKeyclicAppPlatform,
        if (xKeyclicAppVersion != null)
          r'x-keyclic-app-version': xKeyclicAppVersion,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'bearer',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final queryParameters = <String, dynamic>{
      if (orderLeftSquareBracketRightSquareBracket != null)
        r'order[]': encodeCollectionQueryParameter(
            orderLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (archived != null) r'archived': encodeQueryParameter(archived),
      if (asset != null) r'asset': encodeQueryParameter(asset),
      if (assetsLeftSquareBracketRightSquareBracket != null)
        r'assets[]': encodeCollectionQueryParameter(
            assetsLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (assignedTo != null) r'assigned_to': encodeQueryParameter(assignedTo),
      if (assignedTosLeftSquareBracketRightSquareBracket != null)
        r'assigned_tos[]': encodeCollectionQueryParameter(
            assignedTosLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (batch != null) r'batch': encodeQueryParameter(batch),
      if (batchesLeftSquareBracketRightSquareBracket != null)
        r'batches[]': encodeCollectionQueryParameter(
            batchesLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (category != null) r'category': encodeQueryParameter(category),
      if (categoriesLeftSquareBracketRightSquareBracket != null)
        r'categories[]': encodeCollectionQueryParameter(
            categoriesLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (createdBy != null) r'created_by': encodeQueryParameter(createdBy),
      if (createdBiesLeftSquareBracketRightSquareBracket != null)
        r'created_bies[]': encodeCollectionQueryParameter(
            createdBiesLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (after != null) r'after': encodeQueryParameter(after),
      if (before != null) r'before': encodeQueryParameter(before),
      if (deep != null) r'deep': encodeQueryParameter(deep),
      if (delegatedTo != null)
        r'delegated_to': encodeQueryParameter(delegatedTo),
      if (delegatedTosLeftSquareBracketRightSquareBracket != null)
        r'delegated_tos[]': encodeCollectionQueryParameter(
            delegatedTosLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (hasDocuments != null)
        r'has_documents': encodeQueryParameter(hasDocuments),
      if (isNull != null) r'is_null': encodeQueryParameter(isNull),
      if (leaf != null) r'leaf': encodeQueryParameter(leaf),
      if (level != null) r'level': encodeQueryParameter(level),
      if (managedBy != null) r'managed_by': encodeQueryParameter(managedBy),
      if (managedBiesLeftSquareBracketRightSquareBracket != null)
        r'managed_bies[]': encodeCollectionQueryParameter(
            managedBiesLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (member != null) r'member': encodeQueryParameter(member),
      if (membersLeftSquareBracketRightSquareBracket != null)
        r'members[]': encodeCollectionQueryParameter(
            membersLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (operationStateAll != null)
        r'operation_state_all': encodeQueryParameter(operationStateAll),
      if (operationState != null)
        r'operation_state': encodeQueryParameter(operationState),
      if (operationStatesLeftSquareBracketRightSquareBracket != null)
        r'operation_states[]': encodeCollectionQueryParameter(
            operationStatesLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (organization != null)
        r'organization': encodeQueryParameter(organization),
      if (organizationsLeftSquareBracketRightSquareBracket != null)
        r'organizations[]': encodeCollectionQueryParameter(
            organizationsLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (phase != null) r'phase': encodeQueryParameter(phase),
      if (phasesLeftSquareBracketRightSquareBracket != null)
        r'phases[]': encodeCollectionQueryParameter(
            phasesLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (place != null) r'place': encodeQueryParameter(place),
      if (placesLeftSquareBracketRightSquareBracket != null)
        r'places[]': encodeCollectionQueryParameter(
            placesLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (priority != null) r'priority': encodeQueryParameter(priority),
      if (prioritiesLeftSquareBracketRightSquareBracket != null)
        r'priorities[]': encodeCollectionQueryParameter(
            prioritiesLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (query != null) r'query': encodeQueryParameter(query),
      if (ratingLeftSquareBracketRightSquareBracket != null)
        r'rating[]': encodeCollectionQueryParameter(
            ratingLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (scheduledAtAfter != null)
        r'scheduled_at_after': encodeQueryParameter(scheduledAtAfter),
      if (scheduledAtBefore != null)
        r'scheduled_at_before': encodeQueryParameter(scheduledAtBefore),
      if (state != null) r'state': encodeQueryParameter(state),
      if (statesLeftSquareBracketRightSquareBracket != null)
        r'states[]': encodeCollectionQueryParameter(
            statesLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (visibilityLeftSquareBracketRightSquareBracket != null)
        r'visibility[]': encodeCollectionQueryParameter(
            visibilityLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (page != null) r'page': encodeQueryParameter(page),
      if (limit != null) r'limit': encodeQueryParameter(limit),
    };

    final response = await _apiClient.dio.request<Object>(
      path,
      options: options,
      queryParameters: queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    OperationPagination responseData;

    try {
      responseData = await _apiClient.deserializeAsync<OperationPagination>(
          response.data!, 'OperationPagination');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<OperationPagination>(
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

  /// Retrieve all ReviewRequest resources.
  ///
  ///
  /// Parameters:
  /// * [xKeyclicApp]
  /// * [person] - The identifier of the resource.
  /// * [acceptLanguage]
  /// * [xDateTime]
  /// * [xKeyclicAppPlatform]
  /// * [xKeyclicAppVersion]
  /// * [orderLeftSquareBracketRightSquareBracket]
  /// * [after]
  /// * [before]
  /// * [hasReview]
  /// * [page] - Page of the overview.
  /// * [limit] - Page of the overview.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ReviewRequestPagination] as data
  /// Throws [DioError] if API call or serialization fails
  /// Keyclic API documentation.
  /// Also see [Retrieve all ReviewRequest resources. Documentation](https://docs.keyclic.com/fr/master/overview.html)
  Future<Response<ReviewRequestPagination>> cgetReviewRequestsByPerson({
    required String xKeyclicApp,
    required String person,
    String? acceptLanguage,
    DateTime? xDateTime,
    String? xKeyclicAppPlatform,
    String? xKeyclicAppVersion,
    List<String>? orderLeftSquareBracketRightSquareBracket,
    DateTime? after,
    DateTime? before,
    String? hasReview,
    int? page,
    int? limit,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final String path = r'/people/{person}/review-requests'
        .replaceAll('{' r'person' '}', person.toString());
    final options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        // to string ??
        if (acceptLanguage != null) r'accept-language': acceptLanguage,
        if (xDateTime != null) r'x-date-time': xDateTime,
        r'x-keyclic-app': xKeyclicApp,
        if (xKeyclicAppPlatform != null)
          r'x-keyclic-app-platform': xKeyclicAppPlatform,
        if (xKeyclicAppVersion != null)
          r'x-keyclic-app-version': xKeyclicAppVersion,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'bearer',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final queryParameters = <String, dynamic>{
      if (orderLeftSquareBracketRightSquareBracket != null)
        r'order[]': encodeCollectionQueryParameter(
            orderLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (after != null) r'after': encodeQueryParameter(after),
      if (before != null) r'before': encodeQueryParameter(before),
      if (hasReview != null) r'has_review': encodeQueryParameter(hasReview),
      if (page != null) r'page': encodeQueryParameter(page),
      if (limit != null) r'limit': encodeQueryParameter(limit),
    };

    final response = await _apiClient.dio.request<Object>(
      path,
      options: options,
      queryParameters: queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ReviewRequestPagination responseData;

    try {
      responseData = await _apiClient.deserializeAsync<ReviewRequestPagination>(
          response.data!, 'ReviewRequestPagination');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<ReviewRequestPagination>(
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

  /// Remove one Person resource.
  ///
  ///
  /// Parameters:
  /// * [xKeyclicApp]
  /// * [person] - The identifier of the resource.
  /// * [acceptLanguage]
  /// * [xDateTime]
  /// * [xKeyclicAppPlatform]
  /// * [xKeyclicAppVersion]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  /// Keyclic API documentation.
  /// Also see [Remove one Person resource. Documentation](https://docs.keyclic.com/fr/master/overview.html)
  Future<Response<void>> deletePerson({
    required String xKeyclicApp,
    required String person,
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
    final String path =
        r'/people/{person}'.replaceAll('{' r'person' '}', person.toString());
    final options = Options(
      method: r'DELETE',
      headers: <String, dynamic>{
        // to string ??
        if (acceptLanguage != null) r'accept-language': acceptLanguage,
        if (xDateTime != null) r'x-date-time': xDateTime,
        r'x-keyclic-app': xKeyclicApp,
        if (xKeyclicAppPlatform != null)
          r'x-keyclic-app-platform': xKeyclicAppPlatform,
        if (xKeyclicAppVersion != null)
          r'x-keyclic-app-version': xKeyclicAppVersion,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'bearer',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    return _apiClient.dio.request<Object>(
      path,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  /// Retrieve one Feed resource.
  ///
  ///
  /// Parameters:
  /// * [xKeyclicApp]
  /// * [person] - The identifier of the resource.
  /// * [acceptLanguage]
  /// * [xDateTime]
  /// * [xKeyclicAppPlatform]
  /// * [xKeyclicAppVersion]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Feed] as data
  /// Throws [DioError] if API call or serialization fails
  /// Keyclic API documentation.
  /// Also see [Retrieve one Feed resource. Documentation](https://docs.keyclic.com/fr/master/overview.html)
  Future<Response<Feed>> getFeedByPerson({
    required String xKeyclicApp,
    required String person,
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
    final String path = r'/people/{person}/feed'
        .replaceAll('{' r'person' '}', person.toString());
    final options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        // to string ??
        if (acceptLanguage != null) r'accept-language': acceptLanguage,
        if (xDateTime != null) r'x-date-time': xDateTime,
        r'x-keyclic-app': xKeyclicApp,
        if (xKeyclicAppPlatform != null)
          r'x-keyclic-app-platform': xKeyclicAppPlatform,
        if (xKeyclicAppVersion != null)
          r'x-keyclic-app-version': xKeyclicAppVersion,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'bearer',
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

    Feed responseData;

    try {
      responseData =
          await _apiClient.deserializeAsync<Feed>(response.data!, 'Feed');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<Feed>(
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

  /// Retrieve one Person resource.
  ///
  ///
  /// Parameters:
  /// * [xKeyclicApp]
  /// * [person] - The identifier of the resource.
  /// * [acceptLanguage]
  /// * [xDateTime]
  /// * [xKeyclicAppPlatform]
  /// * [xKeyclicAppVersion]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Person] as data
  /// Throws [DioError] if API call or serialization fails
  /// Keyclic API documentation.
  /// Also see [Retrieve one Person resource. Documentation](https://docs.keyclic.com/fr/master/overview.html)
  Future<Response<Person>> getPerson({
    required String xKeyclicApp,
    required String person,
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
    final String path =
        r'/people/{person}'.replaceAll('{' r'person' '}', person.toString());
    final options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        // to string ??
        if (acceptLanguage != null) r'accept-language': acceptLanguage,
        if (xDateTime != null) r'x-date-time': xDateTime,
        r'x-keyclic-app': xKeyclicApp,
        if (xKeyclicAppPlatform != null)
          r'x-keyclic-app-platform': xKeyclicAppPlatform,
        if (xKeyclicAppVersion != null)
          r'x-keyclic-app-version': xKeyclicAppVersion,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'bearer',
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

    Person responseData;

    try {
      responseData =
          await _apiClient.deserializeAsync<Person>(response.data!, 'Person');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<Person>(
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

  /// Edit one Person resource.
  ///
  ///
  /// Parameters:
  /// * [xKeyclicApp]
  /// * [person] - The identifier of the resource.
  /// * [personPatch]
  /// * [acceptLanguage]
  /// * [xDateTime]
  /// * [xKeyclicAppPlatform]
  /// * [xKeyclicAppVersion]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Person] as data
  /// Throws [DioError] if API call or serialization fails
  /// Keyclic API documentation.
  /// Also see [Edit one Person resource. Documentation](https://docs.keyclic.com/fr/master/overview.html)
  Future<Response<Person>> patchPerson({
    required String xKeyclicApp,
    required String person,
    required PersonPatch personPatch,
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
    final String path =
        r'/people/{person}'.replaceAll('{' r'person' '}', person.toString());
    final options = Options(
      method: r'PATCH',
      headers: <String, dynamic>{
        // to string ??
        if (acceptLanguage != null) r'accept-language': acceptLanguage,
        if (xDateTime != null) r'x-date-time': xDateTime,
        r'x-keyclic-app': xKeyclicApp,
        if (xKeyclicAppPlatform != null)
          r'x-keyclic-app-platform': xKeyclicAppPlatform,
        if (xKeyclicAppVersion != null)
          r'x-keyclic-app-version': xKeyclicAppVersion,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'bearer',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      contentType: 'application/json;charset=UTF-8',
      validateStatus: validateStatus,
    );

    dynamic bodyData;

    try {
      bodyData = personPatch.toJson();
      // bodyData = jsonEncode(personPatch);
      // bodyData = jsonDecode(jsonEncode(personPatch));
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: options.compose(
          _apiClient.dio.options,
          path,
        ),
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    final response = await _apiClient.dio.request<Object>(
      path,
      data: bodyData,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Person responseData;

    try {
      responseData =
          await _apiClient.deserializeAsync<Person>(response.data!, 'Person');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<Person>(
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
