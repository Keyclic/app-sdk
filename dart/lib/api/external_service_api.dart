//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ExternalServiceApi {
  const ExternalServiceApi(this._apiClient);

  final ApiClient _apiClient;

  /// Remove one ExternalService resource.
  ///
  ///
  /// Parameters:
  /// * [xKeyclicApp]
  /// * [externalService] - The identifier of the resource.
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
  /// Throws [DioException] if API call or serialization fails
  /// Keyclic API documentation.
  /// Also see [Remove one ExternalService resource. Documentation](https://docs.keyclic.com/fr/master/overview.html)
  Future<Response<void>> deleteExternalService({
    required String xKeyclicApp,
    required String externalService,
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
    final String path = r'/external-services/{externalService}'
        .replaceAll('{' r'externalService' '}', externalService.toString());
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

  /// Retrieve one ExternalService resource.
  ///
  ///
  /// Parameters:
  /// * [xKeyclicApp]
  /// * [externalService] - The identifier of the resource.
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
  /// Returns a [Future] containing a [Response] with a [ExternalService] as data
  /// Throws [DioException] if API call or serialization fails
  /// Keyclic API documentation.
  /// Also see [Retrieve one ExternalService resource. Documentation](https://docs.keyclic.com/fr/master/overview.html)
  Future<Response<ExternalService>> getExternalService({
    required String xKeyclicApp,
    required String externalService,
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
    final String path = r'/external-services/{externalService}'
        .replaceAll('{' r'externalService' '}', externalService.toString());
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

    ExternalService responseData;

    try {
      responseData = await _apiClient.deserializeAsync<ExternalService>(
          response.data!, 'ExternalService');
    } catch (error, stackTrace) {
      throw DioException(
        error: error,
        requestOptions: response.requestOptions,
        response: response,
        stackTrace: stackTrace,
        type: DioExceptionType.unknown,
      );
    }

    return Response<ExternalService>(
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

  /// Edit one ExternalService resource.
  ///
  ///
  /// Parameters:
  /// * [xKeyclicApp]
  /// * [externalService] - The identifier of the resource.
  /// * [externalServicePatch]
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
  /// Returns a [Future] containing a [Response] with a [ExternalService] as data
  /// Throws [DioException] if API call or serialization fails
  /// Keyclic API documentation.
  /// Also see [Edit one ExternalService resource. Documentation](https://docs.keyclic.com/fr/master/overview.html)
  Future<Response<ExternalService>> patchExternalService({
    required String xKeyclicApp,
    required String externalService,
    required ExternalServicePatch externalServicePatch,
    String? acceptLanguage,
    DateTime? xDateTime,
    String? xKeyclicAppPlatform,
    String? xKeyclicAppVersion,
    Iterable<String>? bodyParameters,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final String path = r'/external-services/{externalService}'
        .replaceAll('{' r'externalService' '}', externalService.toString());
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
      bodyData = externalServicePatch.toJson(bodyParameters);
    } catch (error, stackTrace) {
      throw DioException(
        error: error,
        requestOptions: options.compose(
          _apiClient.dio.options,
          path,
        ),
        stackTrace: stackTrace,
        type: DioExceptionType.unknown,
      );
    }

    final response = await _apiClient.dio.request<Object>(
      path,
      data: bodyData,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ExternalService responseData;

    try {
      responseData = await _apiClient.deserializeAsync<ExternalService>(
          response.data!, 'ExternalService');
    } catch (error, stackTrace) {
      throw DioException(
        error: error,
        requestOptions: response.requestOptions,
        response: response,
        stackTrace: stackTrace,
        type: DioExceptionType.unknown,
      );
    }

    return Response<ExternalService>(
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

  /// Create one ExternalService resource.
  ///
  ///
  /// Parameters:
  /// * [xKeyclicApp]
  /// * [externalServiceData]
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
  /// Returns a [Future] containing a [Response] with a [ExternalService] as data
  /// Throws [DioException] if API call or serialization fails
  /// Keyclic API documentation.
  /// Also see [Create one ExternalService resource. Documentation](https://docs.keyclic.com/fr/master/overview.html)
  Future<Response<ExternalService>> postExternalService({
    required String xKeyclicApp,
    required ExternalServiceData externalServiceData,
    String? acceptLanguage,
    DateTime? xDateTime,
    String? xKeyclicAppPlatform,
    String? xKeyclicAppVersion,
    Iterable<String>? bodyParameters,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final String path = r'/external-services';
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

    dynamic bodyData;

    try {
      bodyData = externalServiceData.toJson(bodyParameters);
    } catch (error, stackTrace) {
      throw DioException(
        error: error,
        requestOptions: options.compose(
          _apiClient.dio.options,
          path,
        ),
        stackTrace: stackTrace,
        type: DioExceptionType.unknown,
      );
    }

    final response = await _apiClient.dio.request<Object>(
      path,
      data: bodyData,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ExternalService responseData;

    try {
      responseData = await _apiClient.deserializeAsync<ExternalService>(
          response.data!, 'ExternalService');
    } catch (error, stackTrace) {
      throw DioException(
        error: error,
        requestOptions: response.requestOptions,
        response: response,
        stackTrace: stackTrace,
        type: DioExceptionType.unknown,
      );
    }

    return Response<ExternalService>(
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
