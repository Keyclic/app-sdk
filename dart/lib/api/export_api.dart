//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ExportApi {
  const ExportApi(this._apiClient);

  final ApiClient _apiClient;

  /// Retrieve one Export resource.
  ///
  ///
  /// Parameters:
  /// * [xKeyclicApp]
  /// * [export_] - The identifier of the resource.
  /// * [acceptLanguage]
  /// * [xDateTime]
  /// * [xKeyclicAppPlatform]
  /// * [xKeyclicAppVersion]
  /// * [after]
  /// * [before]
  /// * [orderLeftSquareBracketRightSquareBracket]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ModelExport] as data
  /// Throws [DioError] if API call or serialization fails
  /// Keyclic API documentation.
  /// Also see [Retrieve one Export resource. Documentation](https://docs.keyclic.com/fr/master/overview.html)
  Future<Response<ModelExport>> getExport({
    required String xKeyclicApp,
    required String export_,
    String? acceptLanguage,
    DateTime? xDateTime,
    String? xKeyclicAppPlatform,
    String? xKeyclicAppVersion,
    DateTime? after,
    DateTime? before,
    List<String>? orderLeftSquareBracketRightSquareBracket,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final String path =
        r'/exports/{export}'.replaceAll('{' r'export' '}', export_.toString());
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
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final queryParameters = <String, dynamic>{
      if (after != null) r'after': encodeQueryParameter(after),
      if (before != null) r'before': encodeQueryParameter(before),
      if (orderLeftSquareBracketRightSquareBracket != null)
        r'order[]': encodeCollectionQueryParameter(
            orderLeftSquareBracketRightSquareBracket,
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

    ModelExport responseData;

    try {
      responseData = await _apiClient.deserializeAsync<ModelExport>(
          response.data!, 'ModelExport');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<ModelExport>(
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

  /// Create one Export resource.
  ///
  ///
  /// Parameters:
  /// * [xKeyclicApp]
  /// * [exportData]
  /// * [acceptLanguage]
  /// * [xDateTime]
  /// * [xKeyclicAppPlatform]
  /// * [xKeyclicAppVersion]
  /// * [archived]
  /// * [asset]
  /// * [assetsLeftSquareBracketRightSquareBracket]
  /// * [batch]
  /// * [batchesLeftSquareBracketRightSquareBracket]
  /// * [category]
  /// * [categoriesLeftSquareBracketRightSquareBracket]
  /// * [createdBy]
  /// * [createdBiesLeftSquareBracketRightSquareBracket]
  /// * [afterDueBy]
  /// * [after]
  /// * [beforeDueBy]
  /// * [before]
  /// * [deep]
  /// * [delegatedTo]
  /// * [delegatedTosLeftSquareBracketRightSquareBracket]
  /// * [hasDocuments]
  /// * [isEmpty]
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
  /// * [orderLeftSquareBracketRightSquareBracket]
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
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ModelExport] as data
  /// Throws [DioError] if API call or serialization fails
  /// Keyclic API documentation.
  /// Also see [Create one Export resource. Documentation](https://docs.keyclic.com/fr/master/overview.html)
  Future<Response<ModelExport>> postExport({
    required String xKeyclicApp,
    required ExportData exportData,
    String? acceptLanguage,
    DateTime? xDateTime,
    String? xKeyclicAppPlatform,
    String? xKeyclicAppVersion,
    String? archived,
    String? asset,
    List<String>? assetsLeftSquareBracketRightSquareBracket,
    String? batch,
    List<String>? batchesLeftSquareBracketRightSquareBracket,
    String? category,
    List<String>? categoriesLeftSquareBracketRightSquareBracket,
    String? createdBy,
    List<String>? createdBiesLeftSquareBracketRightSquareBracket,
    DateTime? afterDueBy,
    DateTime? after,
    DateTime? beforeDueBy,
    DateTime? before,
    String? deep,
    String? delegatedTo,
    List<String>? delegatedTosLeftSquareBracketRightSquareBracket,
    String? hasDocuments,
    String? isEmpty,
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
    List<String>? orderLeftSquareBracketRightSquareBracket,
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
    List<String>? bodyParameters,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final String path = r'/exports';
    final options = Options(
      method: r'POST',
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

    final queryParameters = <String, dynamic>{
      if (archived != null) r'archived': encodeQueryParameter(archived),
      if (asset != null) r'asset': encodeQueryParameter(asset),
      if (assetsLeftSquareBracketRightSquareBracket != null)
        r'assets[]': encodeCollectionQueryParameter(
            assetsLeftSquareBracketRightSquareBracket,
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
      if (afterDueBy != null) r'afterDueBy': encodeQueryParameter(afterDueBy),
      if (after != null) r'after': encodeQueryParameter(after),
      if (beforeDueBy != null)
        r'beforeDueBy': encodeQueryParameter(beforeDueBy),
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
      if (isEmpty != null) r'is_empty': encodeQueryParameter(isEmpty),
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
      if (orderLeftSquareBracketRightSquareBracket != null)
        r'order[]': encodeCollectionQueryParameter(
            orderLeftSquareBracketRightSquareBracket,
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
    };

    dynamic bodyData;

    try {
      bodyData = exportData.toJson(bodyParameters);
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: options.compose(
          _apiClient.dio.options,
          path,
          queryParameters: queryParameters,
        ),
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    final response = await _apiClient.dio.request<Object>(
      path,
      data: bodyData,
      options: options,
      queryParameters: queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ModelExport responseData;

    try {
      responseData = await _apiClient.deserializeAsync<ModelExport>(
          response.data!, 'ModelExport');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<ModelExport>(
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
