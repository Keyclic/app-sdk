//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OrganizationApi {
  OrganizationApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Retrieve all Category resources.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
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
  /// * [String] businessActivity:
  ///
  /// * [List<String>] businessActivitiesLeftSquareBracketRightSquareBracket:
  ///
  /// * [DateTime] after:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] geoPoint:
  ///   One latitude and one longitude serialized and separated by a plus or a minus sign.
  ///
  /// * [String] geoCoordinates:
  ///   One latitude and one longitude serialized and separated by a plus or a minus sign.
  ///
  /// * [String] leaf:
  ///
  /// * [String] level:
  ///
  /// * [List<String>] organizationsLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] query:
  ///
  /// * [int] page:
  ///   Page of the overview.
  ///
  /// * [int] limit:
  ///   Page of the overview.
  Future<Response> cgetCategoriesByOrganizationWithHttpInfo(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    String businessActivity,
    List<String> businessActivitiesLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    String geoPoint,
    String geoCoordinates,
    String leaf,
    String level,
    List<String> organizationsLeftSquareBracketRightSquareBracket,
    String query,
    int page,
    int limit,
  }) async {
    // Verify required params are set.
    if (xKeyclicApp == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: xKeyclicApp');
    }
    if (organization == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organization');
    }

    final path = r'/organizations/{organization}/categories'
        .replaceAll('{' + 'organization' + '}', organization.toString());

    final queryParams = <QueryParam>[
      if (orderLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'order[]', orderLeftSquareBracketRightSquareBracket),
      if (businessActivity != null)
        ..._convertParametersForCollectionFormat(
            '', 'business_activity', businessActivity),
      if (businessActivitiesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi',
            'business_activities[]',
            businessActivitiesLeftSquareBracketRightSquareBracket),
      if (after != null)
        ..._convertParametersForCollectionFormat('', 'after', after),
      if (before != null)
        ..._convertParametersForCollectionFormat('', 'before', before),
      if (geoPoint != null)
        ..._convertParametersForCollectionFormat('', 'geo_point', geoPoint),
      if (geoCoordinates != null)
        ..._convertParametersForCollectionFormat(
            '', 'geo_coordinates', geoCoordinates),
      if (leaf != null)
        ..._convertParametersForCollectionFormat('', 'leaf', leaf),
      if (level != null)
        ..._convertParametersForCollectionFormat('', 'level', level),
      if (organizationsLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat('multi', 'organizations[]',
            organizationsLeftSquareBracketRightSquareBracket),
      if (query != null)
        ..._convertParametersForCollectionFormat('', 'query', query),
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

  /// Retrieve all Category resources.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
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
  /// * [String] businessActivity:
  ///
  /// * [List<String>] businessActivitiesLeftSquareBracketRightSquareBracket:
  ///
  /// * [DateTime] after:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] geoPoint:
  ///   One latitude and one longitude serialized and separated by a plus or a minus sign.
  ///
  /// * [String] geoCoordinates:
  ///   One latitude and one longitude serialized and separated by a plus or a minus sign.
  ///
  /// * [String] leaf:
  ///
  /// * [String] level:
  ///
  /// * [List<String>] organizationsLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] query:
  ///
  /// * [int] page:
  ///   Page of the overview.
  ///
  /// * [int] limit:
  ///   Page of the overview.
  Future<CategoryPagination> cgetCategoriesByOrganization(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    String businessActivity,
    List<String> businessActivitiesLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    String geoPoint,
    String geoCoordinates,
    String leaf,
    String level,
    List<String> organizationsLeftSquareBracketRightSquareBracket,
    String query,
    int page,
    int limit,
  }) async {
    final response = await cgetCategoriesByOrganizationWithHttpInfo(
      xKeyclicApp,
      organization,
      acceptLanguage: acceptLanguage,
      xDateTime: xDateTime,
      xKeyclicAppPlatform: xKeyclicAppPlatform,
      xKeyclicAppVersion: xKeyclicAppVersion,
      orderLeftSquareBracketRightSquareBracket:
          orderLeftSquareBracketRightSquareBracket,
      businessActivity: businessActivity,
      businessActivitiesLeftSquareBracketRightSquareBracket:
          businessActivitiesLeftSquareBracketRightSquareBracket,
      after: after,
      before: before,
      geoPoint: geoPoint,
      geoCoordinates: geoCoordinates,
      leaf: leaf,
      level: level,
      organizationsLeftSquareBracketRightSquareBracket:
          organizationsLeftSquareBracketRightSquareBracket,
      query: query,
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
      return Future<CategoryPagination>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'CategoryPagination',
    ) as CategoryPagination;
  }

  /// Retrieve all Document resources.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
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
  /// * [DateTime] after:
  ///
  /// * [DateTime] before:
  ///
  /// * [List<String>] organizationsLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] state:
  ///
  /// * [List<String>] statesLeftSquareBracketRightSquareBracket:
  ///
  /// * [int] page:
  ///   Page of the overview.
  ///
  /// * [int] limit:
  ///   Page of the overview.
  Future<Response> cgetDocumentsByOrganizationWithHttpInfo(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    List<String> organizationsLeftSquareBracketRightSquareBracket,
    String state,
    List<String> statesLeftSquareBracketRightSquareBracket,
    int page,
    int limit,
  }) async {
    // Verify required params are set.
    if (xKeyclicApp == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: xKeyclicApp');
    }
    if (organization == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organization');
    }

    final path = r'/organizations/{organization}/documents'
        .replaceAll('{' + 'organization' + '}', organization.toString());

    final queryParams = <QueryParam>[
      if (orderLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'order[]', orderLeftSquareBracketRightSquareBracket),
      if (after != null)
        ..._convertParametersForCollectionFormat('', 'after', after),
      if (before != null)
        ..._convertParametersForCollectionFormat('', 'before', before),
      if (organizationsLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat('multi', 'organizations[]',
            organizationsLeftSquareBracketRightSquareBracket),
      if (state != null)
        ..._convertParametersForCollectionFormat('', 'state', state),
      if (statesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'states[]', statesLeftSquareBracketRightSquareBracket),
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

  /// Retrieve all Document resources.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
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
  /// * [DateTime] after:
  ///
  /// * [DateTime] before:
  ///
  /// * [List<String>] organizationsLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] state:
  ///
  /// * [List<String>] statesLeftSquareBracketRightSquareBracket:
  ///
  /// * [int] page:
  ///   Page of the overview.
  ///
  /// * [int] limit:
  ///   Page of the overview.
  Future<DocumentPagination> cgetDocumentsByOrganization(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    List<String> organizationsLeftSquareBracketRightSquareBracket,
    String state,
    List<String> statesLeftSquareBracketRightSquareBracket,
    int page,
    int limit,
  }) async {
    final response = await cgetDocumentsByOrganizationWithHttpInfo(
      xKeyclicApp,
      organization,
      acceptLanguage: acceptLanguage,
      xDateTime: xDateTime,
      xKeyclicAppPlatform: xKeyclicAppPlatform,
      xKeyclicAppVersion: xKeyclicAppVersion,
      orderLeftSquareBracketRightSquareBracket:
          orderLeftSquareBracketRightSquareBracket,
      after: after,
      before: before,
      organizationsLeftSquareBracketRightSquareBracket:
          organizationsLeftSquareBracketRightSquareBracket,
      state: state,
      statesLeftSquareBracketRightSquareBracket:
          statesLeftSquareBracketRightSquareBracket,
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
      return Future<DocumentPagination>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'DocumentPagination',
    ) as DocumentPagination;
  }

  /// Retrieve all ExternalService resources.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
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
  /// * [DateTime] after:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] query:
  ///
  /// * [int] page:
  ///   Page of the overview.
  ///
  /// * [int] limit:
  ///   Page of the overview.
  Future<Response> cgetExternalServicesByOrganizationWithHttpInfo(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    String query,
    int page,
    int limit,
  }) async {
    // Verify required params are set.
    if (xKeyclicApp == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: xKeyclicApp');
    }
    if (organization == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organization');
    }

    final path = r'/organizations/{organization}/external-services'
        .replaceAll('{' + 'organization' + '}', organization.toString());

    final queryParams = <QueryParam>[
      if (orderLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'order[]', orderLeftSquareBracketRightSquareBracket),
      if (after != null)
        ..._convertParametersForCollectionFormat('', 'after', after),
      if (before != null)
        ..._convertParametersForCollectionFormat('', 'before', before),
      if (query != null)
        ..._convertParametersForCollectionFormat('', 'query', query),
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

  /// Retrieve all ExternalService resources.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
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
  /// * [DateTime] after:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] query:
  ///
  /// * [int] page:
  ///   Page of the overview.
  ///
  /// * [int] limit:
  ///   Page of the overview.
  Future<ExternalServicePagination> cgetExternalServicesByOrganization(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    String query,
    int page,
    int limit,
  }) async {
    final response = await cgetExternalServicesByOrganizationWithHttpInfo(
      xKeyclicApp,
      organization,
      acceptLanguage: acceptLanguage,
      xDateTime: xDateTime,
      xKeyclicAppPlatform: xKeyclicAppPlatform,
      xKeyclicAppVersion: xKeyclicAppVersion,
      orderLeftSquareBracketRightSquareBracket:
          orderLeftSquareBracketRightSquareBracket,
      after: after,
      before: before,
      query: query,
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
      return Future<ExternalServicePagination>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'ExternalServicePagination',
    ) as ExternalServicePagination;
  }

  /// Retrieve all InternalService resources.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
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
  /// * [DateTime] after:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] query:
  ///
  /// * [int] page:
  ///   Page of the overview.
  ///
  /// * [int] limit:
  ///   Page of the overview.
  Future<Response> cgetInternalServicesByOrganizationWithHttpInfo(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    String query,
    int page,
    int limit,
  }) async {
    // Verify required params are set.
    if (xKeyclicApp == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: xKeyclicApp');
    }
    if (organization == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organization');
    }

    final path = r'/organizations/{organization}/internal-services'
        .replaceAll('{' + 'organization' + '}', organization.toString());

    final queryParams = <QueryParam>[
      if (orderLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'order[]', orderLeftSquareBracketRightSquareBracket),
      if (after != null)
        ..._convertParametersForCollectionFormat('', 'after', after),
      if (before != null)
        ..._convertParametersForCollectionFormat('', 'before', before),
      if (query != null)
        ..._convertParametersForCollectionFormat('', 'query', query),
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

  /// Retrieve all InternalService resources.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
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
  /// * [DateTime] after:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] query:
  ///
  /// * [int] page:
  ///   Page of the overview.
  ///
  /// * [int] limit:
  ///   Page of the overview.
  Future<InternalServicePagination> cgetInternalServicesByOrganization(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    String query,
    int page,
    int limit,
  }) async {
    final response = await cgetInternalServicesByOrganizationWithHttpInfo(
      xKeyclicApp,
      organization,
      acceptLanguage: acceptLanguage,
      xDateTime: xDateTime,
      xKeyclicAppPlatform: xKeyclicAppPlatform,
      xKeyclicAppVersion: xKeyclicAppVersion,
      orderLeftSquareBracketRightSquareBracket:
          orderLeftSquareBracketRightSquareBracket,
      after: after,
      before: before,
      query: query,
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
      return Future<InternalServicePagination>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'InternalServicePagination',
    ) as InternalServicePagination;
  }

  /// Retrieve all Member resources.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
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
  /// * [DateTime] after:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] permission:
  ///
  /// * [String] query:
  ///
  /// * [String] role:
  ///
  /// * [List<String>] rolesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] type:
  ///
  /// * [int] page:
  ///   Page of the overview.
  ///
  /// * [int] limit:
  ///   Page of the overview.
  Future<Response> cgetMembersByOrganizationWithHttpInfo(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    String permission,
    String query,
    String role,
    List<String> rolesLeftSquareBracketRightSquareBracket,
    String type,
    int page,
    int limit,
  }) async {
    // Verify required params are set.
    if (xKeyclicApp == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: xKeyclicApp');
    }
    if (organization == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organization');
    }

    final path = r'/organizations/{organization}/members'
        .replaceAll('{' + 'organization' + '}', organization.toString());

    final queryParams = <QueryParam>[
      if (orderLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'order[]', orderLeftSquareBracketRightSquareBracket),
      if (after != null)
        ..._convertParametersForCollectionFormat('', 'after', after),
      if (before != null)
        ..._convertParametersForCollectionFormat('', 'before', before),
      if (permission != null)
        ..._convertParametersForCollectionFormat('', 'permission', permission),
      if (query != null)
        ..._convertParametersForCollectionFormat('', 'query', query),
      if (role != null)
        ..._convertParametersForCollectionFormat('', 'role', role),
      if (rolesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'roles[]', rolesLeftSquareBracketRightSquareBracket),
      if (type != null)
        ..._convertParametersForCollectionFormat('', 'type', type),
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

  /// Retrieve all Member resources.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
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
  /// * [DateTime] after:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] permission:
  ///
  /// * [String] query:
  ///
  /// * [String] role:
  ///
  /// * [List<String>] rolesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] type:
  ///
  /// * [int] page:
  ///   Page of the overview.
  ///
  /// * [int] limit:
  ///   Page of the overview.
  Future<MemberPagination> cgetMembersByOrganization(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    String permission,
    String query,
    String role,
    List<String> rolesLeftSquareBracketRightSquareBracket,
    String type,
    int page,
    int limit,
  }) async {
    final response = await cgetMembersByOrganizationWithHttpInfo(
      xKeyclicApp,
      organization,
      acceptLanguage: acceptLanguage,
      xDateTime: xDateTime,
      xKeyclicAppPlatform: xKeyclicAppPlatform,
      xKeyclicAppVersion: xKeyclicAppVersion,
      orderLeftSquareBracketRightSquareBracket:
          orderLeftSquareBracketRightSquareBracket,
      after: after,
      before: before,
      permission: permission,
      query: query,
      role: role,
      rolesLeftSquareBracketRightSquareBracket:
          rolesLeftSquareBracketRightSquareBracket,
      type: type,
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
      return Future<MemberPagination>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'MemberPagination',
    ) as MemberPagination;
  }

  /// Retrieve all Occupant resources.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
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
  /// * [DateTime] after:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] member:
  ///
  /// * [List<String>] membersLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] person:
  ///
  /// * [List<String>] personsLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] place:
  ///
  /// * [List<String>] placesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] query:
  ///
  /// * [int] page:
  ///   Page of the overview.
  ///
  /// * [int] limit:
  ///   Page of the overview.
  Future<Response> cgetOccupantsByOrganizationWithHttpInfo(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    String member,
    List<String> membersLeftSquareBracketRightSquareBracket,
    String person,
    List<String> personsLeftSquareBracketRightSquareBracket,
    String place,
    List<String> placesLeftSquareBracketRightSquareBracket,
    String query,
    int page,
    int limit,
  }) async {
    // Verify required params are set.
    if (xKeyclicApp == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: xKeyclicApp');
    }
    if (organization == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organization');
    }

    final path = r'/organizations/{organization}/occupants'
        .replaceAll('{' + 'organization' + '}', organization.toString());

    final queryParams = <QueryParam>[
      if (orderLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'order[]', orderLeftSquareBracketRightSquareBracket),
      if (after != null)
        ..._convertParametersForCollectionFormat('', 'after', after),
      if (before != null)
        ..._convertParametersForCollectionFormat('', 'before', before),
      if (member != null)
        ..._convertParametersForCollectionFormat('', 'member', member),
      if (membersLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'members[]', membersLeftSquareBracketRightSquareBracket),
      if (person != null)
        ..._convertParametersForCollectionFormat('', 'person', person),
      if (personsLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'persons[]', personsLeftSquareBracketRightSquareBracket),
      if (place != null)
        ..._convertParametersForCollectionFormat('', 'place', place),
      if (placesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'places[]', placesLeftSquareBracketRightSquareBracket),
      if (query != null)
        ..._convertParametersForCollectionFormat('', 'query', query),
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

  /// Retrieve all Occupant resources.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
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
  /// * [DateTime] after:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] member:
  ///
  /// * [List<String>] membersLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] person:
  ///
  /// * [List<String>] personsLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] place:
  ///
  /// * [List<String>] placesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] query:
  ///
  /// * [int] page:
  ///   Page of the overview.
  ///
  /// * [int] limit:
  ///   Page of the overview.
  Future<OccupantPagination> cgetOccupantsByOrganization(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    String member,
    List<String> membersLeftSquareBracketRightSquareBracket,
    String person,
    List<String> personsLeftSquareBracketRightSquareBracket,
    String place,
    List<String> placesLeftSquareBracketRightSquareBracket,
    String query,
    int page,
    int limit,
  }) async {
    final response = await cgetOccupantsByOrganizationWithHttpInfo(
      xKeyclicApp,
      organization,
      acceptLanguage: acceptLanguage,
      xDateTime: xDateTime,
      xKeyclicAppPlatform: xKeyclicAppPlatform,
      xKeyclicAppVersion: xKeyclicAppVersion,
      orderLeftSquareBracketRightSquareBracket:
          orderLeftSquareBracketRightSquareBracket,
      after: after,
      before: before,
      member: member,
      membersLeftSquareBracketRightSquareBracket:
          membersLeftSquareBracketRightSquareBracket,
      person: person,
      personsLeftSquareBracketRightSquareBracket:
          personsLeftSquareBracketRightSquareBracket,
      place: place,
      placesLeftSquareBracketRightSquareBracket:
          placesLeftSquareBracketRightSquareBracket,
      query: query,
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
      return Future<OccupantPagination>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'OccupantPagination',
    ) as OccupantPagination;
  }

  /// Retrieve all Operation resources.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
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
  /// * [String] assignedTo:
  ///
  /// * [List<String>] assignedTosLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] batch:
  ///
  /// * [List<String>] batchesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] category:
  ///
  /// * [List<String>] categoriesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] createdBy:
  ///
  /// * [List<String>] createdBiesLeftSquareBracketRightSquareBracket:
  ///
  /// * [DateTime] after:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] deep:
  ///
  /// * [String] delegatedTo:
  ///
  /// * [List<String>] delegatedTosLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] hasDocuments:
  ///
  /// * [String] isNull:
  ///
  /// * [String] leaf:
  ///
  /// * [String] level:
  ///
  /// * [String] managedBy:
  ///
  /// * [List<String>] managedBiesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] member:
  ///
  /// * [List<String>] membersLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] operationStateAll:
  ///
  /// * [String] operationState:
  ///
  /// * [List<String>] operationStatesLeftSquareBracketRightSquareBracket:
  ///
  /// * [List<String>] organizationsLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] phase:
  ///
  /// * [List<String>] phasesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] place:
  ///
  /// * [List<String>] placesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] priority:
  ///
  /// * [List<String>] prioritiesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] query:
  ///
  /// * [List<String>] ratingLeftSquareBracketRightSquareBracket:
  ///
  /// * [DateTime] scheduledAtAfter:
  ///
  /// * [DateTime] scheduledAtBefore:
  ///
  /// * [String] state:
  ///
  /// * [List<String>] statesLeftSquareBracketRightSquareBracket:
  ///
  /// * [List<String>] visibilityLeftSquareBracketRightSquareBracket:
  ///
  /// * [int] page:
  ///   Page of the overview.
  ///
  /// * [int] limit:
  ///   Page of the overview.
  Future<Response> cgetOperationsByOrganizationWithHttpInfo(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    String assignedTo,
    List<String> assignedTosLeftSquareBracketRightSquareBracket,
    String batch,
    List<String> batchesLeftSquareBracketRightSquareBracket,
    String category,
    List<String> categoriesLeftSquareBracketRightSquareBracket,
    String createdBy,
    List<String> createdBiesLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    String deep,
    String delegatedTo,
    List<String> delegatedTosLeftSquareBracketRightSquareBracket,
    String hasDocuments,
    String isNull,
    String leaf,
    String level,
    String managedBy,
    List<String> managedBiesLeftSquareBracketRightSquareBracket,
    String member,
    List<String> membersLeftSquareBracketRightSquareBracket,
    String operationStateAll,
    String operationState,
    List<String> operationStatesLeftSquareBracketRightSquareBracket,
    List<String> organizationsLeftSquareBracketRightSquareBracket,
    String phase,
    List<String> phasesLeftSquareBracketRightSquareBracket,
    String place,
    List<String> placesLeftSquareBracketRightSquareBracket,
    String priority,
    List<String> prioritiesLeftSquareBracketRightSquareBracket,
    String query,
    List<String> ratingLeftSquareBracketRightSquareBracket,
    DateTime scheduledAtAfter,
    DateTime scheduledAtBefore,
    String state,
    List<String> statesLeftSquareBracketRightSquareBracket,
    List<String> visibilityLeftSquareBracketRightSquareBracket,
    int page,
    int limit,
  }) async {
    // Verify required params are set.
    if (xKeyclicApp == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: xKeyclicApp');
    }
    if (organization == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organization');
    }

    final path = r'/organizations/{organization}/operations'
        .replaceAll('{' + 'organization' + '}', organization.toString());

    final queryParams = <QueryParam>[
      if (orderLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'order[]', orderLeftSquareBracketRightSquareBracket),
      if (assignedTo != null)
        ..._convertParametersForCollectionFormat('', 'assigned_to', assignedTo),
      if (assignedTosLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat('multi', 'assigned_tos[]',
            assignedTosLeftSquareBracketRightSquareBracket),
      if (batch != null)
        ..._convertParametersForCollectionFormat('', 'batch', batch),
      if (batchesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'batches[]', batchesLeftSquareBracketRightSquareBracket),
      if (category != null)
        ..._convertParametersForCollectionFormat('', 'category', category),
      if (categoriesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat('multi', 'categories[]',
            categoriesLeftSquareBracketRightSquareBracket),
      if (createdBy != null)
        ..._convertParametersForCollectionFormat('', 'created_by', createdBy),
      if (createdBiesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat('multi', 'created_bies[]',
            createdBiesLeftSquareBracketRightSquareBracket),
      if (after != null)
        ..._convertParametersForCollectionFormat('', 'after', after),
      if (before != null)
        ..._convertParametersForCollectionFormat('', 'before', before),
      if (deep != null)
        ..._convertParametersForCollectionFormat('', 'deep', deep),
      if (delegatedTo != null)
        ..._convertParametersForCollectionFormat(
            '', 'delegated_to', delegatedTo),
      if (delegatedTosLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat('multi', 'delegated_tos[]',
            delegatedTosLeftSquareBracketRightSquareBracket),
      if (hasDocuments != null)
        ..._convertParametersForCollectionFormat(
            '', 'has_documents', hasDocuments),
      if (isNull != null)
        ..._convertParametersForCollectionFormat('', 'is_null', isNull),
      if (leaf != null)
        ..._convertParametersForCollectionFormat('', 'leaf', leaf),
      if (level != null)
        ..._convertParametersForCollectionFormat('', 'level', level),
      if (managedBy != null)
        ..._convertParametersForCollectionFormat('', 'managed_by', managedBy),
      if (managedBiesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat('multi', 'managed_bies[]',
            managedBiesLeftSquareBracketRightSquareBracket),
      if (member != null)
        ..._convertParametersForCollectionFormat('', 'member', member),
      if (membersLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'members[]', membersLeftSquareBracketRightSquareBracket),
      if (operationStateAll != null)
        ..._convertParametersForCollectionFormat(
            '', 'operation_state_all', operationStateAll),
      if (operationState != null)
        ..._convertParametersForCollectionFormat(
            '', 'operation_state', operationState),
      if (operationStatesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat('multi', 'operation_states[]',
            operationStatesLeftSquareBracketRightSquareBracket),
      if (organizationsLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat('multi', 'organizations[]',
            organizationsLeftSquareBracketRightSquareBracket),
      if (phase != null)
        ..._convertParametersForCollectionFormat('', 'phase', phase),
      if (phasesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'phases[]', phasesLeftSquareBracketRightSquareBracket),
      if (place != null)
        ..._convertParametersForCollectionFormat('', 'place', place),
      if (placesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'places[]', placesLeftSquareBracketRightSquareBracket),
      if (priority != null)
        ..._convertParametersForCollectionFormat('', 'priority', priority),
      if (prioritiesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat('multi', 'priorities[]',
            prioritiesLeftSquareBracketRightSquareBracket),
      if (query != null)
        ..._convertParametersForCollectionFormat('', 'query', query),
      if (ratingLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'rating[]', ratingLeftSquareBracketRightSquareBracket),
      if (scheduledAtAfter != null)
        ..._convertParametersForCollectionFormat(
            '', 'scheduled_at_after', scheduledAtAfter),
      if (scheduledAtBefore != null)
        ..._convertParametersForCollectionFormat(
            '', 'scheduled_at_before', scheduledAtBefore),
      if (state != null)
        ..._convertParametersForCollectionFormat('', 'state', state),
      if (statesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'states[]', statesLeftSquareBracketRightSquareBracket),
      if (visibilityLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat('multi', 'visibility[]',
            visibilityLeftSquareBracketRightSquareBracket),
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

  /// Retrieve all Operation resources.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
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
  /// * [String] assignedTo:
  ///
  /// * [List<String>] assignedTosLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] batch:
  ///
  /// * [List<String>] batchesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] category:
  ///
  /// * [List<String>] categoriesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] createdBy:
  ///
  /// * [List<String>] createdBiesLeftSquareBracketRightSquareBracket:
  ///
  /// * [DateTime] after:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] deep:
  ///
  /// * [String] delegatedTo:
  ///
  /// * [List<String>] delegatedTosLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] hasDocuments:
  ///
  /// * [String] isNull:
  ///
  /// * [String] leaf:
  ///
  /// * [String] level:
  ///
  /// * [String] managedBy:
  ///
  /// * [List<String>] managedBiesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] member:
  ///
  /// * [List<String>] membersLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] operationStateAll:
  ///
  /// * [String] operationState:
  ///
  /// * [List<String>] operationStatesLeftSquareBracketRightSquareBracket:
  ///
  /// * [List<String>] organizationsLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] phase:
  ///
  /// * [List<String>] phasesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] place:
  ///
  /// * [List<String>] placesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] priority:
  ///
  /// * [List<String>] prioritiesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] query:
  ///
  /// * [List<String>] ratingLeftSquareBracketRightSquareBracket:
  ///
  /// * [DateTime] scheduledAtAfter:
  ///
  /// * [DateTime] scheduledAtBefore:
  ///
  /// * [String] state:
  ///
  /// * [List<String>] statesLeftSquareBracketRightSquareBracket:
  ///
  /// * [List<String>] visibilityLeftSquareBracketRightSquareBracket:
  ///
  /// * [int] page:
  ///   Page of the overview.
  ///
  /// * [int] limit:
  ///   Page of the overview.
  Future<OperationPagination> cgetOperationsByOrganization(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    String assignedTo,
    List<String> assignedTosLeftSquareBracketRightSquareBracket,
    String batch,
    List<String> batchesLeftSquareBracketRightSquareBracket,
    String category,
    List<String> categoriesLeftSquareBracketRightSquareBracket,
    String createdBy,
    List<String> createdBiesLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    String deep,
    String delegatedTo,
    List<String> delegatedTosLeftSquareBracketRightSquareBracket,
    String hasDocuments,
    String isNull,
    String leaf,
    String level,
    String managedBy,
    List<String> managedBiesLeftSquareBracketRightSquareBracket,
    String member,
    List<String> membersLeftSquareBracketRightSquareBracket,
    String operationStateAll,
    String operationState,
    List<String> operationStatesLeftSquareBracketRightSquareBracket,
    List<String> organizationsLeftSquareBracketRightSquareBracket,
    String phase,
    List<String> phasesLeftSquareBracketRightSquareBracket,
    String place,
    List<String> placesLeftSquareBracketRightSquareBracket,
    String priority,
    List<String> prioritiesLeftSquareBracketRightSquareBracket,
    String query,
    List<String> ratingLeftSquareBracketRightSquareBracket,
    DateTime scheduledAtAfter,
    DateTime scheduledAtBefore,
    String state,
    List<String> statesLeftSquareBracketRightSquareBracket,
    List<String> visibilityLeftSquareBracketRightSquareBracket,
    int page,
    int limit,
  }) async {
    final response = await cgetOperationsByOrganizationWithHttpInfo(
      xKeyclicApp,
      organization,
      acceptLanguage: acceptLanguage,
      xDateTime: xDateTime,
      xKeyclicAppPlatform: xKeyclicAppPlatform,
      xKeyclicAppVersion: xKeyclicAppVersion,
      orderLeftSquareBracketRightSquareBracket:
          orderLeftSquareBracketRightSquareBracket,
      assignedTo: assignedTo,
      assignedTosLeftSquareBracketRightSquareBracket:
          assignedTosLeftSquareBracketRightSquareBracket,
      batch: batch,
      batchesLeftSquareBracketRightSquareBracket:
          batchesLeftSquareBracketRightSquareBracket,
      category: category,
      categoriesLeftSquareBracketRightSquareBracket:
          categoriesLeftSquareBracketRightSquareBracket,
      createdBy: createdBy,
      createdBiesLeftSquareBracketRightSquareBracket:
          createdBiesLeftSquareBracketRightSquareBracket,
      after: after,
      before: before,
      deep: deep,
      delegatedTo: delegatedTo,
      delegatedTosLeftSquareBracketRightSquareBracket:
          delegatedTosLeftSquareBracketRightSquareBracket,
      hasDocuments: hasDocuments,
      isNull: isNull,
      leaf: leaf,
      level: level,
      managedBy: managedBy,
      managedBiesLeftSquareBracketRightSquareBracket:
          managedBiesLeftSquareBracketRightSquareBracket,
      member: member,
      membersLeftSquareBracketRightSquareBracket:
          membersLeftSquareBracketRightSquareBracket,
      operationStateAll: operationStateAll,
      operationState: operationState,
      operationStatesLeftSquareBracketRightSquareBracket:
          operationStatesLeftSquareBracketRightSquareBracket,
      organizationsLeftSquareBracketRightSquareBracket:
          organizationsLeftSquareBracketRightSquareBracket,
      phase: phase,
      phasesLeftSquareBracketRightSquareBracket:
          phasesLeftSquareBracketRightSquareBracket,
      place: place,
      placesLeftSquareBracketRightSquareBracket:
          placesLeftSquareBracketRightSquareBracket,
      priority: priority,
      prioritiesLeftSquareBracketRightSquareBracket:
          prioritiesLeftSquareBracketRightSquareBracket,
      query: query,
      ratingLeftSquareBracketRightSquareBracket:
          ratingLeftSquareBracketRightSquareBracket,
      scheduledAtAfter: scheduledAtAfter,
      scheduledAtBefore: scheduledAtBefore,
      state: state,
      statesLeftSquareBracketRightSquareBracket:
          statesLeftSquareBracketRightSquareBracket,
      visibilityLeftSquareBracketRightSquareBracket:
          visibilityLeftSquareBracketRightSquareBracket,
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
      return Future<OperationPagination>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'OperationPagination',
    ) as OperationPagination;
  }

  /// Retrieve all Organization resources.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
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
  /// * [String] businessActivity:
  ///
  /// * [List<String>] businessActivitiesLeftSquareBracketRightSquareBracket:
  ///
  /// * [DateTime] after:
  ///
  /// * [DateTime] before:
  ///
  /// * [DateTime] disabledAt:
  ///
  /// * [String] geoPoint:
  ///   One latitude and one longitude serialized and separated by a plus or a minus sign.
  ///
  /// * [String] geoCoordinates:
  ///   One latitude and one longitude serialized and separated by a plus or a minus sign.
  ///
  /// * [String] organization:
  ///
  /// * [List<String>] organizationsLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] query:
  ///
  /// * [int] page:
  ///   Page of the overview.
  ///
  /// * [int] limit:
  ///   Page of the overview.
  Future<Response> cgetOrganizationsWithHttpInfo(
    String xKeyclicApp, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    String businessActivity,
    List<String> businessActivitiesLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    DateTime disabledAt,
    String geoPoint,
    String geoCoordinates,
    String organization,
    List<String> organizationsLeftSquareBracketRightSquareBracket,
    String query,
    int page,
    int limit,
  }) async {
    // Verify required params are set.
    if (xKeyclicApp == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: xKeyclicApp');
    }

    final path = r'/organizations';

    final queryParams = <QueryParam>[
      if (orderLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'order[]', orderLeftSquareBracketRightSquareBracket),
      if (businessActivity != null)
        ..._convertParametersForCollectionFormat(
            '', 'business_activity', businessActivity),
      if (businessActivitiesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi',
            'business_activities[]',
            businessActivitiesLeftSquareBracketRightSquareBracket),
      if (after != null)
        ..._convertParametersForCollectionFormat('', 'after', after),
      if (before != null)
        ..._convertParametersForCollectionFormat('', 'before', before),
      if (disabledAt != null)
        ..._convertParametersForCollectionFormat('', 'disabledAt', disabledAt),
      if (geoPoint != null)
        ..._convertParametersForCollectionFormat('', 'geo_point', geoPoint),
      if (geoCoordinates != null)
        ..._convertParametersForCollectionFormat(
            '', 'geo_coordinates', geoCoordinates),
      if (organization != null)
        ..._convertParametersForCollectionFormat(
            '', 'organization', organization),
      if (organizationsLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat('multi', 'organizations[]',
            organizationsLeftSquareBracketRightSquareBracket),
      if (query != null)
        ..._convertParametersForCollectionFormat('', 'query', query),
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

  /// Retrieve all Organization resources.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
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
  /// * [String] businessActivity:
  ///
  /// * [List<String>] businessActivitiesLeftSquareBracketRightSquareBracket:
  ///
  /// * [DateTime] after:
  ///
  /// * [DateTime] before:
  ///
  /// * [DateTime] disabledAt:
  ///
  /// * [String] geoPoint:
  ///   One latitude and one longitude serialized and separated by a plus or a minus sign.
  ///
  /// * [String] geoCoordinates:
  ///   One latitude and one longitude serialized and separated by a plus or a minus sign.
  ///
  /// * [String] organization:
  ///
  /// * [List<String>] organizationsLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] query:
  ///
  /// * [int] page:
  ///   Page of the overview.
  ///
  /// * [int] limit:
  ///   Page of the overview.
  Future<OrganizationPagination> cgetOrganizations(
    String xKeyclicApp, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    String businessActivity,
    List<String> businessActivitiesLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    DateTime disabledAt,
    String geoPoint,
    String geoCoordinates,
    String organization,
    List<String> organizationsLeftSquareBracketRightSquareBracket,
    String query,
    int page,
    int limit,
  }) async {
    final response = await cgetOrganizationsWithHttpInfo(
      xKeyclicApp,
      acceptLanguage: acceptLanguage,
      xDateTime: xDateTime,
      xKeyclicAppPlatform: xKeyclicAppPlatform,
      xKeyclicAppVersion: xKeyclicAppVersion,
      orderLeftSquareBracketRightSquareBracket:
          orderLeftSquareBracketRightSquareBracket,
      businessActivity: businessActivity,
      businessActivitiesLeftSquareBracketRightSquareBracket:
          businessActivitiesLeftSquareBracketRightSquareBracket,
      after: after,
      before: before,
      disabledAt: disabledAt,
      geoPoint: geoPoint,
      geoCoordinates: geoCoordinates,
      organization: organization,
      organizationsLeftSquareBracketRightSquareBracket:
          organizationsLeftSquareBracketRightSquareBracket,
      query: query,
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
      return Future<OrganizationPagination>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'OrganizationPagination',
    ) as OrganizationPagination;
  }

  /// Retrieve all Place resources.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
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
  /// * [String] businessActivity:
  ///
  /// * [List<String>] businessActivitiesLeftSquareBracketRightSquareBracket:
  ///
  /// * [DateTime] after:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] geoElevation:
  ///
  /// * [List<String>] geoHashLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] geoPoint:
  ///   One latitude and one longitude serialized and separated by a plus or a minus sign.
  ///
  /// * [String] geoCoordinates:
  ///   One latitude and one longitude serialized and separated by a plus or a minus sign.
  ///
  /// * [String] leaf:
  ///
  /// * [String] level:
  ///
  /// * [List<String>] organizationsLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] parent:
  ///
  /// * [List<String>] parentsLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] query:
  ///
  /// * [int] page:
  ///   Page of the overview.
  ///
  /// * [int] limit:
  ///   Page of the overview.
  Future<Response> cgetPlacesByOrganizationWithHttpInfo(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    String businessActivity,
    List<String> businessActivitiesLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    String geoElevation,
    List<String> geoHashLeftSquareBracketRightSquareBracket,
    String geoPoint,
    String geoCoordinates,
    String leaf,
    String level,
    List<String> organizationsLeftSquareBracketRightSquareBracket,
    String parent,
    List<String> parentsLeftSquareBracketRightSquareBracket,
    String query,
    int page,
    int limit,
  }) async {
    // Verify required params are set.
    if (xKeyclicApp == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: xKeyclicApp');
    }
    if (organization == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organization');
    }

    final path = r'/organizations/{organization}/places'
        .replaceAll('{' + 'organization' + '}', organization.toString());

    final queryParams = <QueryParam>[
      if (orderLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'order[]', orderLeftSquareBracketRightSquareBracket),
      if (businessActivity != null)
        ..._convertParametersForCollectionFormat(
            '', 'business_activity', businessActivity),
      if (businessActivitiesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi',
            'business_activities[]',
            businessActivitiesLeftSquareBracketRightSquareBracket),
      if (after != null)
        ..._convertParametersForCollectionFormat('', 'after', after),
      if (before != null)
        ..._convertParametersForCollectionFormat('', 'before', before),
      if (geoElevation != null)
        ..._convertParametersForCollectionFormat(
            '', 'geo_elevation', geoElevation),
      if (geoHashLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'geo_hash[]', geoHashLeftSquareBracketRightSquareBracket),
      if (geoPoint != null)
        ..._convertParametersForCollectionFormat('', 'geo_point', geoPoint),
      if (geoCoordinates != null)
        ..._convertParametersForCollectionFormat(
            '', 'geo_coordinates', geoCoordinates),
      if (leaf != null)
        ..._convertParametersForCollectionFormat('', 'leaf', leaf),
      if (level != null)
        ..._convertParametersForCollectionFormat('', 'level', level),
      if (organizationsLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat('multi', 'organizations[]',
            organizationsLeftSquareBracketRightSquareBracket),
      if (parent != null)
        ..._convertParametersForCollectionFormat('', 'parent', parent),
      if (parentsLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'parents[]', parentsLeftSquareBracketRightSquareBracket),
      if (query != null)
        ..._convertParametersForCollectionFormat('', 'query', query),
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

  /// Retrieve all Place resources.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
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
  /// * [String] businessActivity:
  ///
  /// * [List<String>] businessActivitiesLeftSquareBracketRightSquareBracket:
  ///
  /// * [DateTime] after:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] geoElevation:
  ///
  /// * [List<String>] geoHashLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] geoPoint:
  ///   One latitude and one longitude serialized and separated by a plus or a minus sign.
  ///
  /// * [String] geoCoordinates:
  ///   One latitude and one longitude serialized and separated by a plus or a minus sign.
  ///
  /// * [String] leaf:
  ///
  /// * [String] level:
  ///
  /// * [List<String>] organizationsLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] parent:
  ///
  /// * [List<String>] parentsLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] query:
  ///
  /// * [int] page:
  ///   Page of the overview.
  ///
  /// * [int] limit:
  ///   Page of the overview.
  Future<PlacePagination> cgetPlacesByOrganization(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    String businessActivity,
    List<String> businessActivitiesLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    String geoElevation,
    List<String> geoHashLeftSquareBracketRightSquareBracket,
    String geoPoint,
    String geoCoordinates,
    String leaf,
    String level,
    List<String> organizationsLeftSquareBracketRightSquareBracket,
    String parent,
    List<String> parentsLeftSquareBracketRightSquareBracket,
    String query,
    int page,
    int limit,
  }) async {
    final response = await cgetPlacesByOrganizationWithHttpInfo(
      xKeyclicApp,
      organization,
      acceptLanguage: acceptLanguage,
      xDateTime: xDateTime,
      xKeyclicAppPlatform: xKeyclicAppPlatform,
      xKeyclicAppVersion: xKeyclicAppVersion,
      orderLeftSquareBracketRightSquareBracket:
          orderLeftSquareBracketRightSquareBracket,
      businessActivity: businessActivity,
      businessActivitiesLeftSquareBracketRightSquareBracket:
          businessActivitiesLeftSquareBracketRightSquareBracket,
      after: after,
      before: before,
      geoElevation: geoElevation,
      geoHashLeftSquareBracketRightSquareBracket:
          geoHashLeftSquareBracketRightSquareBracket,
      geoPoint: geoPoint,
      geoCoordinates: geoCoordinates,
      leaf: leaf,
      level: level,
      organizationsLeftSquareBracketRightSquareBracket:
          organizationsLeftSquareBracketRightSquareBracket,
      parent: parent,
      parentsLeftSquareBracketRightSquareBracket:
          parentsLeftSquareBracketRightSquareBracket,
      query: query,
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
      return Future<PlacePagination>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'PlacePagination',
    ) as PlacePagination;
  }

  /// Retrieve all Publication resources.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
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
  /// * [DateTime] after:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] place:
  ///
  /// * [List<String>] placesLeftSquareBracketRightSquareBracket:
  ///
  /// * [int] page:
  ///   Page of the overview.
  ///
  /// * [int] limit:
  ///   Page of the overview.
  Future<Response> cgetPublicationsByOrganizationWithHttpInfo(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    String place,
    List<String> placesLeftSquareBracketRightSquareBracket,
    int page,
    int limit,
  }) async {
    // Verify required params are set.
    if (xKeyclicApp == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: xKeyclicApp');
    }
    if (organization == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organization');
    }

    final path = r'/organizations/{organization}/publications'
        .replaceAll('{' + 'organization' + '}', organization.toString());

    final queryParams = <QueryParam>[
      if (orderLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'order[]', orderLeftSquareBracketRightSquareBracket),
      if (after != null)
        ..._convertParametersForCollectionFormat('', 'after', after),
      if (before != null)
        ..._convertParametersForCollectionFormat('', 'before', before),
      if (place != null)
        ..._convertParametersForCollectionFormat('', 'place', place),
      if (placesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'places[]', placesLeftSquareBracketRightSquareBracket),
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

  /// Retrieve all Publication resources.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
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
  /// * [DateTime] after:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] place:
  ///
  /// * [List<String>] placesLeftSquareBracketRightSquareBracket:
  ///
  /// * [int] page:
  ///   Page of the overview.
  ///
  /// * [int] limit:
  ///   Page of the overview.
  Future<PublicationPagination> cgetPublicationsByOrganization(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    String place,
    List<String> placesLeftSquareBracketRightSquareBracket,
    int page,
    int limit,
  }) async {
    final response = await cgetPublicationsByOrganizationWithHttpInfo(
      xKeyclicApp,
      organization,
      acceptLanguage: acceptLanguage,
      xDateTime: xDateTime,
      xKeyclicAppPlatform: xKeyclicAppPlatform,
      xKeyclicAppVersion: xKeyclicAppVersion,
      orderLeftSquareBracketRightSquareBracket:
          orderLeftSquareBracketRightSquareBracket,
      after: after,
      before: before,
      place: place,
      placesLeftSquareBracketRightSquareBracket:
          placesLeftSquareBracketRightSquareBracket,
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
      return Future<PublicationPagination>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'PublicationPagination',
    ) as PublicationPagination;
  }

  /// Retrieve all Report resources.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
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
  /// * [String] assignedTo:
  ///
  /// * [List<String>] assignedTosLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] batch:
  ///
  /// * [List<String>] batchesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] category:
  ///
  /// * [List<String>] categoriesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] createdBy:
  ///
  /// * [List<String>] createdBiesLeftSquareBracketRightSquareBracket:
  ///
  /// * [DateTime] after:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] deep:
  ///
  /// * [String] delegatedTo:
  ///
  /// * [List<String>] delegatedTosLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] hasDocuments:
  ///
  /// * [String] isNull:
  ///
  /// * [String] leaf:
  ///
  /// * [String] level:
  ///
  /// * [String] managedBy:
  ///
  /// * [List<String>] managedBiesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] member:
  ///
  /// * [List<String>] membersLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] operationStateAll:
  ///
  /// * [String] operationState:
  ///
  /// * [List<String>] operationStatesLeftSquareBracketRightSquareBracket:
  ///
  /// * [List<String>] organizationsLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] phase:
  ///
  /// * [List<String>] phasesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] place:
  ///
  /// * [List<String>] placesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] priority:
  ///
  /// * [List<String>] prioritiesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] query:
  ///
  /// * [List<String>] ratingLeftSquareBracketRightSquareBracket:
  ///
  /// * [DateTime] scheduledAtAfter:
  ///
  /// * [DateTime] scheduledAtBefore:
  ///
  /// * [String] state:
  ///
  /// * [List<String>] statesLeftSquareBracketRightSquareBracket:
  ///
  /// * [List<String>] visibilityLeftSquareBracketRightSquareBracket:
  ///
  /// * [int] page:
  ///   Page of the overview.
  ///
  /// * [int] limit:
  ///   Page of the overview.
  Future<Response> cgetReportsByOrganizationWithHttpInfo(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    String assignedTo,
    List<String> assignedTosLeftSquareBracketRightSquareBracket,
    String batch,
    List<String> batchesLeftSquareBracketRightSquareBracket,
    String category,
    List<String> categoriesLeftSquareBracketRightSquareBracket,
    String createdBy,
    List<String> createdBiesLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    String deep,
    String delegatedTo,
    List<String> delegatedTosLeftSquareBracketRightSquareBracket,
    String hasDocuments,
    String isNull,
    String leaf,
    String level,
    String managedBy,
    List<String> managedBiesLeftSquareBracketRightSquareBracket,
    String member,
    List<String> membersLeftSquareBracketRightSquareBracket,
    String operationStateAll,
    String operationState,
    List<String> operationStatesLeftSquareBracketRightSquareBracket,
    List<String> organizationsLeftSquareBracketRightSquareBracket,
    String phase,
    List<String> phasesLeftSquareBracketRightSquareBracket,
    String place,
    List<String> placesLeftSquareBracketRightSquareBracket,
    String priority,
    List<String> prioritiesLeftSquareBracketRightSquareBracket,
    String query,
    List<String> ratingLeftSquareBracketRightSquareBracket,
    DateTime scheduledAtAfter,
    DateTime scheduledAtBefore,
    String state,
    List<String> statesLeftSquareBracketRightSquareBracket,
    List<String> visibilityLeftSquareBracketRightSquareBracket,
    int page,
    int limit,
  }) async {
    // Verify required params are set.
    if (xKeyclicApp == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: xKeyclicApp');
    }
    if (organization == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organization');
    }

    final path = r'/organizations/{organization}/reports'
        .replaceAll('{' + 'organization' + '}', organization.toString());

    final queryParams = <QueryParam>[
      if (orderLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'order[]', orderLeftSquareBracketRightSquareBracket),
      if (assignedTo != null)
        ..._convertParametersForCollectionFormat('', 'assigned_to', assignedTo),
      if (assignedTosLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat('multi', 'assigned_tos[]',
            assignedTosLeftSquareBracketRightSquareBracket),
      if (batch != null)
        ..._convertParametersForCollectionFormat('', 'batch', batch),
      if (batchesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'batches[]', batchesLeftSquareBracketRightSquareBracket),
      if (category != null)
        ..._convertParametersForCollectionFormat('', 'category', category),
      if (categoriesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat('multi', 'categories[]',
            categoriesLeftSquareBracketRightSquareBracket),
      if (createdBy != null)
        ..._convertParametersForCollectionFormat('', 'created_by', createdBy),
      if (createdBiesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat('multi', 'created_bies[]',
            createdBiesLeftSquareBracketRightSquareBracket),
      if (after != null)
        ..._convertParametersForCollectionFormat('', 'after', after),
      if (before != null)
        ..._convertParametersForCollectionFormat('', 'before', before),
      if (deep != null)
        ..._convertParametersForCollectionFormat('', 'deep', deep),
      if (delegatedTo != null)
        ..._convertParametersForCollectionFormat(
            '', 'delegated_to', delegatedTo),
      if (delegatedTosLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat('multi', 'delegated_tos[]',
            delegatedTosLeftSquareBracketRightSquareBracket),
      if (hasDocuments != null)
        ..._convertParametersForCollectionFormat(
            '', 'has_documents', hasDocuments),
      if (isNull != null)
        ..._convertParametersForCollectionFormat('', 'is_null', isNull),
      if (leaf != null)
        ..._convertParametersForCollectionFormat('', 'leaf', leaf),
      if (level != null)
        ..._convertParametersForCollectionFormat('', 'level', level),
      if (managedBy != null)
        ..._convertParametersForCollectionFormat('', 'managed_by', managedBy),
      if (managedBiesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat('multi', 'managed_bies[]',
            managedBiesLeftSquareBracketRightSquareBracket),
      if (member != null)
        ..._convertParametersForCollectionFormat('', 'member', member),
      if (membersLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'members[]', membersLeftSquareBracketRightSquareBracket),
      if (operationStateAll != null)
        ..._convertParametersForCollectionFormat(
            '', 'operation_state_all', operationStateAll),
      if (operationState != null)
        ..._convertParametersForCollectionFormat(
            '', 'operation_state', operationState),
      if (operationStatesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat('multi', 'operation_states[]',
            operationStatesLeftSquareBracketRightSquareBracket),
      if (organizationsLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat('multi', 'organizations[]',
            organizationsLeftSquareBracketRightSquareBracket),
      if (phase != null)
        ..._convertParametersForCollectionFormat('', 'phase', phase),
      if (phasesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'phases[]', phasesLeftSquareBracketRightSquareBracket),
      if (place != null)
        ..._convertParametersForCollectionFormat('', 'place', place),
      if (placesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'places[]', placesLeftSquareBracketRightSquareBracket),
      if (priority != null)
        ..._convertParametersForCollectionFormat('', 'priority', priority),
      if (prioritiesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat('multi', 'priorities[]',
            prioritiesLeftSquareBracketRightSquareBracket),
      if (query != null)
        ..._convertParametersForCollectionFormat('', 'query', query),
      if (ratingLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'rating[]', ratingLeftSquareBracketRightSquareBracket),
      if (scheduledAtAfter != null)
        ..._convertParametersForCollectionFormat(
            '', 'scheduled_at_after', scheduledAtAfter),
      if (scheduledAtBefore != null)
        ..._convertParametersForCollectionFormat(
            '', 'scheduled_at_before', scheduledAtBefore),
      if (state != null)
        ..._convertParametersForCollectionFormat('', 'state', state),
      if (statesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'states[]', statesLeftSquareBracketRightSquareBracket),
      if (visibilityLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat('multi', 'visibility[]',
            visibilityLeftSquareBracketRightSquareBracket),
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

  /// Retrieve all Report resources.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
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
  /// * [String] assignedTo:
  ///
  /// * [List<String>] assignedTosLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] batch:
  ///
  /// * [List<String>] batchesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] category:
  ///
  /// * [List<String>] categoriesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] createdBy:
  ///
  /// * [List<String>] createdBiesLeftSquareBracketRightSquareBracket:
  ///
  /// * [DateTime] after:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] deep:
  ///
  /// * [String] delegatedTo:
  ///
  /// * [List<String>] delegatedTosLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] hasDocuments:
  ///
  /// * [String] isNull:
  ///
  /// * [String] leaf:
  ///
  /// * [String] level:
  ///
  /// * [String] managedBy:
  ///
  /// * [List<String>] managedBiesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] member:
  ///
  /// * [List<String>] membersLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] operationStateAll:
  ///
  /// * [String] operationState:
  ///
  /// * [List<String>] operationStatesLeftSquareBracketRightSquareBracket:
  ///
  /// * [List<String>] organizationsLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] phase:
  ///
  /// * [List<String>] phasesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] place:
  ///
  /// * [List<String>] placesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] priority:
  ///
  /// * [List<String>] prioritiesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] query:
  ///
  /// * [List<String>] ratingLeftSquareBracketRightSquareBracket:
  ///
  /// * [DateTime] scheduledAtAfter:
  ///
  /// * [DateTime] scheduledAtBefore:
  ///
  /// * [String] state:
  ///
  /// * [List<String>] statesLeftSquareBracketRightSquareBracket:
  ///
  /// * [List<String>] visibilityLeftSquareBracketRightSquareBracket:
  ///
  /// * [int] page:
  ///   Page of the overview.
  ///
  /// * [int] limit:
  ///   Page of the overview.
  Future<ReportPagination> cgetReportsByOrganization(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    String assignedTo,
    List<String> assignedTosLeftSquareBracketRightSquareBracket,
    String batch,
    List<String> batchesLeftSquareBracketRightSquareBracket,
    String category,
    List<String> categoriesLeftSquareBracketRightSquareBracket,
    String createdBy,
    List<String> createdBiesLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    String deep,
    String delegatedTo,
    List<String> delegatedTosLeftSquareBracketRightSquareBracket,
    String hasDocuments,
    String isNull,
    String leaf,
    String level,
    String managedBy,
    List<String> managedBiesLeftSquareBracketRightSquareBracket,
    String member,
    List<String> membersLeftSquareBracketRightSquareBracket,
    String operationStateAll,
    String operationState,
    List<String> operationStatesLeftSquareBracketRightSquareBracket,
    List<String> organizationsLeftSquareBracketRightSquareBracket,
    String phase,
    List<String> phasesLeftSquareBracketRightSquareBracket,
    String place,
    List<String> placesLeftSquareBracketRightSquareBracket,
    String priority,
    List<String> prioritiesLeftSquareBracketRightSquareBracket,
    String query,
    List<String> ratingLeftSquareBracketRightSquareBracket,
    DateTime scheduledAtAfter,
    DateTime scheduledAtBefore,
    String state,
    List<String> statesLeftSquareBracketRightSquareBracket,
    List<String> visibilityLeftSquareBracketRightSquareBracket,
    int page,
    int limit,
  }) async {
    final response = await cgetReportsByOrganizationWithHttpInfo(
      xKeyclicApp,
      organization,
      acceptLanguage: acceptLanguage,
      xDateTime: xDateTime,
      xKeyclicAppPlatform: xKeyclicAppPlatform,
      xKeyclicAppVersion: xKeyclicAppVersion,
      orderLeftSquareBracketRightSquareBracket:
          orderLeftSquareBracketRightSquareBracket,
      assignedTo: assignedTo,
      assignedTosLeftSquareBracketRightSquareBracket:
          assignedTosLeftSquareBracketRightSquareBracket,
      batch: batch,
      batchesLeftSquareBracketRightSquareBracket:
          batchesLeftSquareBracketRightSquareBracket,
      category: category,
      categoriesLeftSquareBracketRightSquareBracket:
          categoriesLeftSquareBracketRightSquareBracket,
      createdBy: createdBy,
      createdBiesLeftSquareBracketRightSquareBracket:
          createdBiesLeftSquareBracketRightSquareBracket,
      after: after,
      before: before,
      deep: deep,
      delegatedTo: delegatedTo,
      delegatedTosLeftSquareBracketRightSquareBracket:
          delegatedTosLeftSquareBracketRightSquareBracket,
      hasDocuments: hasDocuments,
      isNull: isNull,
      leaf: leaf,
      level: level,
      managedBy: managedBy,
      managedBiesLeftSquareBracketRightSquareBracket:
          managedBiesLeftSquareBracketRightSquareBracket,
      member: member,
      membersLeftSquareBracketRightSquareBracket:
          membersLeftSquareBracketRightSquareBracket,
      operationStateAll: operationStateAll,
      operationState: operationState,
      operationStatesLeftSquareBracketRightSquareBracket:
          operationStatesLeftSquareBracketRightSquareBracket,
      organizationsLeftSquareBracketRightSquareBracket:
          organizationsLeftSquareBracketRightSquareBracket,
      phase: phase,
      phasesLeftSquareBracketRightSquareBracket:
          phasesLeftSquareBracketRightSquareBracket,
      place: place,
      placesLeftSquareBracketRightSquareBracket:
          placesLeftSquareBracketRightSquareBracket,
      priority: priority,
      prioritiesLeftSquareBracketRightSquareBracket:
          prioritiesLeftSquareBracketRightSquareBracket,
      query: query,
      ratingLeftSquareBracketRightSquareBracket:
          ratingLeftSquareBracketRightSquareBracket,
      scheduledAtAfter: scheduledAtAfter,
      scheduledAtBefore: scheduledAtBefore,
      state: state,
      statesLeftSquareBracketRightSquareBracket:
          statesLeftSquareBracketRightSquareBracket,
      visibilityLeftSquareBracketRightSquareBracket:
          visibilityLeftSquareBracketRightSquareBracket,
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
      return Future<ReportPagination>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'ReportPagination',
    ) as ReportPagination;
  }

  /// Retrieve all ReviewRequest resources.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
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
  /// * [DateTime] after:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] hasReview:
  ///
  /// * [int] page:
  ///   Page of the overview.
  ///
  /// * [int] limit:
  ///   Page of the overview.
  Future<Response> cgetReviewRequestsByOrganizationWithHttpInfo(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    String hasReview,
    int page,
    int limit,
  }) async {
    // Verify required params are set.
    if (xKeyclicApp == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: xKeyclicApp');
    }
    if (organization == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organization');
    }

    final path = r'/organizations/{organization}/review-requests'
        .replaceAll('{' + 'organization' + '}', organization.toString());

    final queryParams = <QueryParam>[
      if (orderLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'order[]', orderLeftSquareBracketRightSquareBracket),
      if (after != null)
        ..._convertParametersForCollectionFormat('', 'after', after),
      if (before != null)
        ..._convertParametersForCollectionFormat('', 'before', before),
      if (hasReview != null)
        ..._convertParametersForCollectionFormat('', 'has_review', hasReview),
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

  /// Retrieve all ReviewRequest resources.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
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
  /// * [DateTime] after:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] hasReview:
  ///
  /// * [int] page:
  ///   Page of the overview.
  ///
  /// * [int] limit:
  ///   Page of the overview.
  Future<ReviewRequestPagination> cgetReviewRequestsByOrganization(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    String hasReview,
    int page,
    int limit,
  }) async {
    final response = await cgetReviewRequestsByOrganizationWithHttpInfo(
      xKeyclicApp,
      organization,
      acceptLanguage: acceptLanguage,
      xDateTime: xDateTime,
      xKeyclicAppPlatform: xKeyclicAppPlatform,
      xKeyclicAppVersion: xKeyclicAppVersion,
      orderLeftSquareBracketRightSquareBracket:
          orderLeftSquareBracketRightSquareBracket,
      after: after,
      before: before,
      hasReview: hasReview,
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
      return Future<ReviewRequestPagination>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'ReviewRequestPagination',
    ) as ReviewRequestPagination;
  }

  /// Retrieve all Review resources.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
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
  /// * [String] delegatedTo:
  ///
  /// * [List<String>] delegatedTosLeftSquareBracketRightSquareBracket:
  ///
  /// * [List<String>] ratingLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] task:
  ///
  /// * [List<String>] tasksLeftSquareBracketRightSquareBracket:
  ///
  /// * [int] page:
  ///   Page of the overview.
  ///
  /// * [int] limit:
  ///   Page of the overview.
  Future<Response> cgetReviewsByOrganizationWithHttpInfo(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    String category,
    List<String> categoriesLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    String delegatedTo,
    List<String> delegatedTosLeftSquareBracketRightSquareBracket,
    List<String> ratingLeftSquareBracketRightSquareBracket,
    String task,
    List<String> tasksLeftSquareBracketRightSquareBracket,
    int page,
    int limit,
  }) async {
    // Verify required params are set.
    if (xKeyclicApp == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: xKeyclicApp');
    }
    if (organization == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organization');
    }

    final path = r'/organizations/{organization}/reviews'
        .replaceAll('{' + 'organization' + '}', organization.toString());

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
      if (delegatedTo != null)
        ..._convertParametersForCollectionFormat(
            '', 'delegated_to', delegatedTo),
      if (delegatedTosLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat('multi', 'delegated_tos[]',
            delegatedTosLeftSquareBracketRightSquareBracket),
      if (ratingLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'rating[]', ratingLeftSquareBracketRightSquareBracket),
      if (task != null)
        ..._convertParametersForCollectionFormat('', 'task', task),
      if (tasksLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'tasks[]', tasksLeftSquareBracketRightSquareBracket),
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

  /// Retrieve all Review resources.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
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
  /// * [String] delegatedTo:
  ///
  /// * [List<String>] delegatedTosLeftSquareBracketRightSquareBracket:
  ///
  /// * [List<String>] ratingLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] task:
  ///
  /// * [List<String>] tasksLeftSquareBracketRightSquareBracket:
  ///
  /// * [int] page:
  ///   Page of the overview.
  ///
  /// * [int] limit:
  ///   Page of the overview.
  Future<ReviewPagination> cgetReviewsByOrganization(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    String category,
    List<String> categoriesLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    String delegatedTo,
    List<String> delegatedTosLeftSquareBracketRightSquareBracket,
    List<String> ratingLeftSquareBracketRightSquareBracket,
    String task,
    List<String> tasksLeftSquareBracketRightSquareBracket,
    int page,
    int limit,
  }) async {
    final response = await cgetReviewsByOrganizationWithHttpInfo(
      xKeyclicApp,
      organization,
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
      delegatedTo: delegatedTo,
      delegatedTosLeftSquareBracketRightSquareBracket:
          delegatedTosLeftSquareBracketRightSquareBracket,
      ratingLeftSquareBracketRightSquareBracket:
          ratingLeftSquareBracketRightSquareBracket,
      task: task,
      tasksLeftSquareBracketRightSquareBracket:
          tasksLeftSquareBracketRightSquareBracket,
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
      return Future<ReviewPagination>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'ReviewPagination',
    ) as ReviewPagination;
  }

  /// Retrieve all Service resources.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
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
  /// * [DateTime] after:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] query:
  ///
  /// * [int] page:
  ///   Page of the overview.
  ///
  /// * [int] limit:
  ///   Page of the overview.
  Future<Response> cgetServicesByOrganizationWithHttpInfo(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    String query,
    int page,
    int limit,
  }) async {
    // Verify required params are set.
    if (xKeyclicApp == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: xKeyclicApp');
    }
    if (organization == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organization');
    }

    final path = r'/organizations/{organization}/services'
        .replaceAll('{' + 'organization' + '}', organization.toString());

    final queryParams = <QueryParam>[
      if (orderLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'order[]', orderLeftSquareBracketRightSquareBracket),
      if (after != null)
        ..._convertParametersForCollectionFormat('', 'after', after),
      if (before != null)
        ..._convertParametersForCollectionFormat('', 'before', before),
      if (query != null)
        ..._convertParametersForCollectionFormat('', 'query', query),
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

  /// Retrieve all Service resources.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
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
  /// * [DateTime] after:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] query:
  ///
  /// * [int] page:
  ///   Page of the overview.
  ///
  /// * [int] limit:
  ///   Page of the overview.
  Future<ServicePagination> cgetServicesByOrganization(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    String query,
    int page,
    int limit,
  }) async {
    final response = await cgetServicesByOrganizationWithHttpInfo(
      xKeyclicApp,
      organization,
      acceptLanguage: acceptLanguage,
      xDateTime: xDateTime,
      xKeyclicAppPlatform: xKeyclicAppPlatform,
      xKeyclicAppVersion: xKeyclicAppVersion,
      orderLeftSquareBracketRightSquareBracket:
          orderLeftSquareBracketRightSquareBracket,
      after: after,
      before: before,
      query: query,
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
      return Future<ServicePagination>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'ServicePagination',
    ) as ServicePagination;
  }

  /// Retrieve all Template resources.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
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
  /// * [DateTime] after:
  ///
  /// * [DateTime] before:
  ///
  /// * [int] page:
  ///   Page of the overview.
  ///
  /// * [int] limit:
  ///   Page of the overview.
  Future<Response> cgetTemplatesByOrganizationWithHttpInfo(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    int page,
    int limit,
  }) async {
    // Verify required params are set.
    if (xKeyclicApp == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: xKeyclicApp');
    }
    if (organization == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organization');
    }

    final path = r'/organizations/{organization}/templates'
        .replaceAll('{' + 'organization' + '}', organization.toString());

    final queryParams = <QueryParam>[
      if (orderLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'order[]', orderLeftSquareBracketRightSquareBracket),
      if (after != null)
        ..._convertParametersForCollectionFormat('', 'after', after),
      if (before != null)
        ..._convertParametersForCollectionFormat('', 'before', before),
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

  /// Retrieve all Template resources.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
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
  /// * [DateTime] after:
  ///
  /// * [DateTime] before:
  ///
  /// * [int] page:
  ///   Page of the overview.
  ///
  /// * [int] limit:
  ///   Page of the overview.
  Future<TemplatePagination> cgetTemplatesByOrganization(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    int page,
    int limit,
  }) async {
    final response = await cgetTemplatesByOrganizationWithHttpInfo(
      xKeyclicApp,
      organization,
      acceptLanguage: acceptLanguage,
      xDateTime: xDateTime,
      xKeyclicAppPlatform: xKeyclicAppPlatform,
      xKeyclicAppVersion: xKeyclicAppVersion,
      orderLeftSquareBracketRightSquareBracket:
          orderLeftSquareBracketRightSquareBracket,
      after: after,
      before: before,
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
      return Future<TemplatePagination>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'TemplatePagination',
    ) as TemplatePagination;
  }

  /// Retrieve one Analytic resource.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
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
  /// * [String] assignedTo:
  ///
  /// * [List<String>] assignedTosLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] category:
  ///
  /// * [List<String>] categoriesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] createdBy:
  ///
  /// * [List<String>] createdBiesLeftSquareBracketRightSquareBracket:
  ///
  /// * [DateTime] after:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] deep:
  ///
  /// * [String] delegatedTo:
  ///
  /// * [List<String>] delegatedTosLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] hasDocuments:
  ///
  /// * [String] managedBy:
  ///
  /// * [List<String>] managedBiesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] operationStateAll:
  ///
  /// * [String] operationState:
  ///
  /// * [List<String>] operationStatesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] phase:
  ///
  /// * [List<String>] phasesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] place:
  ///
  /// * [List<String>] placesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] priority:
  ///
  /// * [List<String>] prioritiesLeftSquareBracketRightSquareBracket:
  ///
  /// * [List<String>] ratingLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] state:
  ///
  /// * [List<String>] statesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] optionsLeftSquareBracketPropertyRightSquareBracket:
  ///
  /// * [String] optionsLeftSquareBracketSortRightSquareBracket:
  Future<Response> getAnalyticByOrganizationWithHttpInfo(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    String assignedTo,
    List<String> assignedTosLeftSquareBracketRightSquareBracket,
    String category,
    List<String> categoriesLeftSquareBracketRightSquareBracket,
    String createdBy,
    List<String> createdBiesLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    String deep,
    String delegatedTo,
    List<String> delegatedTosLeftSquareBracketRightSquareBracket,
    String hasDocuments,
    String managedBy,
    List<String> managedBiesLeftSquareBracketRightSquareBracket,
    String operationStateAll,
    String operationState,
    List<String> operationStatesLeftSquareBracketRightSquareBracket,
    String phase,
    List<String> phasesLeftSquareBracketRightSquareBracket,
    String place,
    List<String> placesLeftSquareBracketRightSquareBracket,
    String priority,
    List<String> prioritiesLeftSquareBracketRightSquareBracket,
    List<String> ratingLeftSquareBracketRightSquareBracket,
    String state,
    List<String> statesLeftSquareBracketRightSquareBracket,
    String optionsLeftSquareBracketPropertyRightSquareBracket,
    String optionsLeftSquareBracketSortRightSquareBracket,
  }) async {
    // Verify required params are set.
    if (xKeyclicApp == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: xKeyclicApp');
    }
    if (organization == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organization');
    }

    final path = r'/organizations/{organization}/analytics'
        .replaceAll('{' + 'organization' + '}', organization.toString());

    final queryParams = <QueryParam>[
      if (assignedTo != null)
        ..._convertParametersForCollectionFormat('', 'assigned_to', assignedTo),
      if (assignedTosLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat('multi', 'assigned_tos[]',
            assignedTosLeftSquareBracketRightSquareBracket),
      if (category != null)
        ..._convertParametersForCollectionFormat('', 'category', category),
      if (categoriesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat('multi', 'categories[]',
            categoriesLeftSquareBracketRightSquareBracket),
      if (createdBy != null)
        ..._convertParametersForCollectionFormat('', 'created_by', createdBy),
      if (createdBiesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat('multi', 'created_bies[]',
            createdBiesLeftSquareBracketRightSquareBracket),
      if (after != null)
        ..._convertParametersForCollectionFormat('', 'after', after),
      if (before != null)
        ..._convertParametersForCollectionFormat('', 'before', before),
      if (deep != null)
        ..._convertParametersForCollectionFormat('', 'deep', deep),
      if (delegatedTo != null)
        ..._convertParametersForCollectionFormat(
            '', 'delegated_to', delegatedTo),
      if (delegatedTosLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat('multi', 'delegated_tos[]',
            delegatedTosLeftSquareBracketRightSquareBracket),
      if (hasDocuments != null)
        ..._convertParametersForCollectionFormat(
            '', 'has_documents', hasDocuments),
      if (managedBy != null)
        ..._convertParametersForCollectionFormat('', 'managed_by', managedBy),
      if (managedBiesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat('multi', 'managed_bies[]',
            managedBiesLeftSquareBracketRightSquareBracket),
      if (operationStateAll != null)
        ..._convertParametersForCollectionFormat(
            '', 'operation_state_all', operationStateAll),
      if (operationState != null)
        ..._convertParametersForCollectionFormat(
            '', 'operation_state', operationState),
      if (operationStatesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat('multi', 'operation_states[]',
            operationStatesLeftSquareBracketRightSquareBracket),
      if (phase != null)
        ..._convertParametersForCollectionFormat('', 'phase', phase),
      if (phasesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'phases[]', phasesLeftSquareBracketRightSquareBracket),
      if (place != null)
        ..._convertParametersForCollectionFormat('', 'place', place),
      if (placesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'places[]', placesLeftSquareBracketRightSquareBracket),
      if (priority != null)
        ..._convertParametersForCollectionFormat('', 'priority', priority),
      if (prioritiesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat('multi', 'priorities[]',
            prioritiesLeftSquareBracketRightSquareBracket),
      if (ratingLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'rating[]', ratingLeftSquareBracketRightSquareBracket),
      if (state != null)
        ..._convertParametersForCollectionFormat('', 'state', state),
      if (statesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'states[]', statesLeftSquareBracketRightSquareBracket),
      if (optionsLeftSquareBracketPropertyRightSquareBracket != null)
        ..._convertParametersForCollectionFormat('', 'options[property]',
            optionsLeftSquareBracketPropertyRightSquareBracket),
      if (optionsLeftSquareBracketSortRightSquareBracket != null)
        ..._convertParametersForCollectionFormat('', 'options[sort]',
            optionsLeftSquareBracketSortRightSquareBracket),
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

  /// Retrieve one Analytic resource.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
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
  /// * [String] assignedTo:
  ///
  /// * [List<String>] assignedTosLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] category:
  ///
  /// * [List<String>] categoriesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] createdBy:
  ///
  /// * [List<String>] createdBiesLeftSquareBracketRightSquareBracket:
  ///
  /// * [DateTime] after:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] deep:
  ///
  /// * [String] delegatedTo:
  ///
  /// * [List<String>] delegatedTosLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] hasDocuments:
  ///
  /// * [String] managedBy:
  ///
  /// * [List<String>] managedBiesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] operationStateAll:
  ///
  /// * [String] operationState:
  ///
  /// * [List<String>] operationStatesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] phase:
  ///
  /// * [List<String>] phasesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] place:
  ///
  /// * [List<String>] placesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] priority:
  ///
  /// * [List<String>] prioritiesLeftSquareBracketRightSquareBracket:
  ///
  /// * [List<String>] ratingLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] state:
  ///
  /// * [List<String>] statesLeftSquareBracketRightSquareBracket:
  ///
  /// * [String] optionsLeftSquareBracketPropertyRightSquareBracket:
  ///
  /// * [String] optionsLeftSquareBracketSortRightSquareBracket:
  Future<Chart> getAnalyticByOrganization(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    String assignedTo,
    List<String> assignedTosLeftSquareBracketRightSquareBracket,
    String category,
    List<String> categoriesLeftSquareBracketRightSquareBracket,
    String createdBy,
    List<String> createdBiesLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    String deep,
    String delegatedTo,
    List<String> delegatedTosLeftSquareBracketRightSquareBracket,
    String hasDocuments,
    String managedBy,
    List<String> managedBiesLeftSquareBracketRightSquareBracket,
    String operationStateAll,
    String operationState,
    List<String> operationStatesLeftSquareBracketRightSquareBracket,
    String phase,
    List<String> phasesLeftSquareBracketRightSquareBracket,
    String place,
    List<String> placesLeftSquareBracketRightSquareBracket,
    String priority,
    List<String> prioritiesLeftSquareBracketRightSquareBracket,
    List<String> ratingLeftSquareBracketRightSquareBracket,
    String state,
    List<String> statesLeftSquareBracketRightSquareBracket,
    String optionsLeftSquareBracketPropertyRightSquareBracket,
    String optionsLeftSquareBracketSortRightSquareBracket,
  }) async {
    final response = await getAnalyticByOrganizationWithHttpInfo(
      xKeyclicApp,
      organization,
      acceptLanguage: acceptLanguage,
      xDateTime: xDateTime,
      xKeyclicAppPlatform: xKeyclicAppPlatform,
      xKeyclicAppVersion: xKeyclicAppVersion,
      assignedTo: assignedTo,
      assignedTosLeftSquareBracketRightSquareBracket:
          assignedTosLeftSquareBracketRightSquareBracket,
      category: category,
      categoriesLeftSquareBracketRightSquareBracket:
          categoriesLeftSquareBracketRightSquareBracket,
      createdBy: createdBy,
      createdBiesLeftSquareBracketRightSquareBracket:
          createdBiesLeftSquareBracketRightSquareBracket,
      after: after,
      before: before,
      deep: deep,
      delegatedTo: delegatedTo,
      delegatedTosLeftSquareBracketRightSquareBracket:
          delegatedTosLeftSquareBracketRightSquareBracket,
      hasDocuments: hasDocuments,
      managedBy: managedBy,
      managedBiesLeftSquareBracketRightSquareBracket:
          managedBiesLeftSquareBracketRightSquareBracket,
      operationStateAll: operationStateAll,
      operationState: operationState,
      operationStatesLeftSquareBracketRightSquareBracket:
          operationStatesLeftSquareBracketRightSquareBracket,
      phase: phase,
      phasesLeftSquareBracketRightSquareBracket:
          phasesLeftSquareBracketRightSquareBracket,
      place: place,
      placesLeftSquareBracketRightSquareBracket:
          placesLeftSquareBracketRightSquareBracket,
      priority: priority,
      prioritiesLeftSquareBracketRightSquareBracket:
          prioritiesLeftSquareBracketRightSquareBracket,
      ratingLeftSquareBracketRightSquareBracket:
          ratingLeftSquareBracketRightSquareBracket,
      state: state,
      statesLeftSquareBracketRightSquareBracket:
          statesLeftSquareBracketRightSquareBracket,
      optionsLeftSquareBracketPropertyRightSquareBracket:
          optionsLeftSquareBracketPropertyRightSquareBracket,
      optionsLeftSquareBracketSortRightSquareBracket:
          optionsLeftSquareBracketSortRightSquareBracket,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body == null || response.statusCode == HttpStatus.noContent) {
      return Future<Chart>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'Chart',
    ) as Chart;
  }

  /// Retrieve one Configuration resource.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
  ///   The identifier of the resource.
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Response> getConfigurationByOrganizationWithHttpInfo(
    String xKeyclicApp,
    String organization, {
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
    if (organization == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organization');
    }

    final path = r'/organizations/{organization}/configuration'
        .replaceAll('{' + 'organization' + '}', organization.toString());

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

  /// Retrieve one Configuration resource.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
  ///   The identifier of the resource.
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Configuration> getConfigurationByOrganization(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    final response = await getConfigurationByOrganizationWithHttpInfo(
      xKeyclicApp,
      organization,
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
      return Future<Configuration>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'Configuration',
    ) as Configuration;
  }

  /// Retrieve one Form resource.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
  ///   The identifier of the resource.
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Response> getFormByOrganizationWithHttpInfo(
    String xKeyclicApp,
    String organization, {
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
    if (organization == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organization');
    }

    final path = r'/organizations/{organization}/form'
        .replaceAll('{' + 'organization' + '}', organization.toString());

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

  /// Retrieve one Form resource.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
  ///   The identifier of the resource.
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Schema> getFormByOrganization(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    final response = await getFormByOrganizationWithHttpInfo(
      xKeyclicApp,
      organization,
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
      return Future<Schema>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'Schema',
    ) as Schema;
  }

  /// Retrieve one Organization resource.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
  ///   The identifier of the resource.
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Response> getOrganizationWithHttpInfo(
    String xKeyclicApp,
    String organization, {
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
    if (organization == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organization');
    }

    final path = r'/organizations/{organization}'
        .replaceAll('{' + 'organization' + '}', organization.toString());

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

  /// Retrieve one Organization resource.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
  ///   The identifier of the resource.
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Organization> getOrganization(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    final response = await getOrganizationWithHttpInfo(
      xKeyclicApp,
      organization,
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
      return Future<Organization>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'Organization',
    ) as Organization;
  }

  /// Edit one Organization resource.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
  ///   The identifier of the resource.
  ///
  /// * [OrganizationPatch] organizationPatch (required):
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Response> patchOrganizationWithHttpInfo(
    String xKeyclicApp,
    String organization,
    OrganizationPatch organizationPatch, {
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
    if (organization == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organization');
    }
    if (organizationPatch == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: organizationPatch');
    }

    final path = r'/organizations/{organization}'
        .replaceAll('{' + 'organization' + '}', organization.toString());

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

    final contentTypes = <String>[
      'application/json;charset=UTF-8',
    ];
    final authNames = <String>[
      'bearer',
    ];

    return apiClient.invokeAPI(
      path: path,
      method: 'PATCH',
      queryParams: queryParams,
      body: organizationPatch,
      headerParams: headerParams,
      formParams: formParams,
      contentType: contentTypes.isNotEmpty ? contentTypes[0] : null,
      authNames: authNames,
    );
  }

  /// Edit one Organization resource.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] organization (required):
  ///   The identifier of the resource.
  ///
  /// * [OrganizationPatch] organizationPatch (required):
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Organization> patchOrganization(
    String xKeyclicApp,
    String organization,
    OrganizationPatch organizationPatch, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    final response = await patchOrganizationWithHttpInfo(
      xKeyclicApp,
      organization,
      organizationPatch,
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
      return Future<Organization>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'Organization',
    ) as Organization;
  }
}
