//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class IntegrationLinkApi {
  const IntegrationLinkApi(this._apiClient);

  final ApiPlatformClient _apiClient;

  /// Removes the IntegrationLink resource.
  /// Removes the IntegrationLink resource.
  ///
  /// Parameters:
  /// * [identifier] - Link identifier
  /// * [acceptLanguage] -
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> deleteIntegrationLink({
    required String identifier,
    String? acceptLanguage,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final String path = r'/integration-links/{identifier}'
        .replaceAll('{' r'identifier' '}', identifier.toString());
    final options = Options(
      method: r'DELETE',
      headers: <String, dynamic>{
        // to string ??
        if (acceptLanguage != null) r'Accept-Language': acceptLanguage,
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

    return _apiClient.dio.request<Object>(
      path,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  /// Retrieves a IntegrationLink resource.
  /// Retrieves a IntegrationLink resource.
  ///
  /// Parameters:
  /// * [identifier] - Link identifier
  /// * [acceptLanguage] -
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IntegrationLinkJsonhalRead] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IntegrationLinkJsonhalRead>> getIntegrationLink({
    required String identifier,
    String? acceptLanguage,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final String path = r'/integration-links/{identifier}'
        .replaceAll('{' r'identifier' '}', identifier.toString());
    final options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        // to string ??
        if (acceptLanguage != null) r'Accept-Language': acceptLanguage,
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

    IntegrationLinkJsonhalRead responseData;

    try {
      responseData =
          await _apiClient.deserializeAsync<IntegrationLinkJsonhalRead>(
              response.data!, 'IntegrationLinkJsonhalRead');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IntegrationLinkJsonhalRead>(
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

  /// Retrieves the collection of IntegrationLink resources.
  /// Retrieves the collection of IntegrationLink resources.
  ///
  /// Parameters:
  /// * [page] - The collection page number
  /// * [limit] - The number of items per page
  /// * [pagination] - Enable or disable pagination
  /// * [existsLeftSquareBracketTargetRightSquareBracket] -
  /// * [jsonData] -
  /// * [jsonMetadata] -
  /// * [integration] -
  /// * [integrationLeftSquareBracketRightSquareBracket] -
  /// * [source_] -
  /// * [sourceLeftSquareBracketRightSquareBracket] -
  /// * [state] -
  /// * [stateLeftSquareBracketRightSquareBracket] -
  /// * [target] -
  /// * [targetLeftSquareBracketRightSquareBracket] -
  /// * [acceptLanguage] -
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GetIntegrationLinkCollection200Response] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GetIntegrationLinkCollection200Response>>
      getIntegrationLinkCollection({
    int? page,
    int? limit,
    bool? pagination,
    bool? existsLeftSquareBracketTargetRightSquareBracket,
    List<String>? jsonData,
    List<String>? jsonMetadata,
    String? integration,
    List<String>? integrationLeftSquareBracketRightSquareBracket,
    String? source_,
    List<String>? sourceLeftSquareBracketRightSquareBracket,
    String? state,
    List<String>? stateLeftSquareBracketRightSquareBracket,
    String? target,
    List<String>? targetLeftSquareBracketRightSquareBracket,
    String? acceptLanguage,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final String path = r'/integration-links';
    final options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        // to string ??
        if (acceptLanguage != null) r'Accept-Language': acceptLanguage,
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
      if (existsLeftSquareBracketTargetRightSquareBracket != null)
        r'exists[target]': encodeQueryParameter(
            existsLeftSquareBracketTargetRightSquareBracket),
      if (jsonData != null)
        r'json_data':
            encodeCollectionQueryParameter(jsonData, format: ListFormat.csv),
      if (jsonMetadata != null)
        r'json_metadata': encodeCollectionQueryParameter(jsonMetadata,
            format: ListFormat.csv),
      if (integration != null)
        r'integration': encodeQueryParameter(integration),
      if (integrationLeftSquareBracketRightSquareBracket != null)
        r'integration[]': encodeCollectionQueryParameter(
            integrationLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (source_ != null) r'source': encodeQueryParameter(source_),
      if (sourceLeftSquareBracketRightSquareBracket != null)
        r'source[]': encodeCollectionQueryParameter(
            sourceLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (state != null) r'state': encodeQueryParameter(state),
      if (stateLeftSquareBracketRightSquareBracket != null)
        r'state[]': encodeCollectionQueryParameter(
            stateLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (target != null) r'target': encodeQueryParameter(target),
      if (targetLeftSquareBracketRightSquareBracket != null)
        r'target[]': encodeCollectionQueryParameter(
            targetLeftSquareBracketRightSquareBracket,
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

    GetIntegrationLinkCollection200Response responseData;

    try {
      responseData = await _apiClient
          .deserializeAsync<GetIntegrationLinkCollection200Response>(
              response.data!, 'GetIntegrationLinkCollection200Response');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<GetIntegrationLinkCollection200Response>(
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

  /// Updates the IntegrationLink resource.
  /// Updates the IntegrationLink resource.
  ///
  /// Parameters:
  /// * [identifier] - Link identifier
  /// * [integrationLinkEditLinkCommandWrite] - The updated IntegrationLink resource
  /// * [acceptLanguage] -
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IntegrationLinkJsonhalRead] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IntegrationLinkJsonhalRead>> patchIntegrationLink({
    required String identifier,
    required IntegrationLinkEditLinkCommandWrite
        integrationLinkEditLinkCommandWrite,
    String? acceptLanguage,
    Iterable<String>? bodyParameters,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final String path = r'/integration-links/{identifier}'
        .replaceAll('{' r'identifier' '}', identifier.toString());
    final options = Options(
      method: r'PATCH',
      headers: <String, dynamic>{
        // to string ??
        if (acceptLanguage != null) r'Accept-Language': acceptLanguage,
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
      contentType: 'application/merge-patch+json',
      validateStatus: validateStatus,
    );

    dynamic bodyData;

    try {
      bodyData = integrationLinkEditLinkCommandWrite.toJson(bodyParameters);
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

    IntegrationLinkJsonhalRead responseData;

    try {
      responseData =
          await _apiClient.deserializeAsync<IntegrationLinkJsonhalRead>(
              response.data!, 'IntegrationLinkJsonhalRead');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IntegrationLinkJsonhalRead>(
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

  /// Creates a IntegrationLink resource.
  /// Creates a IntegrationLink resource.
  ///
  /// Parameters:
  /// * [integrationLinkCreateLinkCommandWrite] - The new IntegrationLink resource
  /// * [acceptLanguage] -
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IntegrationLinkJsonhalRead] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IntegrationLinkJsonhalRead>> postIntegrationLink({
    required IntegrationLinkCreateLinkCommandWrite
        integrationLinkCreateLinkCommandWrite,
    String? acceptLanguage,
    Iterable<String>? bodyParameters,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final String path = r'/integration-links';
    final options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        // to string ??
        if (acceptLanguage != null) r'Accept-Language': acceptLanguage,
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
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic bodyData;

    try {
      bodyData = integrationLinkCreateLinkCommandWrite.toJson(bodyParameters);
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

    IntegrationLinkJsonhalRead responseData;

    try {
      responseData =
          await _apiClient.deserializeAsync<IntegrationLinkJsonhalRead>(
              response.data!, 'IntegrationLinkJsonhalRead');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IntegrationLinkJsonhalRead>(
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
