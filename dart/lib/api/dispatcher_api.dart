//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class DispatcherApi {
  DispatcherApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Retrieve all Rule resources.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] dispatcher (required):
  ///   The identifier of the resource.
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  ///
  /// * [List<String>] orderLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] category:
  ///
  /// * [List<String>] categoriesLeftSquareBracketRightSquareBracket:
  ///
  /// * [DateTime] after:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] service:
  ///
  /// * [List<String>] servicesLeftSquareBracketRightSquareBracket:
  ///
  /// * [int] page:
  ///   Page of the overview.
  ///
  /// * [int] limit:
  ///   Page of the overview.
  Future<Response> cgetRulesByDispatcherWithHttpInfo(
    String xKeyclicApp,
    String dispatcher, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    String category,
    List<String> categoriesLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    String service,
    List<String> servicesLeftSquareBracketRightSquareBracket,
    int page,
    int limit,
  }) async {
    // Verify required params are set.
    if (xKeyclicApp == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: xKeyclicApp');
    }
    if (dispatcher == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: dispatcher');
    }

    final path = r'/dispatchers/{dispatcher}/rules'
        .replaceAll('{' + 'dispatcher' + '}', dispatcher.toString());

    final queryParams = <QueryParam>[
      if (orderLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'order[]', orderLeftSquareBracketRightSquareBracket),
      if (category != null)
        ..._convertParametersForCollectionFormat('', 'category', category),
      if (categoriesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat('multi', 'categories[]',
            categoriesLeftSquareBracketRightSquareBracket),
      if (after != null)
        ..._convertParametersForCollectionFormat('', 'after', after),
      if (before != null)
        ..._convertParametersForCollectionFormat('', 'before', before),
      if (service != null)
        ..._convertParametersForCollectionFormat('', 'service', service),
      if (servicesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'services[]', servicesLeftSquareBracketRightSquareBracket),
      if (page != null)
        ..._convertParametersForCollectionFormat('', 'page', page),
      if (limit != null)
        ..._convertParametersForCollectionFormat('', 'limit', limit),
    ];
    final headerParams = <String, String>{
      if (acceptLanguage != null)
        r'accept-language': parameterToString(acceptLanguage),
      if (xDateTime != null) r'x-date-time': parameterToString(xDateTime),
      r'x-keyclic-app': parameterToString(xKeyclicApp),
      if (xKeyclicAppPlatform != null)
        r'x-keyclic-app-platform': parameterToString(xKeyclicAppPlatform),
      if (xKeyclicAppVersion != null)
        r'x-keyclic-app-version': parameterToString(xKeyclicAppVersion),
    };

    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final authNames = <String>[
      'bearer',
    ];

    return apiClient.invokeAPI(
      path: path,
      method: 'GET',
      queryParams: queryParams,
      headerParams: headerParams,
      formParams: formParams,
      contentType: contentTypes.isNotEmpty ? contentTypes[0] : null,
      authNames: authNames,
    );
  }

  /// Retrieve all Rule resources.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] dispatcher (required):
  ///   The identifier of the resource.
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  ///
  /// * [List<String>] orderLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] category:
  ///
  /// * [List<String>] categoriesLeftSquareBracketRightSquareBracket:
  ///
  /// * [DateTime] after:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] service:
  ///
  /// * [List<String>] servicesLeftSquareBracketRightSquareBracket:
  ///
  /// * [int] page:
  ///   Page of the overview.
  ///
  /// * [int] limit:
  ///   Page of the overview.
  Future<RulePagination> cgetRulesByDispatcher(
    String xKeyclicApp,
    String dispatcher, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    String category,
    List<String> categoriesLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    String service,
    List<String> servicesLeftSquareBracketRightSquareBracket,
    int page,
    int limit,
  }) async {
    final response = await cgetRulesByDispatcherWithHttpInfo(
      xKeyclicApp,
      dispatcher,
      acceptLanguage: acceptLanguage,
      xDateTime: xDateTime,
      xKeyclicAppPlatform: xKeyclicAppPlatform,
      xKeyclicAppVersion: xKeyclicAppVersion,
      orderLeftSquareBracketRightSquareBracket:
          orderLeftSquareBracketRightSquareBracket,
      category: category,
      categoriesLeftSquareBracketRightSquareBracket:
          categoriesLeftSquareBracketRightSquareBracket,
      after: after,
      before: before,
      service: service,
      servicesLeftSquareBracketRightSquareBracket:
          servicesLeftSquareBracketRightSquareBracket,
      page: page,
      limit: limit,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body == null || response.statusCode == HttpStatus.noContent) {
      return Future<RulePagination>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'RulePagination',
    ) as RulePagination;
  }

  /// Retrieve one Dispatcher resource.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] dispatcher (required):
  ///   The identifier of the resource.
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Response> getDispatcherWithHttpInfo(
    String xKeyclicApp,
    String dispatcher, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    // Verify required params are set.
    if (xKeyclicApp == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: xKeyclicApp');
    }
    if (dispatcher == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: dispatcher');
    }

    final path = r'/dispatchers/{dispatcher}'
        .replaceAll('{' + 'dispatcher' + '}', dispatcher.toString());

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{
      if (acceptLanguage != null)
        r'accept-language': parameterToString(acceptLanguage),
      if (xDateTime != null) r'x-date-time': parameterToString(xDateTime),
      r'x-keyclic-app': parameterToString(xKeyclicApp),
      if (xKeyclicAppPlatform != null)
        r'x-keyclic-app-platform': parameterToString(xKeyclicAppPlatform),
      if (xKeyclicAppVersion != null)
        r'x-keyclic-app-version': parameterToString(xKeyclicAppVersion),
    };

    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final authNames = <String>[
      'bearer',
    ];

    return apiClient.invokeAPI(
      path: path,
      method: 'GET',
      queryParams: queryParams,
      headerParams: headerParams,
      formParams: formParams,
      contentType: contentTypes.isNotEmpty ? contentTypes[0] : null,
      authNames: authNames,
    );
  }

  /// Retrieve one Dispatcher resource.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] dispatcher (required):
  ///   The identifier of the resource.
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Dispatcher> getDispatcher(
    String xKeyclicApp,
    String dispatcher, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    final response = await getDispatcherWithHttpInfo(
      xKeyclicApp,
      dispatcher,
      acceptLanguage: acceptLanguage,
      xDateTime: xDateTime,
      xKeyclicAppPlatform: xKeyclicAppPlatform,
      xKeyclicAppVersion: xKeyclicAppVersion,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body == null || response.statusCode == HttpStatus.noContent) {
      return Future<Dispatcher>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'Dispatcher',
    ) as Dispatcher;
  }
}
