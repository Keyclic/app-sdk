//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class AssetApi {
  const AssetApi(this._apiClient);

  final ApiPlatformClient _apiClient;

  /// Retrieves a Asset resource.
  /// Retrieves a Asset resource.
  ///
  /// Parameters:
  /// * [identifier] - Asset identifier
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
  /// Returns a [Future] containing a [Response] with a [AssetJsonhalRead] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<AssetJsonhalRead>> getAsset({
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
    final String path = r'/assets/{identifier}'
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

    AssetJsonhalRead responseData;

    try {
      responseData = await _apiClient.deserializeAsync<AssetJsonhalRead>(
          response.data!, 'AssetJsonhalRead');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<AssetJsonhalRead>(
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

  /// Retrieves the collection of Asset resources.
  /// Retrieves the collection of Asset resources.
  ///
  /// Parameters:
  /// * [xKeyclicApp] -
  /// * [xOrganizationId] -
  /// * [page] - The collection page number
  /// * [limit] - The number of items per page
  /// * [pagination] - Enable or disable pagination
  /// * [search] -
  /// * [createdAtLeftSquareBracketBeforeRightSquareBracket] -
  /// * [createdAtLeftSquareBracketStrictlyBeforeRightSquareBracket] -
  /// * [createdAtLeftSquareBracketAfterRightSquareBracket] -
  /// * [createdAtLeftSquareBracketStrictlyAfterRightSquareBracket] -
  /// * [updatedAtLeftSquareBracketBeforeRightSquareBracket] -
  /// * [updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket] -
  /// * [updatedAtLeftSquareBracketAfterRightSquareBracket] -
  /// * [updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket] -
  /// * [resourceType] -
  /// * [orderLeftSquareBracketCreatedAtRightSquareBracket] -
  /// * [orderLeftSquareBracketNameRightSquareBracket] -
  /// * [orderLeftSquareBracketUpdatedAtRightSquareBracket] -
  /// * [propertiesLeftSquareBracketRightSquareBracket] - Allows you to reduce the response to contain only the properties you need. If your desired property is nested, you can address it using nested arrays. Example: properties[]={propertyName}&properties[]={anotherPropertyName}&properties[{nestedPropertyParent}][]={nestedProperty}
  /// * [contractsPeriodIdentifier] -
  /// * [contractsPeriodIdentifierLeftSquareBracketRightSquareBracket] -
  /// * [parentPeriodIdentifier] -
  /// * [parentPeriodIdentifierLeftSquareBracketRightSquareBracket] -
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
  /// Returns a [Future] containing a [Response] with a [GetAssets200Response] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GetAssets200Response>> getAssets({
    required String xKeyclicApp,
    required String xOrganizationId,
    int? page,
    int? limit,
    bool? pagination,
    String? search,
    String? createdAtLeftSquareBracketBeforeRightSquareBracket,
    String? createdAtLeftSquareBracketStrictlyBeforeRightSquareBracket,
    String? createdAtLeftSquareBracketAfterRightSquareBracket,
    String? createdAtLeftSquareBracketStrictlyAfterRightSquareBracket,
    String? updatedAtLeftSquareBracketBeforeRightSquareBracket,
    String? updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket,
    String? updatedAtLeftSquareBracketAfterRightSquareBracket,
    String? updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket,
    String? resourceType,
    String? orderLeftSquareBracketCreatedAtRightSquareBracket,
    String? orderLeftSquareBracketNameRightSquareBracket,
    String? orderLeftSquareBracketUpdatedAtRightSquareBracket,
    List<String>? propertiesLeftSquareBracketRightSquareBracket,
    String? contractsPeriodIdentifier,
    List<String>? contractsPeriodIdentifierLeftSquareBracketRightSquareBracket,
    String? parentPeriodIdentifier,
    List<String>? parentPeriodIdentifierLeftSquareBracketRightSquareBracket,
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
    final String path = r'/assets';
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
      if (search != null) r'search': encodeQueryParameter(search),
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
      if (resourceType != null)
        r'resourceType': encodeQueryParameter(resourceType),
      if (orderLeftSquareBracketCreatedAtRightSquareBracket != null)
        r'order[createdAt]': encodeQueryParameter(
            orderLeftSquareBracketCreatedAtRightSquareBracket),
      if (orderLeftSquareBracketNameRightSquareBracket != null)
        r'order[name]':
            encodeQueryParameter(orderLeftSquareBracketNameRightSquareBracket),
      if (orderLeftSquareBracketUpdatedAtRightSquareBracket != null)
        r'order[updatedAt]': encodeQueryParameter(
            orderLeftSquareBracketUpdatedAtRightSquareBracket),
      if (propertiesLeftSquareBracketRightSquareBracket != null)
        r'properties[]': encodeCollectionQueryParameter(
            propertiesLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (contractsPeriodIdentifier != null)
        r'contracts.identifier':
            encodeQueryParameter(contractsPeriodIdentifier),
      if (contractsPeriodIdentifierLeftSquareBracketRightSquareBracket != null)
        r'contracts.identifier[]': encodeCollectionQueryParameter(
            contractsPeriodIdentifierLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (parentPeriodIdentifier != null)
        r'parent.identifier': encodeQueryParameter(parentPeriodIdentifier),
      if (parentPeriodIdentifierLeftSquareBracketRightSquareBracket != null)
        r'parent.identifier[]': encodeCollectionQueryParameter(
            parentPeriodIdentifierLeftSquareBracketRightSquareBracket,
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

    GetAssets200Response responseData;

    try {
      responseData = await _apiClient.deserializeAsync<GetAssets200Response>(
          response.data!, 'GetAssets200Response');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<GetAssets200Response>(
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
