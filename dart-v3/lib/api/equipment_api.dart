//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class EquipmentApi {
  const EquipmentApi(this._apiClient);

  final ApiPlatformClient _apiClient;

  /// Removes the Equipment resource.
  /// Removes the Equipment resource.
  ///
  /// Parameters:
  /// * [identifier] - Equipment identifier
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
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> deleteEquipment({
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
    final String path = r'/equipments/{identifier}'
        .replaceAll('{' r'identifier' '}', identifier.toString());
    final options = Options(
      method: r'DELETE',
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

    return _apiClient.dio.request<Object>(
      path,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  /// Retrieves a Equipment resource.
  /// Retrieves a Equipment resource.
  ///
  /// Parameters:
  /// * [identifier] - Equipment identifier
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
  /// Returns a [Future] containing a [Response] with a [EquipmentJsonhalRead] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<EquipmentJsonhalRead>> getEquipment({
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
    final String path = r'/equipments/{identifier}'
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

    EquipmentJsonhalRead responseData;

    try {
      responseData = await _apiClient.deserializeAsync<EquipmentJsonhalRead>(
          response.data!, 'EquipmentJsonhalRead');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<EquipmentJsonhalRead>(
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

  /// Retrieves the collection of Equipment resources.
  /// Retrieves the collection of Equipment resources.
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
  /// * [contractsPeriodIdentifier] -
  /// * [contractsPeriodIdentifierLeftSquareBracketRightSquareBracket] -
  /// * [parentPeriodIdentifier] -
  /// * [parentPeriodIdentifierLeftSquareBracketRightSquareBracket] -
  /// * [commissioningDateLeftSquareBracketBeforeRightSquareBracket] -
  /// * [commissioningDateLeftSquareBracketStrictlyBeforeRightSquareBracket] -
  /// * [commissioningDateLeftSquareBracketAfterRightSquareBracket] -
  /// * [commissioningDateLeftSquareBracketStrictlyAfterRightSquareBracket] -
  /// * [retirementDateLeftSquareBracketBeforeRightSquareBracket] -
  /// * [retirementDateLeftSquareBracketStrictlyBeforeRightSquareBracket] -
  /// * [retirementDateLeftSquareBracketAfterRightSquareBracket] -
  /// * [retirementDateLeftSquareBracketStrictlyAfterRightSquareBracket] -
  /// * [warrantyPeriodEndDateLeftSquareBracketBeforeRightSquareBracket] -
  /// * [warrantyPeriodEndDateLeftSquareBracketStrictlyBeforeRightSquareBracket] -
  /// * [warrantyPeriodEndDateLeftSquareBracketAfterRightSquareBracket] -
  /// * [warrantyPeriodEndDateLeftSquareBracketStrictlyAfterRightSquareBracket] -
  /// * [brand] -
  /// * [brandLeftSquareBracketRightSquareBracket] -
  /// * [model] -
  /// * [mpn] -
  /// * [serialNumber] -
  /// * [state] -
  /// * [stateLeftSquareBracketRightSquareBracket] -
  /// * [type] -
  /// * [typeLeftSquareBracketRightSquareBracket] -
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
  /// Returns a [Future] containing a [Response] with a [GetEquipments200Response] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GetEquipments200Response>> getEquipments({
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
    String? contractsPeriodIdentifier,
    List<String>? contractsPeriodIdentifierLeftSquareBracketRightSquareBracket,
    String? parentPeriodIdentifier,
    List<String>? parentPeriodIdentifierLeftSquareBracketRightSquareBracket,
    String? commissioningDateLeftSquareBracketBeforeRightSquareBracket,
    String? commissioningDateLeftSquareBracketStrictlyBeforeRightSquareBracket,
    String? commissioningDateLeftSquareBracketAfterRightSquareBracket,
    String? commissioningDateLeftSquareBracketStrictlyAfterRightSquareBracket,
    String? retirementDateLeftSquareBracketBeforeRightSquareBracket,
    String? retirementDateLeftSquareBracketStrictlyBeforeRightSquareBracket,
    String? retirementDateLeftSquareBracketAfterRightSquareBracket,
    String? retirementDateLeftSquareBracketStrictlyAfterRightSquareBracket,
    String? warrantyPeriodEndDateLeftSquareBracketBeforeRightSquareBracket,
    String?
        warrantyPeriodEndDateLeftSquareBracketStrictlyBeforeRightSquareBracket,
    String? warrantyPeriodEndDateLeftSquareBracketAfterRightSquareBracket,
    String?
        warrantyPeriodEndDateLeftSquareBracketStrictlyAfterRightSquareBracket,
    String? brand,
    List<String>? brandLeftSquareBracketRightSquareBracket,
    String? model,
    String? mpn,
    String? serialNumber,
    String? state,
    List<String>? stateLeftSquareBracketRightSquareBracket,
    String? type,
    List<String>? typeLeftSquareBracketRightSquareBracket,
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
    final String path = r'/equipments';
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
      if (commissioningDateLeftSquareBracketBeforeRightSquareBracket != null)
        r'commissioningDate[before]': encodeQueryParameter(
            commissioningDateLeftSquareBracketBeforeRightSquareBracket),
      if (commissioningDateLeftSquareBracketStrictlyBeforeRightSquareBracket !=
          null)
        r'commissioningDate[strictly_before]': encodeQueryParameter(
            commissioningDateLeftSquareBracketStrictlyBeforeRightSquareBracket),
      if (commissioningDateLeftSquareBracketAfterRightSquareBracket != null)
        r'commissioningDate[after]': encodeQueryParameter(
            commissioningDateLeftSquareBracketAfterRightSquareBracket),
      if (commissioningDateLeftSquareBracketStrictlyAfterRightSquareBracket !=
          null)
        r'commissioningDate[strictly_after]': encodeQueryParameter(
            commissioningDateLeftSquareBracketStrictlyAfterRightSquareBracket),
      if (retirementDateLeftSquareBracketBeforeRightSquareBracket != null)
        r'retirementDate[before]': encodeQueryParameter(
            retirementDateLeftSquareBracketBeforeRightSquareBracket),
      if (retirementDateLeftSquareBracketStrictlyBeforeRightSquareBracket !=
          null)
        r'retirementDate[strictly_before]': encodeQueryParameter(
            retirementDateLeftSquareBracketStrictlyBeforeRightSquareBracket),
      if (retirementDateLeftSquareBracketAfterRightSquareBracket != null)
        r'retirementDate[after]': encodeQueryParameter(
            retirementDateLeftSquareBracketAfterRightSquareBracket),
      if (retirementDateLeftSquareBracketStrictlyAfterRightSquareBracket !=
          null)
        r'retirementDate[strictly_after]': encodeQueryParameter(
            retirementDateLeftSquareBracketStrictlyAfterRightSquareBracket),
      if (warrantyPeriodEndDateLeftSquareBracketBeforeRightSquareBracket !=
          null)
        r'warranty.endDate[before]': encodeQueryParameter(
            warrantyPeriodEndDateLeftSquareBracketBeforeRightSquareBracket),
      if (warrantyPeriodEndDateLeftSquareBracketStrictlyBeforeRightSquareBracket !=
          null)
        r'warranty.endDate[strictly_before]': encodeQueryParameter(
            warrantyPeriodEndDateLeftSquareBracketStrictlyBeforeRightSquareBracket),
      if (warrantyPeriodEndDateLeftSquareBracketAfterRightSquareBracket != null)
        r'warranty.endDate[after]': encodeQueryParameter(
            warrantyPeriodEndDateLeftSquareBracketAfterRightSquareBracket),
      if (warrantyPeriodEndDateLeftSquareBracketStrictlyAfterRightSquareBracket !=
          null)
        r'warranty.endDate[strictly_after]': encodeQueryParameter(
            warrantyPeriodEndDateLeftSquareBracketStrictlyAfterRightSquareBracket),
      if (brand != null) r'brand': encodeQueryParameter(brand),
      if (brandLeftSquareBracketRightSquareBracket != null)
        r'brand[]': encodeCollectionQueryParameter(
            brandLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (model != null) r'model': encodeQueryParameter(model),
      if (mpn != null) r'mpn': encodeQueryParameter(mpn),
      if (serialNumber != null)
        r'serialNumber': encodeQueryParameter(serialNumber),
      if (state != null) r'state': encodeQueryParameter(state),
      if (stateLeftSquareBracketRightSquareBracket != null)
        r'state[]': encodeCollectionQueryParameter(
            stateLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (type != null) r'type': encodeQueryParameter(type),
      if (typeLeftSquareBracketRightSquareBracket != null)
        r'type[]': encodeCollectionQueryParameter(
            typeLeftSquareBracketRightSquareBracket,
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

    GetEquipments200Response responseData;

    try {
      responseData =
          await _apiClient.deserializeAsync<GetEquipments200Response>(
              response.data!, 'GetEquipments200Response');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<GetEquipments200Response>(
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

  /// Updates the Equipment resource.
  /// Updates the Equipment resource.
  ///
  /// Parameters:
  /// * [identifier] - Equipment identifier
  /// * [xKeyclicApp] -
  /// * [xOrganizationId] -
  /// * [equipmentEditEquipmentCommandData] - The updated Equipment resource
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
  /// Returns a [Future] containing a [Response] with a [EquipmentJsonhalRead] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<EquipmentJsonhalRead>> patchEquipment({
    required String identifier,
    required String xKeyclicApp,
    required String xOrganizationId,
    required EquipmentEditEquipmentCommandData
        equipmentEditEquipmentCommandData,
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
    final String path = r'/equipments/{identifier}'
        .replaceAll('{' r'identifier' '}', identifier.toString());
    final options = Options(
      method: r'PATCH',
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
      contentType: 'application/merge-patch+json',
      validateStatus: validateStatus,
    );

    dynamic bodyData;

    try {
      bodyData = equipmentEditEquipmentCommandData.toJson();
      // bodyData = jsonEncode(equipmentEditEquipmentCommandData);
      // bodyData = jsonDecode(jsonEncode(equipmentEditEquipmentCommandData));
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

    EquipmentJsonhalRead responseData;

    try {
      responseData = await _apiClient.deserializeAsync<EquipmentJsonhalRead>(
          response.data!, 'EquipmentJsonhalRead');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<EquipmentJsonhalRead>(
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

  /// Creates a Equipment resource.
  /// Creates a Equipment resource.
  ///
  /// Parameters:
  /// * [xKeyclicApp] -
  /// * [xOrganizationId] -
  /// * [equipmentCreateEquipmentCommandData] - The new Equipment resource
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
  /// Returns a [Future] containing a [Response] with a [EquipmentJsonhalRead] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<EquipmentJsonhalRead>> postEquipment({
    required String xKeyclicApp,
    required String xOrganizationId,
    required EquipmentCreateEquipmentCommandData
        equipmentCreateEquipmentCommandData,
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
    final String path = r'/equipments';
    final options = Options(
      method: r'POST',
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
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic bodyData;

    try {
      bodyData = equipmentCreateEquipmentCommandData.toJson();
      // bodyData = jsonEncode(equipmentCreateEquipmentCommandData);
      // bodyData = jsonDecode(jsonEncode(equipmentCreateEquipmentCommandData));
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

    EquipmentJsonhalRead responseData;

    try {
      responseData = await _apiClient.deserializeAsync<EquipmentJsonhalRead>(
          response.data!, 'EquipmentJsonhalRead');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<EquipmentJsonhalRead>(
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
