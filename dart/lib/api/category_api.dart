//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class CategoryApi {
  CategoryApi([ApiClient apiClient])
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
  Future<Response> cgetCategoriesWithHttpInfo(
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
    String geoPoint,
    String geoCoordinates,
    String leaf,
    String level,
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

    final path = r'/categories';

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

  /// Retrieve all Category resources.
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
  Future<CategoryPagination> cgetCategories(
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
    String geoPoint,
    String geoCoordinates,
    String leaf,
    String level,
    String organization,
    List<String> organizationsLeftSquareBracketRightSquareBracket,
    String query,
    int page,
    int limit,
  }) async {
    final response = await cgetCategoriesWithHttpInfo(
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
      geoPoint: geoPoint,
      geoCoordinates: geoCoordinates,
      leaf: leaf,
      level: level,
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
      return Future<CategoryPagination>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'CategoryPagination',
    ) as CategoryPagination;
  }

  /// Remove one Category resource.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] category (required):
  ///   The identifier of the resource.
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Response> deleteCategoryWithHttpInfo(
    String xKeyclicApp,
    String category, {
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
    if (category == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: category');
    }

    final path = r'/categories/{category}'
        .replaceAll('{' + 'category' + '}', category.toString());

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
      method: 'DELETE',
      queryParams: queryParams,
      headerParams: headerParams,
      formParams: formParams,
      contentType: contentTypes.isNotEmpty ? contentTypes[0] : null,
      authNames: authNames,
    );
  }

  /// Remove one Category resource.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] category (required):
  ///   The identifier of the resource.
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<void> deleteCategory(
    String xKeyclicApp,
    String category, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    final response = await deleteCategoryWithHttpInfo(
      xKeyclicApp,
      category,
      acceptLanguage: acceptLanguage,
      xDateTime: xDateTime,
      xKeyclicAppPlatform: xKeyclicAppPlatform,
      xKeyclicAppVersion: xKeyclicAppVersion,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve one Category resource.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] category (required):
  ///   The identifier of the resource.
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Response> getCategoryWithHttpInfo(
    String xKeyclicApp,
    String category, {
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
    if (category == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: category');
    }

    final path = r'/categories/{category}'
        .replaceAll('{' + 'category' + '}', category.toString());

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

  /// Retrieve one Category resource.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] category (required):
  ///   The identifier of the resource.
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Category> getCategory(
    String xKeyclicApp,
    String category, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    final response = await getCategoryWithHttpInfo(
      xKeyclicApp,
      category,
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
      return Future<Category>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'Category',
    ) as Category;
  }

  /// Edit one Category resource.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] category (required):
  ///   The identifier of the resource.
  ///
  /// * [CategoryPatch] categoryPatch (required):
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Response> patchCategoryWithHttpInfo(
    String xKeyclicApp,
    String category,
    CategoryPatch categoryPatch, {
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
    if (category == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: category');
    }
    if (categoryPatch == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: categoryPatch');
    }

    final path = r'/categories/{category}'
        .replaceAll('{' + 'category' + '}', category.toString());

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
      body: categoryPatch,
      headerParams: headerParams,
      formParams: formParams,
      contentType: contentTypes.isNotEmpty ? contentTypes[0] : null,
      authNames: authNames,
    );
  }

  /// Edit one Category resource.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] category (required):
  ///   The identifier of the resource.
  ///
  /// * [CategoryPatch] categoryPatch (required):
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Category> patchCategory(
    String xKeyclicApp,
    String category,
    CategoryPatch categoryPatch, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    final response = await patchCategoryWithHttpInfo(
      xKeyclicApp,
      category,
      categoryPatch,
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
      return Future<Category>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'Category',
    ) as Category;
  }

  /// Create one Category resource.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [CategoryData] categoryData (required):
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Response> postCategoryWithHttpInfo(
    String xKeyclicApp,
    CategoryData categoryData, {
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
    if (categoryData == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: categoryData');
    }

    final path = r'/categories';

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
      method: 'POST',
      queryParams: queryParams,
      body: categoryData,
      headerParams: headerParams,
      formParams: formParams,
      contentType: contentTypes.isNotEmpty ? contentTypes[0] : null,
      authNames: authNames,
    );
  }

  /// Create one Category resource.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [CategoryData] categoryData (required):
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Category> postCategory(
    String xKeyclicApp,
    CategoryData categoryData, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    final response = await postCategoryWithHttpInfo(
      xKeyclicApp,
      categoryData,
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
      return Future<Category>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'Category',
    ) as Category;
  }
}
