//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ContractApi {
  const ContractApi(this._apiClient);

  final ApiPlatformClient _apiClient;

  /// Retrieves a Contract resource.
  /// Retrieves a Contract resource.
  ///
  /// Parameters:
  /// * [identifier] - Contract identifier
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
  /// Returns a [Future] containing a [Response] with a [ContractJsonhalRead] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<ContractJsonhalRead>> getContract({
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
    final String path = r'/contracts/{identifier}'
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

    ContractJsonhalRead responseData;

    try {
      responseData = await _apiClient.deserializeAsync<ContractJsonhalRead>(
          response.data!, 'ContractJsonhalRead');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<ContractJsonhalRead>(
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

  /// Retrieves the collection of Contract resources.
  /// Retrieves the collection of Contract resources.
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
  /// * [effectiveDateLeftSquareBracketBeforeRightSquareBracket] -
  /// * [effectiveDateLeftSquareBracketStrictlyBeforeRightSquareBracket] -
  /// * [effectiveDateLeftSquareBracketAfterRightSquareBracket] -
  /// * [effectiveDateLeftSquareBracketStrictlyAfterRightSquareBracket] -
  /// * [signedAtLeftSquareBracketBeforeRightSquareBracket] -
  /// * [signedAtLeftSquareBracketStrictlyBeforeRightSquareBracket] -
  /// * [signedAtLeftSquareBracketAfterRightSquareBracket] -
  /// * [signedAtLeftSquareBracketStrictlyAfterRightSquareBracket] -
  /// * [terminationDateLeftSquareBracketBeforeRightSquareBracket] -
  /// * [terminationDateLeftSquareBracketStrictlyBeforeRightSquareBracket] -
  /// * [terminationDateLeftSquareBracketAfterRightSquareBracket] -
  /// * [terminationDateLeftSquareBracketStrictlyAfterRightSquareBracket] -
  /// * [updatedAtLeftSquareBracketBeforeRightSquareBracket] -
  /// * [updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket] -
  /// * [updatedAtLeftSquareBracketAfterRightSquareBracket] -
  /// * [updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket] -
  /// * [orderLeftSquareBracketBillingPeriodAdjustedCostPeriodValueRightSquareBracket] -
  /// * [orderLeftSquareBracketBillingPeriodInitialCostPeriodValueRightSquareBracket] -
  /// * [orderLeftSquareBracketCreatedAtRightSquareBracket] -
  /// * [orderLeftSquareBracketEffectiveDateRightSquareBracket] -
  /// * [orderLeftSquareBracketNameRightSquareBracket] -
  /// * [orderLeftSquareBracketNumberRightSquareBracket] -
  /// * [orderLeftSquareBracketUpdatedAtRightSquareBracket] -
  /// * [orderLeftSquareBracketSignedAtRightSquareBracket] -
  /// * [orderLeftSquareBracketStateRightSquareBracket] -
  /// * [propertiesLeftSquareBracketRightSquareBracket] -
  /// * [onCall] -
  /// * [onCallLeftSquareBracketRightSquareBracket] -
  /// * [organizationPeriodIdentifier] -
  /// * [organizationPeriodIdentifierLeftSquareBracketRightSquareBracket] -
  /// * [providerPeriodIdentifier] -
  /// * [providerPeriodIdentifierLeftSquareBracketRightSquareBracket] -
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
  /// Returns a [Future] containing a [Response] with a [GetContracts200Response] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GetContracts200Response>> getContracts({
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
    String? effectiveDateLeftSquareBracketBeforeRightSquareBracket,
    String? effectiveDateLeftSquareBracketStrictlyBeforeRightSquareBracket,
    String? effectiveDateLeftSquareBracketAfterRightSquareBracket,
    String? effectiveDateLeftSquareBracketStrictlyAfterRightSquareBracket,
    String? signedAtLeftSquareBracketBeforeRightSquareBracket,
    String? signedAtLeftSquareBracketStrictlyBeforeRightSquareBracket,
    String? signedAtLeftSquareBracketAfterRightSquareBracket,
    String? signedAtLeftSquareBracketStrictlyAfterRightSquareBracket,
    String? terminationDateLeftSquareBracketBeforeRightSquareBracket,
    String? terminationDateLeftSquareBracketStrictlyBeforeRightSquareBracket,
    String? terminationDateLeftSquareBracketAfterRightSquareBracket,
    String? terminationDateLeftSquareBracketStrictlyAfterRightSquareBracket,
    String? updatedAtLeftSquareBracketBeforeRightSquareBracket,
    String? updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket,
    String? updatedAtLeftSquareBracketAfterRightSquareBracket,
    String? updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket,
    String?
        orderLeftSquareBracketBillingPeriodAdjustedCostPeriodValueRightSquareBracket,
    String?
        orderLeftSquareBracketBillingPeriodInitialCostPeriodValueRightSquareBracket,
    String? orderLeftSquareBracketCreatedAtRightSquareBracket,
    String? orderLeftSquareBracketEffectiveDateRightSquareBracket,
    String? orderLeftSquareBracketNameRightSquareBracket,
    String? orderLeftSquareBracketNumberRightSquareBracket,
    String? orderLeftSquareBracketUpdatedAtRightSquareBracket,
    String? orderLeftSquareBracketSignedAtRightSquareBracket,
    String? orderLeftSquareBracketStateRightSquareBracket,
    List<String>? propertiesLeftSquareBracketRightSquareBracket,
    bool? onCall,
    List<bool>? onCallLeftSquareBracketRightSquareBracket,
    String? organizationPeriodIdentifier,
    List<String>?
        organizationPeriodIdentifierLeftSquareBracketRightSquareBracket,
    String? providerPeriodIdentifier,
    List<String>? providerPeriodIdentifierLeftSquareBracketRightSquareBracket,
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
    final String path = r'/contracts';
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
      if (effectiveDateLeftSquareBracketBeforeRightSquareBracket != null)
        r'effectiveDate[before]': encodeQueryParameter(
            effectiveDateLeftSquareBracketBeforeRightSquareBracket),
      if (effectiveDateLeftSquareBracketStrictlyBeforeRightSquareBracket !=
          null)
        r'effectiveDate[strictly_before]': encodeQueryParameter(
            effectiveDateLeftSquareBracketStrictlyBeforeRightSquareBracket),
      if (effectiveDateLeftSquareBracketAfterRightSquareBracket != null)
        r'effectiveDate[after]': encodeQueryParameter(
            effectiveDateLeftSquareBracketAfterRightSquareBracket),
      if (effectiveDateLeftSquareBracketStrictlyAfterRightSquareBracket != null)
        r'effectiveDate[strictly_after]': encodeQueryParameter(
            effectiveDateLeftSquareBracketStrictlyAfterRightSquareBracket),
      if (signedAtLeftSquareBracketBeforeRightSquareBracket != null)
        r'signedAt[before]': encodeQueryParameter(
            signedAtLeftSquareBracketBeforeRightSquareBracket),
      if (signedAtLeftSquareBracketStrictlyBeforeRightSquareBracket != null)
        r'signedAt[strictly_before]': encodeQueryParameter(
            signedAtLeftSquareBracketStrictlyBeforeRightSquareBracket),
      if (signedAtLeftSquareBracketAfterRightSquareBracket != null)
        r'signedAt[after]': encodeQueryParameter(
            signedAtLeftSquareBracketAfterRightSquareBracket),
      if (signedAtLeftSquareBracketStrictlyAfterRightSquareBracket != null)
        r'signedAt[strictly_after]': encodeQueryParameter(
            signedAtLeftSquareBracketStrictlyAfterRightSquareBracket),
      if (terminationDateLeftSquareBracketBeforeRightSquareBracket != null)
        r'terminationDate[before]': encodeQueryParameter(
            terminationDateLeftSquareBracketBeforeRightSquareBracket),
      if (terminationDateLeftSquareBracketStrictlyBeforeRightSquareBracket !=
          null)
        r'terminationDate[strictly_before]': encodeQueryParameter(
            terminationDateLeftSquareBracketStrictlyBeforeRightSquareBracket),
      if (terminationDateLeftSquareBracketAfterRightSquareBracket != null)
        r'terminationDate[after]': encodeQueryParameter(
            terminationDateLeftSquareBracketAfterRightSquareBracket),
      if (terminationDateLeftSquareBracketStrictlyAfterRightSquareBracket !=
          null)
        r'terminationDate[strictly_after]': encodeQueryParameter(
            terminationDateLeftSquareBracketStrictlyAfterRightSquareBracket),
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
      if (orderLeftSquareBracketBillingPeriodAdjustedCostPeriodValueRightSquareBracket !=
          null)
        r'order[billing.adjustedCost.value]': encodeQueryParameter(
            orderLeftSquareBracketBillingPeriodAdjustedCostPeriodValueRightSquareBracket),
      if (orderLeftSquareBracketBillingPeriodInitialCostPeriodValueRightSquareBracket !=
          null)
        r'order[billing.initialCost.value]': encodeQueryParameter(
            orderLeftSquareBracketBillingPeriodInitialCostPeriodValueRightSquareBracket),
      if (orderLeftSquareBracketCreatedAtRightSquareBracket != null)
        r'order[createdAt]': encodeQueryParameter(
            orderLeftSquareBracketCreatedAtRightSquareBracket),
      if (orderLeftSquareBracketEffectiveDateRightSquareBracket != null)
        r'order[effectiveDate]': encodeQueryParameter(
            orderLeftSquareBracketEffectiveDateRightSquareBracket),
      if (orderLeftSquareBracketNameRightSquareBracket != null)
        r'order[name]':
            encodeQueryParameter(orderLeftSquareBracketNameRightSquareBracket),
      if (orderLeftSquareBracketNumberRightSquareBracket != null)
        r'order[number]': encodeQueryParameter(
            orderLeftSquareBracketNumberRightSquareBracket),
      if (orderLeftSquareBracketUpdatedAtRightSquareBracket != null)
        r'order[updatedAt]': encodeQueryParameter(
            orderLeftSquareBracketUpdatedAtRightSquareBracket),
      if (orderLeftSquareBracketSignedAtRightSquareBracket != null)
        r'order[signedAt]': encodeQueryParameter(
            orderLeftSquareBracketSignedAtRightSquareBracket),
      if (orderLeftSquareBracketStateRightSquareBracket != null)
        r'order[state]':
            encodeQueryParameter(orderLeftSquareBracketStateRightSquareBracket),
      if (propertiesLeftSquareBracketRightSquareBracket != null)
        r'properties[]': encodeCollectionQueryParameter(
            propertiesLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (onCall != null) r'onCall': encodeQueryParameter(onCall),
      if (onCallLeftSquareBracketRightSquareBracket != null)
        r'onCall[]': encodeCollectionQueryParameter(
            onCallLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (organizationPeriodIdentifier != null)
        r'organization.identifier':
            encodeQueryParameter(organizationPeriodIdentifier),
      if (organizationPeriodIdentifierLeftSquareBracketRightSquareBracket !=
          null)
        r'organization.identifier[]': encodeCollectionQueryParameter(
            organizationPeriodIdentifierLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (providerPeriodIdentifier != null)
        r'provider.identifier': encodeQueryParameter(providerPeriodIdentifier),
      if (providerPeriodIdentifierLeftSquareBracketRightSquareBracket != null)
        r'provider.identifier[]': encodeCollectionQueryParameter(
            providerPeriodIdentifierLeftSquareBracketRightSquareBracket,
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

    GetContracts200Response responseData;

    try {
      responseData = await _apiClient.deserializeAsync<GetContracts200Response>(
          response.data!, 'GetContracts200Response');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<GetContracts200Response>(
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
