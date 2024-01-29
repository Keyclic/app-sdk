//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OrganizationApi {
  const OrganizationApi(this._apiClient);

  final ApiClient _apiClient;

  /// Retrieve all Category resources.
  ///
  ///
  /// Parameters:
  /// * [xKeyclicApp]
  /// * [organization] - The identifier of the resource.
  /// * [acceptLanguage]
  /// * [xDateTime]
  /// * [xKeyclicAppPlatform]
  /// * [xKeyclicAppVersion]
  /// * [orderLeftSquareBracketRightSquareBracket]
  /// * [businessActivity]
  /// * [businessActivitiesLeftSquareBracketRightSquareBracket]
  /// * [after]
  /// * [before]
  /// * [geoPoint] - One latitude and one longitude serialized and separated by a plus or a minus sign.
  /// * [geoCoordinates] - One latitude and one longitude serialized and separated by a plus or a minus sign.
  /// * [leaf]
  /// * [level]
  /// * [organizationsLeftSquareBracketRightSquareBracket]
  /// * [query]
  /// * [page] - Page of the overview.
  /// * [limit] - Page of the overview.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CategoryPagination] as data
  /// Throws [DioError] if API call or serialization fails
  /// Keyclic API documentation.
  /// Also see [Retrieve all Category resources. Documentation](https://docs.keyclic.com/fr/master/overview.html)
  Future<Response<CategoryPagination>> cgetCategoriesByOrganization({
    required String xKeyclicApp,
    required String organization,
    String? acceptLanguage,
    DateTime? xDateTime,
    String? xKeyclicAppPlatform,
    String? xKeyclicAppVersion,
    List<String>? orderLeftSquareBracketRightSquareBracket,
    String? businessActivity,
    List<String>? businessActivitiesLeftSquareBracketRightSquareBracket,
    DateTime? after,
    DateTime? before,
    String? geoPoint,
    String? geoCoordinates,
    String? leaf,
    String? level,
    List<String>? organizationsLeftSquareBracketRightSquareBracket,
    String? query,
    int? page,
    int? limit,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final String path = r'/organizations/{organization}/categories'
        .replaceAll('{' r'organization' '}', organization.toString());
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
      if (businessActivity != null)
        r'business_activity': encodeQueryParameter(businessActivity),
      if (businessActivitiesLeftSquareBracketRightSquareBracket != null)
        r'business_activities[]': encodeCollectionQueryParameter(
            businessActivitiesLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (after != null) r'after': encodeQueryParameter(after),
      if (before != null) r'before': encodeQueryParameter(before),
      if (geoPoint != null) r'geo_point': encodeQueryParameter(geoPoint),
      if (geoCoordinates != null)
        r'geo_coordinates': encodeQueryParameter(geoCoordinates),
      if (leaf != null) r'leaf': encodeQueryParameter(leaf),
      if (level != null) r'level': encodeQueryParameter(level),
      if (organizationsLeftSquareBracketRightSquareBracket != null)
        r'organizations[]': encodeCollectionQueryParameter(
            organizationsLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (query != null) r'query': encodeQueryParameter(query),
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

    CategoryPagination responseData;

    try {
      responseData = await _apiClient.deserializeAsync<CategoryPagination>(
          response.data!, 'CategoryPagination');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<CategoryPagination>(
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

  /// Retrieve all DispatchService resources.
  ///
  ///
  /// Parameters:
  /// * [xKeyclicApp]
  /// * [organization] - The identifier of the resource.
  /// * [acceptLanguage]
  /// * [xDateTime]
  /// * [xKeyclicAppPlatform]
  /// * [xKeyclicAppVersion]
  /// * [asset]
  /// * [category]
  /// * [page] - Page of the overview.
  /// * [limit] - Page of the overview.
  /// * [orderLeftSquareBracketRightSquareBracket]
  /// * [after]
  /// * [before]
  /// * [query]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ServicePagination] as data
  /// Throws [DioError] if API call or serialization fails
  /// Keyclic API documentation.
  /// Also see [Retrieve all DispatchService resources. Documentation](https://docs.keyclic.com/fr/master/overview.html)
  Future<Response<ServicePagination>> cgetDispatchServicesByOrganization({
    required String xKeyclicApp,
    required String organization,
    String? acceptLanguage,
    DateTime? xDateTime,
    String? xKeyclicAppPlatform,
    String? xKeyclicAppVersion,
    String? asset,
    String? category,
    int? page,
    int? limit,
    List<String>? orderLeftSquareBracketRightSquareBracket,
    DateTime? after,
    DateTime? before,
    String? query,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final String path = r'/organizations/{organization}/dispatch-services'
        .replaceAll('{' r'organization' '}', organization.toString());
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
      if (asset != null) r'asset': encodeQueryParameter(asset),
      if (category != null) r'category': encodeQueryParameter(category),
      if (page != null) r'page': encodeQueryParameter(page),
      if (limit != null) r'limit': encodeQueryParameter(limit),
      if (orderLeftSquareBracketRightSquareBracket != null)
        r'order[]': encodeCollectionQueryParameter(
            orderLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (after != null) r'after': encodeQueryParameter(after),
      if (before != null) r'before': encodeQueryParameter(before),
      if (query != null) r'query': encodeQueryParameter(query),
    };

    final response = await _apiClient.dio.request<Object>(
      path,
      options: options,
      queryParameters: queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ServicePagination responseData;

    try {
      responseData = await _apiClient.deserializeAsync<ServicePagination>(
          response.data!, 'ServicePagination');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<ServicePagination>(
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

  /// Retrieve all Document resources.
  ///
  ///
  /// Parameters:
  /// * [xKeyclicApp]
  /// * [organization] - The identifier of the resource.
  /// * [acceptLanguage]
  /// * [xDateTime]
  /// * [xKeyclicAppPlatform]
  /// * [xKeyclicAppVersion]
  /// * [orderLeftSquareBracketRightSquareBracket]
  /// * [after]
  /// * [before]
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
  Future<Response<DocumentPagination>> cgetDocumentsByOrganization({
    required String xKeyclicApp,
    required String organization,
    String? acceptLanguage,
    DateTime? xDateTime,
    String? xKeyclicAppPlatform,
    String? xKeyclicAppVersion,
    List<String>? orderLeftSquareBracketRightSquareBracket,
    DateTime? after,
    DateTime? before,
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
    final String path = r'/organizations/{organization}/documents'
        .replaceAll('{' r'organization' '}', organization.toString());
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

  /// Retrieve all ExternalService resources.
  ///
  ///
  /// Parameters:
  /// * [xKeyclicApp]
  /// * [organization] - The identifier of the resource.
  /// * [acceptLanguage]
  /// * [xDateTime]
  /// * [xKeyclicAppPlatform]
  /// * [xKeyclicAppVersion]
  /// * [orderLeftSquareBracketRightSquareBracket]
  /// * [after]
  /// * [before]
  /// * [query]
  /// * [page] - Page of the overview.
  /// * [limit] - Page of the overview.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ExternalServicePagination] as data
  /// Throws [DioError] if API call or serialization fails
  /// Keyclic API documentation.
  /// Also see [Retrieve all ExternalService resources. Documentation](https://docs.keyclic.com/fr/master/overview.html)
  Future<Response<ExternalServicePagination>>
      cgetExternalServicesByOrganization({
    required String xKeyclicApp,
    required String organization,
    String? acceptLanguage,
    DateTime? xDateTime,
    String? xKeyclicAppPlatform,
    String? xKeyclicAppVersion,
    List<String>? orderLeftSquareBracketRightSquareBracket,
    DateTime? after,
    DateTime? before,
    String? query,
    int? page,
    int? limit,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final String path = r'/organizations/{organization}/external-services'
        .replaceAll('{' r'organization' '}', organization.toString());
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
      if (query != null) r'query': encodeQueryParameter(query),
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

    ExternalServicePagination responseData;

    try {
      responseData =
          await _apiClient.deserializeAsync<ExternalServicePagination>(
              response.data!, 'ExternalServicePagination');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<ExternalServicePagination>(
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

  /// Retrieve all InternalService resources.
  ///
  ///
  /// Parameters:
  /// * [xKeyclicApp]
  /// * [organization] - The identifier of the resource.
  /// * [acceptLanguage]
  /// * [xDateTime]
  /// * [xKeyclicAppPlatform]
  /// * [xKeyclicAppVersion]
  /// * [orderLeftSquareBracketRightSquareBracket]
  /// * [after]
  /// * [before]
  /// * [query]
  /// * [page] - Page of the overview.
  /// * [limit] - Page of the overview.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [InternalServicePagination] as data
  /// Throws [DioError] if API call or serialization fails
  /// Keyclic API documentation.
  /// Also see [Retrieve all InternalService resources. Documentation](https://docs.keyclic.com/fr/master/overview.html)
  Future<Response<InternalServicePagination>>
      cgetInternalServicesByOrganization({
    required String xKeyclicApp,
    required String organization,
    String? acceptLanguage,
    DateTime? xDateTime,
    String? xKeyclicAppPlatform,
    String? xKeyclicAppVersion,
    List<String>? orderLeftSquareBracketRightSquareBracket,
    DateTime? after,
    DateTime? before,
    String? query,
    int? page,
    int? limit,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final String path = r'/organizations/{organization}/internal-services'
        .replaceAll('{' r'organization' '}', organization.toString());
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
      if (query != null) r'query': encodeQueryParameter(query),
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

    InternalServicePagination responseData;

    try {
      responseData =
          await _apiClient.deserializeAsync<InternalServicePagination>(
              response.data!, 'InternalServicePagination');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<InternalServicePagination>(
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

  /// Retrieve all Member resources.
  ///
  ///
  /// Parameters:
  /// * [xKeyclicApp]
  /// * [organization] - The identifier of the resource.
  /// * [acceptLanguage]
  /// * [xDateTime]
  /// * [xKeyclicAppPlatform]
  /// * [xKeyclicAppVersion]
  /// * [orderLeftSquareBracketRightSquareBracket]
  /// * [archived]
  /// * [contactPointEmail]
  /// * [after]
  /// * [before]
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
  /// Also see [Retrieve all Member resources. Documentation](https://docs.keyclic.com/fr/master/overview.html)
  Future<Response<MemberPagination>> cgetMembersByOrganization({
    required String xKeyclicApp,
    required String organization,
    String? acceptLanguage,
    DateTime? xDateTime,
    String? xKeyclicAppPlatform,
    String? xKeyclicAppVersion,
    List<String>? orderLeftSquareBracketRightSquareBracket,
    String? archived,
    String? contactPointEmail,
    DateTime? after,
    DateTime? before,
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
    final String path = r'/organizations/{organization}/members'
        .replaceAll('{' r'organization' '}', organization.toString());
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
      if (contactPointEmail != null)
        r'contact_point_email': encodeQueryParameter(contactPointEmail),
      if (after != null) r'after': encodeQueryParameter(after),
      if (before != null) r'before': encodeQueryParameter(before),
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

  /// Retrieve all Occupant resources.
  ///
  ///
  /// Parameters:
  /// * [xKeyclicApp]
  /// * [organization] - The identifier of the resource.
  /// * [acceptLanguage]
  /// * [xDateTime]
  /// * [xKeyclicAppPlatform]
  /// * [xKeyclicAppVersion]
  /// * [orderLeftSquareBracketRightSquareBracket]
  /// * [after]
  /// * [before]
  /// * [member]
  /// * [membersLeftSquareBracketRightSquareBracket]
  /// * [person]
  /// * [personsLeftSquareBracketRightSquareBracket]
  /// * [place]
  /// * [placesLeftSquareBracketRightSquareBracket]
  /// * [query]
  /// * [page] - Page of the overview.
  /// * [limit] - Page of the overview.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [OccupantPagination] as data
  /// Throws [DioError] if API call or serialization fails
  /// Keyclic API documentation.
  /// Also see [Retrieve all Occupant resources. Documentation](https://docs.keyclic.com/fr/master/overview.html)
  Future<Response<OccupantPagination>> cgetOccupantsByOrganization({
    required String xKeyclicApp,
    required String organization,
    String? acceptLanguage,
    DateTime? xDateTime,
    String? xKeyclicAppPlatform,
    String? xKeyclicAppVersion,
    List<String>? orderLeftSquareBracketRightSquareBracket,
    DateTime? after,
    DateTime? before,
    String? member,
    List<String>? membersLeftSquareBracketRightSquareBracket,
    String? person,
    List<String>? personsLeftSquareBracketRightSquareBracket,
    String? place,
    List<String>? placesLeftSquareBracketRightSquareBracket,
    String? query,
    int? page,
    int? limit,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final String path = r'/organizations/{organization}/occupants'
        .replaceAll('{' r'organization' '}', organization.toString());
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
      if (member != null) r'member': encodeQueryParameter(member),
      if (membersLeftSquareBracketRightSquareBracket != null)
        r'members[]': encodeCollectionQueryParameter(
            membersLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (person != null) r'person': encodeQueryParameter(person),
      if (personsLeftSquareBracketRightSquareBracket != null)
        r'persons[]': encodeCollectionQueryParameter(
            personsLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (place != null) r'place': encodeQueryParameter(place),
      if (placesLeftSquareBracketRightSquareBracket != null)
        r'places[]': encodeCollectionQueryParameter(
            placesLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (query != null) r'query': encodeQueryParameter(query),
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

    OccupantPagination responseData;

    try {
      responseData = await _apiClient.deserializeAsync<OccupantPagination>(
          response.data!, 'OccupantPagination');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<OccupantPagination>(
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
  /// * [organization] - The identifier of the resource.
  /// * [acceptLanguage]
  /// * [xDateTime]
  /// * [xKeyclicAppPlatform]
  /// * [xKeyclicAppVersion]
  /// * [orderLeftSquareBracketRightSquareBracket]
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
  Future<Response<OperationPagination>> cgetOperationsByOrganization({
    required String xKeyclicApp,
    required String organization,
    String? acceptLanguage,
    DateTime? xDateTime,
    String? xKeyclicAppPlatform,
    String? xKeyclicAppVersion,
    List<String>? orderLeftSquareBracketRightSquareBracket,
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
    final String path = r'/organizations/{organization}/operations'
        .replaceAll('{' r'organization' '}', organization.toString());
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

  /// Retrieve all Organization resources.
  ///
  ///
  /// Parameters:
  /// * [xKeyclicApp]
  /// * [acceptLanguage]
  /// * [xDateTime]
  /// * [xKeyclicAppPlatform]
  /// * [xKeyclicAppVersion]
  /// * [orderLeftSquareBracketRightSquareBracket]
  /// * [archived]
  /// * [businessActivity]
  /// * [businessActivitiesLeftSquareBracketRightSquareBracket]
  /// * [after]
  /// * [before]
  /// * [disabledAt]
  /// * [geoPoint] - One latitude and one longitude serialized and separated by a plus or a minus sign.
  /// * [geoCoordinates] - One latitude and one longitude serialized and separated by a plus or a minus sign.
  /// * [organization]
  /// * [organizationsLeftSquareBracketRightSquareBracket]
  /// * [query]
  /// * [page] - Page of the overview.
  /// * [limit] - Page of the overview.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [OrganizationPagination] as data
  /// Throws [DioError] if API call or serialization fails
  /// Keyclic API documentation.
  /// Also see [Retrieve all Organization resources. Documentation](https://docs.keyclic.com/fr/master/overview.html)
  Future<Response<OrganizationPagination>> cgetOrganizations({
    required String xKeyclicApp,
    String? acceptLanguage,
    DateTime? xDateTime,
    String? xKeyclicAppPlatform,
    String? xKeyclicAppVersion,
    List<String>? orderLeftSquareBracketRightSquareBracket,
    String? archived,
    String? businessActivity,
    List<String>? businessActivitiesLeftSquareBracketRightSquareBracket,
    DateTime? after,
    DateTime? before,
    DateTime? disabledAt,
    String? geoPoint,
    String? geoCoordinates,
    String? organization,
    List<String>? organizationsLeftSquareBracketRightSquareBracket,
    String? query,
    int? page,
    int? limit,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final String path = r'/organizations';
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
      if (businessActivity != null)
        r'business_activity': encodeQueryParameter(businessActivity),
      if (businessActivitiesLeftSquareBracketRightSquareBracket != null)
        r'business_activities[]': encodeCollectionQueryParameter(
            businessActivitiesLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (after != null) r'after': encodeQueryParameter(after),
      if (before != null) r'before': encodeQueryParameter(before),
      if (disabledAt != null) r'disabledAt': encodeQueryParameter(disabledAt),
      if (geoPoint != null) r'geo_point': encodeQueryParameter(geoPoint),
      if (geoCoordinates != null)
        r'geo_coordinates': encodeQueryParameter(geoCoordinates),
      if (organization != null)
        r'organization': encodeQueryParameter(organization),
      if (organizationsLeftSquareBracketRightSquareBracket != null)
        r'organizations[]': encodeCollectionQueryParameter(
            organizationsLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (query != null) r'query': encodeQueryParameter(query),
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

    OrganizationPagination responseData;

    try {
      responseData = await _apiClient.deserializeAsync<OrganizationPagination>(
          response.data!, 'OrganizationPagination');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<OrganizationPagination>(
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

  /// Retrieve all Place resources.
  ///
  ///
  /// Parameters:
  /// * [xKeyclicApp]
  /// * [organization] - The identifier of the resource.
  /// * [acceptLanguage]
  /// * [xDateTime]
  /// * [xKeyclicAppPlatform]
  /// * [xKeyclicAppVersion]
  /// * [orderLeftSquareBracketRightSquareBracket]
  /// * [branchCode]
  /// * [businessActivity]
  /// * [businessActivitiesLeftSquareBracketRightSquareBracket]
  /// * [after]
  /// * [before]
  /// * [geoElevation]
  /// * [geoHashLeftSquareBracketRightSquareBracket]
  /// * [geoPoint] - One latitude and one longitude serialized and separated by a plus or a minus sign.
  /// * [geoCoordinates] - One latitude and one longitude serialized and separated by a plus or a minus sign.
  /// * [leaf]
  /// * [level]
  /// * [organizationsLeftSquareBracketRightSquareBracket]
  /// * [parent]
  /// * [parentsLeftSquareBracketRightSquareBracket]
  /// * [query]
  /// * [page] - Page of the overview.
  /// * [limit] - Page of the overview.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PlacePagination] as data
  /// Throws [DioError] if API call or serialization fails
  /// Keyclic API documentation.
  /// Also see [Retrieve all Place resources. Documentation](https://docs.keyclic.com/fr/master/overview.html)
  Future<Response<PlacePagination>> cgetPlacesByOrganization({
    required String xKeyclicApp,
    required String organization,
    String? acceptLanguage,
    DateTime? xDateTime,
    String? xKeyclicAppPlatform,
    String? xKeyclicAppVersion,
    List<String>? orderLeftSquareBracketRightSquareBracket,
    String? branchCode,
    String? businessActivity,
    List<String>? businessActivitiesLeftSquareBracketRightSquareBracket,
    DateTime? after,
    DateTime? before,
    String? geoElevation,
    List<String>? geoHashLeftSquareBracketRightSquareBracket,
    String? geoPoint,
    String? geoCoordinates,
    String? leaf,
    String? level,
    List<String>? organizationsLeftSquareBracketRightSquareBracket,
    String? parent,
    List<String>? parentsLeftSquareBracketRightSquareBracket,
    String? query,
    int? page,
    int? limit,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final String path = r'/organizations/{organization}/places'
        .replaceAll('{' r'organization' '}', organization.toString());
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
      if (branchCode != null) r'branch_code': encodeQueryParameter(branchCode),
      if (businessActivity != null)
        r'business_activity': encodeQueryParameter(businessActivity),
      if (businessActivitiesLeftSquareBracketRightSquareBracket != null)
        r'business_activities[]': encodeCollectionQueryParameter(
            businessActivitiesLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (after != null) r'after': encodeQueryParameter(after),
      if (before != null) r'before': encodeQueryParameter(before),
      if (geoElevation != null)
        r'geo_elevation': encodeQueryParameter(geoElevation),
      if (geoHashLeftSquareBracketRightSquareBracket != null)
        r'geo_hash[]': encodeCollectionQueryParameter(
            geoHashLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (geoPoint != null) r'geo_point': encodeQueryParameter(geoPoint),
      if (geoCoordinates != null)
        r'geo_coordinates': encodeQueryParameter(geoCoordinates),
      if (leaf != null) r'leaf': encodeQueryParameter(leaf),
      if (level != null) r'level': encodeQueryParameter(level),
      if (organizationsLeftSquareBracketRightSquareBracket != null)
        r'organizations[]': encodeCollectionQueryParameter(
            organizationsLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (parent != null) r'parent': encodeQueryParameter(parent),
      if (parentsLeftSquareBracketRightSquareBracket != null)
        r'parents[]': encodeCollectionQueryParameter(
            parentsLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (query != null) r'query': encodeQueryParameter(query),
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

    PlacePagination responseData;

    try {
      responseData = await _apiClient.deserializeAsync<PlacePagination>(
          response.data!, 'PlacePagination');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<PlacePagination>(
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

  /// Retrieve all Publication resources.
  ///
  ///
  /// Parameters:
  /// * [xKeyclicApp]
  /// * [organization] - The identifier of the resource.
  /// * [acceptLanguage]
  /// * [xDateTime]
  /// * [xKeyclicAppPlatform]
  /// * [xKeyclicAppVersion]
  /// * [orderLeftSquareBracketRightSquareBracket]
  /// * [after]
  /// * [before]
  /// * [place]
  /// * [placesLeftSquareBracketRightSquareBracket]
  /// * [page] - Page of the overview.
  /// * [limit] - Page of the overview.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PublicationPagination] as data
  /// Throws [DioError] if API call or serialization fails
  /// Keyclic API documentation.
  /// Also see [Retrieve all Publication resources. Documentation](https://docs.keyclic.com/fr/master/overview.html)
  Future<Response<PublicationPagination>> cgetPublicationsByOrganization({
    required String xKeyclicApp,
    required String organization,
    String? acceptLanguage,
    DateTime? xDateTime,
    String? xKeyclicAppPlatform,
    String? xKeyclicAppVersion,
    List<String>? orderLeftSquareBracketRightSquareBracket,
    DateTime? after,
    DateTime? before,
    String? place,
    List<String>? placesLeftSquareBracketRightSquareBracket,
    int? page,
    int? limit,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final String path = r'/organizations/{organization}/publications'
        .replaceAll('{' r'organization' '}', organization.toString());
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
      if (place != null) r'place': encodeQueryParameter(place),
      if (placesLeftSquareBracketRightSquareBracket != null)
        r'places[]': encodeCollectionQueryParameter(
            placesLeftSquareBracketRightSquareBracket,
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

    PublicationPagination responseData;

    try {
      responseData = await _apiClient.deserializeAsync<PublicationPagination>(
          response.data!, 'PublicationPagination');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<PublicationPagination>(
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

  /// Retrieve all Report resources.
  ///
  ///
  /// Parameters:
  /// * [xKeyclicApp]
  /// * [organization] - The identifier of the resource.
  /// * [acceptLanguage]
  /// * [xDateTime]
  /// * [xKeyclicAppPlatform]
  /// * [xKeyclicAppVersion]
  /// * [orderLeftSquareBracketRightSquareBracket]
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
  /// Returns a [Future] containing a [Response] with a [ReportPagination] as data
  /// Throws [DioError] if API call or serialization fails
  /// Keyclic API documentation.
  /// Also see [Retrieve all Report resources. Documentation](https://docs.keyclic.com/fr/master/overview.html)
  Future<Response<ReportPagination>> cgetReportsByOrganization({
    required String xKeyclicApp,
    required String organization,
    String? acceptLanguage,
    DateTime? xDateTime,
    String? xKeyclicAppPlatform,
    String? xKeyclicAppVersion,
    List<String>? orderLeftSquareBracketRightSquareBracket,
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
    final String path = r'/organizations/{organization}/reports'
        .replaceAll('{' r'organization' '}', organization.toString());
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

    ReportPagination responseData;

    try {
      responseData = await _apiClient.deserializeAsync<ReportPagination>(
          response.data!, 'ReportPagination');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<ReportPagination>(
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
  /// * [organization] - The identifier of the resource.
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
  Future<Response<ReviewRequestPagination>> cgetReviewRequestsByOrganization({
    required String xKeyclicApp,
    required String organization,
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
    final String path = r'/organizations/{organization}/review-requests'
        .replaceAll('{' r'organization' '}', organization.toString());
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

  /// Retrieve all Review resources.
  ///
  ///
  /// Parameters:
  /// * [xKeyclicApp]
  /// * [organization] - The identifier of the resource.
  /// * [acceptLanguage]
  /// * [xDateTime]
  /// * [xKeyclicAppPlatform]
  /// * [xKeyclicAppVersion]
  /// * [orderLeftSquareBracketRightSquareBracket]
  /// * [category]
  /// * [categoriesLeftSquareBracketRightSquareBracket]
  /// * [after]
  /// * [before]
  /// * [delegatedTo]
  /// * [delegatedTosLeftSquareBracketRightSquareBracket]
  /// * [ratingLeftSquareBracketRightSquareBracket]
  /// * [task]
  /// * [tasksLeftSquareBracketRightSquareBracket]
  /// * [page] - Page of the overview.
  /// * [limit] - Page of the overview.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ReviewPagination] as data
  /// Throws [DioError] if API call or serialization fails
  /// Keyclic API documentation.
  /// Also see [Retrieve all Review resources. Documentation](https://docs.keyclic.com/fr/master/overview.html)
  Future<Response<ReviewPagination>> cgetReviewsByOrganization({
    required String xKeyclicApp,
    required String organization,
    String? acceptLanguage,
    DateTime? xDateTime,
    String? xKeyclicAppPlatform,
    String? xKeyclicAppVersion,
    List<String>? orderLeftSquareBracketRightSquareBracket,
    String? category,
    List<String>? categoriesLeftSquareBracketRightSquareBracket,
    DateTime? after,
    DateTime? before,
    String? delegatedTo,
    List<String>? delegatedTosLeftSquareBracketRightSquareBracket,
    List<String>? ratingLeftSquareBracketRightSquareBracket,
    String? task,
    List<String>? tasksLeftSquareBracketRightSquareBracket,
    int? page,
    int? limit,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final String path = r'/organizations/{organization}/reviews'
        .replaceAll('{' r'organization' '}', organization.toString());
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
      if (category != null) r'category': encodeQueryParameter(category),
      if (categoriesLeftSquareBracketRightSquareBracket != null)
        r'categories[]': encodeCollectionQueryParameter(
            categoriesLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (after != null) r'after': encodeQueryParameter(after),
      if (before != null) r'before': encodeQueryParameter(before),
      if (delegatedTo != null)
        r'delegated_to': encodeQueryParameter(delegatedTo),
      if (delegatedTosLeftSquareBracketRightSquareBracket != null)
        r'delegated_tos[]': encodeCollectionQueryParameter(
            delegatedTosLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (ratingLeftSquareBracketRightSquareBracket != null)
        r'rating[]': encodeCollectionQueryParameter(
            ratingLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (task != null) r'task': encodeQueryParameter(task),
      if (tasksLeftSquareBracketRightSquareBracket != null)
        r'tasks[]': encodeCollectionQueryParameter(
            tasksLeftSquareBracketRightSquareBracket,
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

    ReviewPagination responseData;

    try {
      responseData = await _apiClient.deserializeAsync<ReviewPagination>(
          response.data!, 'ReviewPagination');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<ReviewPagination>(
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

  /// Retrieve all Service resources.
  ///
  ///
  /// Parameters:
  /// * [xKeyclicApp]
  /// * [organization] - The identifier of the resource.
  /// * [acceptLanguage]
  /// * [xDateTime]
  /// * [xKeyclicAppPlatform]
  /// * [xKeyclicAppVersion]
  /// * [orderLeftSquareBracketRightSquareBracket]
  /// * [after]
  /// * [before]
  /// * [query]
  /// * [page] - Page of the overview.
  /// * [limit] - Page of the overview.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ServicePagination] as data
  /// Throws [DioError] if API call or serialization fails
  /// Keyclic API documentation.
  /// Also see [Retrieve all Service resources. Documentation](https://docs.keyclic.com/fr/master/overview.html)
  Future<Response<ServicePagination>> cgetServicesByOrganization({
    required String xKeyclicApp,
    required String organization,
    String? acceptLanguage,
    DateTime? xDateTime,
    String? xKeyclicAppPlatform,
    String? xKeyclicAppVersion,
    List<String>? orderLeftSquareBracketRightSquareBracket,
    DateTime? after,
    DateTime? before,
    String? query,
    int? page,
    int? limit,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final String path = r'/organizations/{organization}/services'
        .replaceAll('{' r'organization' '}', organization.toString());
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
      if (query != null) r'query': encodeQueryParameter(query),
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

    ServicePagination responseData;

    try {
      responseData = await _apiClient.deserializeAsync<ServicePagination>(
          response.data!, 'ServicePagination');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<ServicePagination>(
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

  /// Retrieve all Template resources.
  ///
  ///
  /// Parameters:
  /// * [xKeyclicApp]
  /// * [organization] - The identifier of the resource.
  /// * [acceptLanguage]
  /// * [xDateTime]
  /// * [xKeyclicAppPlatform]
  /// * [xKeyclicAppVersion]
  /// * [orderLeftSquareBracketRightSquareBracket]
  /// * [after]
  /// * [before]
  /// * [page] - Page of the overview.
  /// * [limit] - Page of the overview.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TemplatePagination] as data
  /// Throws [DioError] if API call or serialization fails
  /// Keyclic API documentation.
  /// Also see [Retrieve all Template resources. Documentation](https://docs.keyclic.com/fr/master/overview.html)
  Future<Response<TemplatePagination>> cgetTemplatesByOrganization({
    required String xKeyclicApp,
    required String organization,
    String? acceptLanguage,
    DateTime? xDateTime,
    String? xKeyclicAppPlatform,
    String? xKeyclicAppVersion,
    List<String>? orderLeftSquareBracketRightSquareBracket,
    DateTime? after,
    DateTime? before,
    int? page,
    int? limit,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final String path = r'/organizations/{organization}/templates'
        .replaceAll('{' r'organization' '}', organization.toString());
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

    TemplatePagination responseData;

    try {
      responseData = await _apiClient.deserializeAsync<TemplatePagination>(
          response.data!, 'TemplatePagination');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<TemplatePagination>(
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

  /// Retrieve one Analytic resource.
  ///
  ///
  /// Parameters:
  /// * [xKeyclicApp]
  /// * [organization] - The identifier of the resource.
  /// * [acceptLanguage]
  /// * [xDateTime]
  /// * [xKeyclicAppPlatform]
  /// * [xKeyclicAppVersion]
  /// * [archived]
  /// * [asset]
  /// * [assetsLeftSquareBracketRightSquareBracket]
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
  /// * [managedBy]
  /// * [managedBiesLeftSquareBracketRightSquareBracket]
  /// * [operationStateAll]
  /// * [operationState]
  /// * [operationStatesLeftSquareBracketRightSquareBracket]
  /// * [phase]
  /// * [phasesLeftSquareBracketRightSquareBracket]
  /// * [place]
  /// * [placesLeftSquareBracketRightSquareBracket]
  /// * [priority]
  /// * [prioritiesLeftSquareBracketRightSquareBracket]
  /// * [ratingLeftSquareBracketRightSquareBracket]
  /// * [state]
  /// * [statesLeftSquareBracketRightSquareBracket]
  /// * [optionsLeftSquareBracketPropertyRightSquareBracket]
  /// * [optionsLeftSquareBracketSortRightSquareBracket]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Chart] as data
  /// Throws [DioError] if API call or serialization fails
  /// Keyclic API documentation.
  /// Also see [Retrieve one Analytic resource. Documentation](https://docs.keyclic.com/fr/master/overview.html)
  Future<Response<Chart>> getAnalyticByOrganization({
    required String xKeyclicApp,
    required String organization,
    String? acceptLanguage,
    DateTime? xDateTime,
    String? xKeyclicAppPlatform,
    String? xKeyclicAppVersion,
    String? archived,
    String? asset,
    List<String>? assetsLeftSquareBracketRightSquareBracket,
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
    String? managedBy,
    List<String>? managedBiesLeftSquareBracketRightSquareBracket,
    String? operationStateAll,
    String? operationState,
    List<String>? operationStatesLeftSquareBracketRightSquareBracket,
    String? phase,
    List<String>? phasesLeftSquareBracketRightSquareBracket,
    String? place,
    List<String>? placesLeftSquareBracketRightSquareBracket,
    String? priority,
    List<String>? prioritiesLeftSquareBracketRightSquareBracket,
    List<String>? ratingLeftSquareBracketRightSquareBracket,
    String? state,
    List<String>? statesLeftSquareBracketRightSquareBracket,
    String? optionsLeftSquareBracketPropertyRightSquareBracket,
    String? optionsLeftSquareBracketSortRightSquareBracket,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final String path = r'/organizations/{organization}/analytics'
        .replaceAll('{' r'organization' '}', organization.toString());
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
      if (archived != null) r'archived': encodeQueryParameter(archived),
      if (asset != null) r'asset': encodeQueryParameter(asset),
      if (assetsLeftSquareBracketRightSquareBracket != null)
        r'assets[]': encodeCollectionQueryParameter(
            assetsLeftSquareBracketRightSquareBracket,
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
      if (managedBy != null) r'managed_by': encodeQueryParameter(managedBy),
      if (managedBiesLeftSquareBracketRightSquareBracket != null)
        r'managed_bies[]': encodeCollectionQueryParameter(
            managedBiesLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (operationStateAll != null)
        r'operation_state_all': encodeQueryParameter(operationStateAll),
      if (operationState != null)
        r'operation_state': encodeQueryParameter(operationState),
      if (operationStatesLeftSquareBracketRightSquareBracket != null)
        r'operation_states[]': encodeCollectionQueryParameter(
            operationStatesLeftSquareBracketRightSquareBracket,
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
      if (ratingLeftSquareBracketRightSquareBracket != null)
        r'rating[]': encodeCollectionQueryParameter(
            ratingLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (state != null) r'state': encodeQueryParameter(state),
      if (statesLeftSquareBracketRightSquareBracket != null)
        r'states[]': encodeCollectionQueryParameter(
            statesLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (optionsLeftSquareBracketPropertyRightSquareBracket != null)
        r'options[property]': encodeQueryParameter(
            optionsLeftSquareBracketPropertyRightSquareBracket),
      if (optionsLeftSquareBracketSortRightSquareBracket != null)
        r'options[sort]': encodeQueryParameter(
            optionsLeftSquareBracketSortRightSquareBracket),
    };

    final response = await _apiClient.dio.request<Object>(
      path,
      options: options,
      queryParameters: queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Chart responseData;

    try {
      responseData =
          await _apiClient.deserializeAsync<Chart>(response.data!, 'Chart');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<Chart>(
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

  /// Retrieve one Configuration resource.
  ///
  ///
  /// Parameters:
  /// * [xKeyclicApp]
  /// * [organization] - The identifier of the resource.
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
  /// Returns a [Future] containing a [Response] with a [Configuration] as data
  /// Throws [DioError] if API call or serialization fails
  /// Keyclic API documentation.
  /// Also see [Retrieve one Configuration resource. Documentation](https://docs.keyclic.com/fr/master/overview.html)
  Future<Response<Configuration>> getConfigurationByOrganization({
    required String xKeyclicApp,
    required String organization,
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
    final String path = r'/organizations/{organization}/configuration'
        .replaceAll('{' r'organization' '}', organization.toString());
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

    Configuration responseData;

    try {
      responseData = await _apiClient.deserializeAsync<Configuration>(
          response.data!, 'Configuration');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<Configuration>(
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

  /// Retrieve one Form resource.
  ///
  ///
  /// Parameters:
  /// * [xKeyclicApp]
  /// * [organization] - The identifier of the resource.
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
  /// Returns a [Future] containing a [Response] with a [Schema] as data
  /// Throws [DioError] if API call or serialization fails
  /// Keyclic API documentation.
  /// Also see [Retrieve one Form resource. Documentation](https://docs.keyclic.com/fr/master/overview.html)
  Future<Response<Schema>> getFormByOrganization({
    required String xKeyclicApp,
    required String organization,
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
    final String path = r'/organizations/{organization}/form'
        .replaceAll('{' r'organization' '}', organization.toString());
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

    Schema responseData;

    try {
      responseData =
          await _apiClient.deserializeAsync<Schema>(response.data!, 'Schema');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<Schema>(
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

  /// Retrieve one Organization resource.
  ///
  ///
  /// Parameters:
  /// * [xKeyclicApp]
  /// * [organization] - The identifier of the resource.
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
  /// Returns a [Future] containing a [Response] with a [Organization] as data
  /// Throws [DioError] if API call or serialization fails
  /// Keyclic API documentation.
  /// Also see [Retrieve one Organization resource. Documentation](https://docs.keyclic.com/fr/master/overview.html)
  Future<Response<Organization>> getOrganization({
    required String xKeyclicApp,
    required String organization,
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
    final String path = r'/organizations/{organization}'
        .replaceAll('{' r'organization' '}', organization.toString());
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

    Organization responseData;

    try {
      responseData = await _apiClient.deserializeAsync<Organization>(
          response.data!, 'Organization');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<Organization>(
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

  /// Edit one Organization resource.
  ///
  ///
  /// Parameters:
  /// * [xKeyclicApp]
  /// * [organization] - The identifier of the resource.
  /// * [organizationPatch]
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
  /// Returns a [Future] containing a [Response] with a [Organization] as data
  /// Throws [DioError] if API call or serialization fails
  /// Keyclic API documentation.
  /// Also see [Edit one Organization resource. Documentation](https://docs.keyclic.com/fr/master/overview.html)
  Future<Response<Organization>> patchOrganization({
    required String xKeyclicApp,
    required String organization,
    required OrganizationPatch organizationPatch,
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
    final String path = r'/organizations/{organization}'
        .replaceAll('{' r'organization' '}', organization.toString());
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
      bodyData = organizationPatch.toJson(bodyParameters);
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

    Organization responseData;

    try {
      responseData = await _apiClient.deserializeAsync<Organization>(
          response.data!, 'Organization');
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<Organization>(
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
