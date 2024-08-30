//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class BusinessHoursApi {
  const BusinessHoursApi(this._apiClient);

  final ApiPlatformClient _apiClient;

  /// Retrieves a BusinessHours resource.
  /// Retrieves a BusinessHours resource.
  ///
  /// Parameters:
  /// * [identifier] - BusinessHours identifier
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
  /// Returns a [Future] containing a [Response] with a [BusinessHoursJsonhalRead] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BusinessHoursJsonhalRead>> getBusinessHours({
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
    final String path = r'/business-hours/{identifier}'
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

    BusinessHoursJsonhalRead responseData;

    try {
      responseData =
          await _apiClient.deserializeAsync<BusinessHoursJsonhalRead>(
              response.data!, 'BusinessHoursJsonhalRead');
    } catch (error, stackTrace) {
      throw DioException(
        error: error,
        requestOptions: response.requestOptions,
        response: response,
        stackTrace: stackTrace,
        type: DioExceptionType.unknown,
      );
    }

    return Response<BusinessHoursJsonhalRead>(
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

  /// Retrieves the collection of BusinessHours resources.
  /// Retrieves the collection of BusinessHours resources.
  ///
  /// Parameters:
  /// * [xKeyclicApp] -
  /// * [xOrganizationId] -
  /// * [page] - The collection page number
  /// * [limit] - The number of items per page
  /// * [pagination] - Enable or disable pagination
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
  /// Returns a [Future] containing a [Response] with a [GetBusinessHoursCollection200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<GetBusinessHoursCollection200Response>>
      getBusinessHoursCollection({
    required String xKeyclicApp,
    required String xOrganizationId,
    int? page,
    int? limit,
    bool? pagination,
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
    final String path = r'/business-hours';
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
    };

    final response = await _apiClient.dio.request<Object>(
      path,
      options: options,
      queryParameters: queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    GetBusinessHoursCollection200Response responseData;

    try {
      responseData = await _apiClient
          .deserializeAsync<GetBusinessHoursCollection200Response>(
              response.data!, 'GetBusinessHoursCollection200Response');
    } catch (error, stackTrace) {
      throw DioException(
        error: error,
        requestOptions: response.requestOptions,
        response: response,
        stackTrace: stackTrace,
        type: DioExceptionType.unknown,
      );
    }

    return Response<GetBusinessHoursCollection200Response>(
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
