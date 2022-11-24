//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ReportApi {
  ReportApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Retrieve all Assignment resources.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] report (required):
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
  Future<Response> cgetAssignmentsByReportWithHttpInfo(
    String xKeyclicApp,
    String report, {
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
    if (report == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: report');
    }

    final path = r'/reports/{report}/assignments'
        .replaceAll('{' + 'report' + '}', report.toString());

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

  /// Retrieve all Assignment resources.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] report (required):
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
  Future<AssignmentPagination> cgetAssignmentsByReport(
    String xKeyclicApp,
    String report, {
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
    final response = await cgetAssignmentsByReportWithHttpInfo(
      xKeyclicApp,
      report,
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
      return Future<AssignmentPagination>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'AssignmentPagination',
    ) as AssignmentPagination;
  }

  /// Retrieve all Document resources.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] report (required):
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
  /// * [String] organization:
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
  Future<Response> cgetDocumentsByReportWithHttpInfo(
    String xKeyclicApp,
    String report, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    String organization,
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
    if (report == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: report');
    }

    final path = r'/reports/{report}/documents'
        .replaceAll('{' + 'report' + '}', report.toString());

    final queryParams = <QueryParam>[
      if (orderLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'order[]', orderLeftSquareBracketRightSquareBracket),
      if (after != null)
        ..._convertParametersForCollectionFormat('', 'after', after),
      if (before != null)
        ..._convertParametersForCollectionFormat('', 'before', before),
      if (organization != null)
        ..._convertParametersForCollectionFormat(
            '', 'organization', organization),
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
  /// * [String] report (required):
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
  /// * [String] organization:
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
  Future<DocumentPagination> cgetDocumentsByReport(
    String xKeyclicApp,
    String report, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    DateTime after,
    DateTime before,
    String organization,
    List<String> organizationsLeftSquareBracketRightSquareBracket,
    String state,
    List<String> statesLeftSquareBracketRightSquareBracket,
    int page,
    int limit,
  }) async {
    final response = await cgetDocumentsByReportWithHttpInfo(
      xKeyclicApp,
      report,
      acceptLanguage: acceptLanguage,
      xDateTime: xDateTime,
      xKeyclicAppPlatform: xKeyclicAppPlatform,
      xKeyclicAppVersion: xKeyclicAppVersion,
      orderLeftSquareBracketRightSquareBracket:
          orderLeftSquareBracketRightSquareBracket,
      after: after,
      before: before,
      organization: organization,
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

  /// Retrieve all Note resources.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] task (required):
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
  Future<Response> cgetNotesByTaskWithHttpInfo(
    String xKeyclicApp,
    String task, {
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
    if (task == null) {
      throw ApiException(HttpStatus.badRequest, 'Missing required param: task');
    }

    final path =
        r'/tasks/{task}/notes'.replaceAll('{' + 'task' + '}', task.toString());

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

  /// Retrieve all Note resources.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] task (required):
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
  Future<NotePagination> cgetNotesByTask(
    String xKeyclicApp,
    String task, {
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
    final response = await cgetNotesByTaskWithHttpInfo(
      xKeyclicApp,
      task,
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
      return Future<NotePagination>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'NotePagination',
    ) as NotePagination;
  }

  /// Retrieve all Operation resources.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] report (required):
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
  /// * [String] archived:
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
  /// * [String] organization:
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
  Future<Response> cgetOperationsByReportWithHttpInfo(
    String xKeyclicApp,
    String report, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    String archived,
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
    String organization,
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
    if (report == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: report');
    }

    final path = r'/reports/{report}/operations'
        .replaceAll('{' + 'report' + '}', report.toString());

    final queryParams = <QueryParam>[
      if (orderLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'order[]', orderLeftSquareBracketRightSquareBracket),
      if (archived != null)
        ..._convertParametersForCollectionFormat('', 'archived', archived),
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
      if (organization != null)
        ..._convertParametersForCollectionFormat(
            '', 'organization', organization),
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
  /// * [String] report (required):
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
  /// * [String] archived:
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
  /// * [String] organization:
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
  Future<OperationPagination> cgetOperationsByReport(
    String xKeyclicApp,
    String report, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> orderLeftSquareBracketRightSquareBracket,
    String archived,
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
    String organization,
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
    final response = await cgetOperationsByReportWithHttpInfo(
      xKeyclicApp,
      report,
      acceptLanguage: acceptLanguage,
      xDateTime: xDateTime,
      xKeyclicAppPlatform: xKeyclicAppPlatform,
      xKeyclicAppVersion: xKeyclicAppVersion,
      orderLeftSquareBracketRightSquareBracket:
          orderLeftSquareBracketRightSquareBracket,
      archived: archived,
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
      organization: organization,
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

  /// Retrieve one Report resource.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] report (required):
  ///   The identifier of the resource.
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Response> getReportWithHttpInfo(
    String xKeyclicApp,
    String report, {
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
    if (report == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: report');
    }

    final path = r'/reports/{report}'
        .replaceAll('{' + 'report' + '}', report.toString());

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

  /// Retrieve one Report resource.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] report (required):
  ///   The identifier of the resource.
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Report> getReport(
    String xKeyclicApp,
    String report, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    final response = await getReportWithHttpInfo(
      xKeyclicApp,
      report,
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
      return Future<Report>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'Report',
    ) as Report;
  }

  /// Retrieve one Tracking resource.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] report (required):
  ///   The identifier of the resource.
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Response> getTrackingByReportWithHttpInfo(
    String xKeyclicApp,
    String report, {
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
    if (report == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: report');
    }

    final path = r'/reports/{report}/tracking'
        .replaceAll('{' + 'report' + '}', report.toString());

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

  /// Retrieve one Tracking resource.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] report (required):
  ///   The identifier of the resource.
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Tracking> getTrackingByReport(
    String xKeyclicApp,
    String report, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    final response = await getTrackingByReportWithHttpInfo(
      xKeyclicApp,
      report,
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
      return Future<Tracking>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'Tracking',
    ) as Tracking;
  }

  /// Edit one Report resource.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] report (required):
  ///   The identifier of the resource.
  ///
  /// * [TaskPatch] taskPatch (required):
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Response> patchReportWithHttpInfo(
    String xKeyclicApp,
    String report,
    TaskPatch taskPatch, {
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
    if (report == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: report');
    }
    if (taskPatch == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: taskPatch');
    }

    final path = r'/reports/{report}'
        .replaceAll('{' + 'report' + '}', report.toString());

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
      body: taskPatch,
      headerParams: headerParams,
      formParams: formParams,
      contentType: contentTypes.isNotEmpty ? contentTypes[0] : null,
      authNames: authNames,
    );
  }

  /// Edit one Report resource.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] report (required):
  ///   The identifier of the resource.
  ///
  /// * [TaskPatch] taskPatch (required):
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Report> patchReport(
    String xKeyclicApp,
    String report,
    TaskPatch taskPatch, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    final response = await patchReportWithHttpInfo(
      xKeyclicApp,
      report,
      taskPatch,
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
      return Future<Report>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'Report',
    ) as Report;
  }

  /// Create one Document resource.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] report (required):
  ///   The identifier of the resource.
  ///
  /// * [DocumentData] documentData (required):
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Response> postDocumentByReportWithHttpInfo(
    String xKeyclicApp,
    String report,
    DocumentData documentData, {
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
    if (report == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: report');
    }
    if (documentData == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: documentData');
    }

    final path = r'/reports/{report}/documents'
        .replaceAll('{' + 'report' + '}', report.toString());

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
      body: documentData,
      headerParams: headerParams,
      formParams: formParams,
      contentType: contentTypes.isNotEmpty ? contentTypes[0] : null,
      authNames: authNames,
    );
  }

  /// Create one Document resource.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] report (required):
  ///   The identifier of the resource.
  ///
  /// * [DocumentData] documentData (required):
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Document> postDocumentByReport(
    String xKeyclicApp,
    String report,
    DocumentData documentData, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    final response = await postDocumentByReportWithHttpInfo(
      xKeyclicApp,
      report,
      documentData,
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
      return Future<Document>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'Document',
    ) as Document;
  }

  /// Create one Workflow resource.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] report (required):
  ///   The identifier of the resource.
  ///
  /// * [WorkflowData] workflowData (required):
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Response> postWorkflowByReportWithHttpInfo(
    String xKeyclicApp,
    String report,
    WorkflowData workflowData, {
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
    if (report == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: report');
    }
    if (workflowData == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: workflowData');
    }

    final path = r'/reports/{report}/workflow'
        .replaceAll('{' + 'report' + '}', report.toString());

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
      body: workflowData,
      headerParams: headerParams,
      formParams: formParams,
      contentType: contentTypes.isNotEmpty ? contentTypes[0] : null,
      authNames: authNames,
    );
  }

  /// Create one Workflow resource.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] report (required):
  ///   The identifier of the resource.
  ///
  /// * [WorkflowData] workflowData (required):
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Report> postWorkflowByReport(
    String xKeyclicApp,
    String report,
    WorkflowData workflowData, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    final response = await postWorkflowByReportWithHttpInfo(
      xKeyclicApp,
      report,
      workflowData,
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
      return Future<Report>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'Report',
    ) as Report;
  }
}
