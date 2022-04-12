//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ExportApi {
  ExportApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create one Export resource.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [ExportData] exportData (required):
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
  /// * [String] operationStateAll:
  ///
  /// * [String] operationState:
  ///
  /// * [List<String>] operationStatesLeftSquareBracketRightSquareBracket:
  ///
  /// * [List<String>] orderLeftSquareBracketRightSquareBracket:
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
  Future<Response> postExportWithHttpInfo(
    String xKeyclicApp,
    ExportData exportData, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
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
    String operationStateAll,
    String operationState,
    List<String> operationStatesLeftSquareBracketRightSquareBracket,
    List<String> orderLeftSquareBracketRightSquareBracket,
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
  }) async {
    // Verify required params are set.
    if (xKeyclicApp == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: xKeyclicApp');
    }
    if (exportData == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: exportData');
    }

    final path = r'/exports';

    final queryParams = <QueryParam>[
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
      if (operationStateAll != null)
        ..._convertParametersForCollectionFormat(
            '', 'operation_state_all', operationStateAll),
      if (operationState != null)
        ..._convertParametersForCollectionFormat(
            '', 'operation_state', operationState),
      if (operationStatesLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat('multi', 'operation_states[]',
            operationStatesLeftSquareBracketRightSquareBracket),
      if (orderLeftSquareBracketRightSquareBracket != null)
        ..._convertParametersForCollectionFormat(
            'multi', 'order[]', orderLeftSquareBracketRightSquareBracket),
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
      body: exportData,
      headerParams: headerParams,
      formParams: formParams,
      contentType: contentTypes.isNotEmpty ? contentTypes[0] : null,
      authNames: authNames,
    );
  }

  /// Create one Export resource.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [ExportData] exportData (required):
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
  /// * [String] operationStateAll:
  ///
  /// * [String] operationState:
  ///
  /// * [List<String>] operationStatesLeftSquareBracketRightSquareBracket:
  ///
  /// * [List<String>] orderLeftSquareBracketRightSquareBracket:
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
  Future<ModelExport> postExport(
    String xKeyclicApp,
    ExportData exportData, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
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
    String operationStateAll,
    String operationState,
    List<String> operationStatesLeftSquareBracketRightSquareBracket,
    List<String> orderLeftSquareBracketRightSquareBracket,
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
  }) async {
    final response = await postExportWithHttpInfo(
      xKeyclicApp,
      exportData,
      acceptLanguage: acceptLanguage,
      xDateTime: xDateTime,
      xKeyclicAppPlatform: xKeyclicAppPlatform,
      xKeyclicAppVersion: xKeyclicAppVersion,
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
      operationStateAll: operationStateAll,
      operationState: operationState,
      operationStatesLeftSquareBracketRightSquareBracket:
          operationStatesLeftSquareBracketRightSquareBracket,
      orderLeftSquareBracketRightSquareBracket:
          orderLeftSquareBracketRightSquareBracket,
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
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body == null || response.statusCode == HttpStatus.noContent) {
      return Future<ModelExport>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'ModelExport',
    ) as ModelExport;
  }
}
