//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PersonApi {
  PersonApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Retrieve all Document resources.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] person (required):
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
  Future<Response> cgetDocumentsByPersonWithHttpInfo(
    String xKeyclicApp,
    String person, {
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
    if (person == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: person');
    }

    final path = r'/people/{person}/documents'
        .replaceAll('{' + 'person' + '}', person.toString());

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
  /// * [String] person (required):
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
  Future<DocumentPagination> cgetDocumentsByPerson(
    String xKeyclicApp,
    String person, {
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
    final response = await cgetDocumentsByPersonWithHttpInfo(
      xKeyclicApp,
      person,
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

  /// Retrieve all Membership resources.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] person (required):
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
  Future<Response> cgetMembershipsByPersonWithHttpInfo(
    String xKeyclicApp,
    String person, {
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
    if (person == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: person');
    }

    final path = r'/people/{person}/memberships'
        .replaceAll('{' + 'person' + '}', person.toString());

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

  /// Retrieve all Membership resources.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] person (required):
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
  Future<MemberPagination> cgetMembershipsByPerson(
    String xKeyclicApp,
    String person, {
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
    final response = await cgetMembershipsByPersonWithHttpInfo(
      xKeyclicApp,
      person,
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

  /// Retrieve all Operation resources.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] person (required):
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
  Future<Response> cgetOperationsByPersonWithHttpInfo(
    String xKeyclicApp,
    String person, {
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
    if (person == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: person');
    }

    final path = r'/people/{person}/operations'
        .replaceAll('{' + 'person' + '}', person.toString());

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
  /// * [String] person (required):
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
  Future<OperationPagination> cgetOperationsByPerson(
    String xKeyclicApp,
    String person, {
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
    final response = await cgetOperationsByPersonWithHttpInfo(
      xKeyclicApp,
      person,
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

  /// Retrieve all ReviewRequest resources.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] person (required):
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
  Future<Response> cgetReviewRequestsByPersonWithHttpInfo(
    String xKeyclicApp,
    String person, {
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
    if (person == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: person');
    }

    final path = r'/people/{person}/review-requests'
        .replaceAll('{' + 'person' + '}', person.toString());

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
  /// * [String] person (required):
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
  Future<ReviewRequestPagination> cgetReviewRequestsByPerson(
    String xKeyclicApp,
    String person, {
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
    final response = await cgetReviewRequestsByPersonWithHttpInfo(
      xKeyclicApp,
      person,
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

  /// Remove one Person resource.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] person (required):
  ///   The identifier of the resource.
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Response> deletePersonWithHttpInfo(
    String xKeyclicApp,
    String person, {
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
    if (person == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: person');
    }

    final path =
        r'/people/{person}'.replaceAll('{' + 'person' + '}', person.toString());

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

  /// Remove one Person resource.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] person (required):
  ///   The identifier of the resource.
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<void> deletePerson(
    String xKeyclicApp,
    String person, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    final response = await deletePersonWithHttpInfo(
      xKeyclicApp,
      person,
      acceptLanguage: acceptLanguage,
      xDateTime: xDateTime,
      xKeyclicAppPlatform: xKeyclicAppPlatform,
      xKeyclicAppVersion: xKeyclicAppVersion,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve one Feed resource.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] person (required):
  ///   The identifier of the resource.
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Response> getFeedByPersonWithHttpInfo(
    String xKeyclicApp,
    String person, {
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
    if (person == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: person');
    }

    final path = r'/people/{person}/feed'
        .replaceAll('{' + 'person' + '}', person.toString());

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

  /// Retrieve one Feed resource.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] person (required):
  ///   The identifier of the resource.
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Feed> getFeedByPerson(
    String xKeyclicApp,
    String person, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    final response = await getFeedByPersonWithHttpInfo(
      xKeyclicApp,
      person,
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
      return Future<Feed>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'Feed',
    ) as Feed;
  }

  /// Retrieve one Person resource.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] person (required):
  ///   The identifier of the resource.
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Response> getPersonWithHttpInfo(
    String xKeyclicApp,
    String person, {
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
    if (person == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: person');
    }

    final path =
        r'/people/{person}'.replaceAll('{' + 'person' + '}', person.toString());

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

  /// Retrieve one Person resource.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] person (required):
  ///   The identifier of the resource.
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Person> getPerson(
    String xKeyclicApp,
    String person, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    final response = await getPersonWithHttpInfo(
      xKeyclicApp,
      person,
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
      return Future<Person>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'Person',
    ) as Person;
  }

  /// Edit one Person resource.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] person (required):
  ///   The identifier of the resource.
  ///
  /// * [PersonPatch] personPatch (required):
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Response> patchPersonWithHttpInfo(
    String xKeyclicApp,
    String person,
    PersonPatch personPatch, {
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
    if (person == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: person');
    }
    if (personPatch == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: personPatch');
    }

    final path =
        r'/people/{person}'.replaceAll('{' + 'person' + '}', person.toString());

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
      body: personPatch,
      headerParams: headerParams,
      formParams: formParams,
      contentType: contentTypes.isNotEmpty ? contentTypes[0] : null,
      authNames: authNames,
    );
  }

  /// Edit one Person resource.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] person (required):
  ///   The identifier of the resource.
  ///
  /// * [PersonPatch] personPatch (required):
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Person> patchPerson(
    String xKeyclicApp,
    String person,
    PersonPatch personPatch, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    final response = await patchPersonWithHttpInfo(
      xKeyclicApp,
      person,
      personPatch,
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
      return Future<Person>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'Person',
    ) as Person;
  }
}
