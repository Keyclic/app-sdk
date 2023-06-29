//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class WorkflowStateApi {
  const WorkflowStateApi(this._apiClient);

  final ApiPlatformClient _apiClient;

  /// Retrieves a WorkflowState resource.
  /// Retrieves a WorkflowState resource.
  ///
  /// Parameters:
  /// * [identifier] - State identifier
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
  /// Returns a [Future] containing a [Response] with a [WorkflowStateJsonhalRead] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<WorkflowStateJsonhalRead>> getState({
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
    final String path = r'/workflow-states/{identifier}'
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

    WorkflowStateJsonhalRead responseData;

    try {
      responseData =
          await _apiClient.deserializeAsync<WorkflowStateJsonhalRead>(
              response.data!, 'WorkflowStateJsonhalRead');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<WorkflowStateJsonhalRead>(
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
