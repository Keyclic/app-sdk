part of keyclic_sdk_api.api;

class PersonApi {
  PersonApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Retrieve all Bookmark resources.
  ///
  ///
  Future<BookmarkPagination> cgetBookmarksByPerson(
    String xKeyclicApp,
    String person, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> order__,
    DateTime after,
    DateTime before,
    int page,
    int limit,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (person == null) {
      throw ApiException(0, "Missing required param: person");
    }

    // create path and map variables
    final String path = "/people/{person}/bookmarks"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "person" + "}", person.toString());

    // query params
    final List<QueryParam> queryParams = <QueryParam>[
      if (order__ != null)
        ..._convertParametersForCollectionFormat("order[]", order__,
            collectionFormat: "multi"),
      if (after != null)
        ..._convertParametersForCollectionFormat("after", after),
      if (before != null)
        ..._convertParametersForCollectionFormat("before", before),
      if (page != null) ..._convertParametersForCollectionFormat("page", page),
      if (limit != null)
        ..._convertParametersForCollectionFormat("limit", limit),
    ];

    // header params
    final Map<String, String> headerParams = <String, String>{
      if (acceptLanguage is String)
        "accept-language": acceptLanguage.toString(),
      if (xDateTime is DateTime) "x-date-time": xDateTime.toIso8601String(),
      if (xKeyclicApp is String) "x-keyclic-app": xKeyclicApp.toString(),
      if (xKeyclicAppPlatform is String)
        "x-keyclic-app-platform": xKeyclicAppPlatform.toString(),
      if (xKeyclicAppVersion is String)
        "x-keyclic-app-version": xKeyclicAppVersion.toString(),
    };

    final List<String> contentTypes = <String>[
      "application/json;charset=UTF-8",
      "application/json",
    ];

    final List<String> authNames = <String>[
      "bearer",
    ];

    final Response response = await apiClient.invokeAPI(
      path: path,
      method: 'GET',
      queryParams: queryParams,
      headerParams: headerParams,
      contentType: contentTypes[0],
      authNames: authNames,
    );

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }

    if (response.body == null) {
      return null;
    }

    return apiClient.deserialize(response.body, 'BookmarkPagination')
        as BookmarkPagination;
  }

  /// Retrieve all Document resources.
  ///
  ///
  Future<DocumentPagination> cgetDocumentsByPerson(
    String xKeyclicApp,
    String person, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> order__,
    DateTime after,
    DateTime before,
    String organization,
    List<String> organizations__,
    String state,
    List<String> states__,
    int page,
    int limit,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (person == null) {
      throw ApiException(0, "Missing required param: person");
    }

    // create path and map variables
    final String path = "/people/{person}/documents"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "person" + "}", person.toString());

    // query params
    final List<QueryParam> queryParams = <QueryParam>[
      if (order__ != null)
        ..._convertParametersForCollectionFormat("order[]", order__,
            collectionFormat: "multi"),
      if (after != null)
        ..._convertParametersForCollectionFormat("after", after),
      if (before != null)
        ..._convertParametersForCollectionFormat("before", before),
      if (organization != null)
        ..._convertParametersForCollectionFormat("organization", organization),
      if (organizations__ != null)
        ..._convertParametersForCollectionFormat(
            "organizations[]", organizations__,
            collectionFormat: "multi"),
      if (state != null)
        ..._convertParametersForCollectionFormat("state", state),
      if (states__ != null)
        ..._convertParametersForCollectionFormat("states[]", states__,
            collectionFormat: "multi"),
      if (page != null) ..._convertParametersForCollectionFormat("page", page),
      if (limit != null)
        ..._convertParametersForCollectionFormat("limit", limit),
    ];

    // header params
    final Map<String, String> headerParams = <String, String>{
      if (acceptLanguage is String)
        "accept-language": acceptLanguage.toString(),
      if (xDateTime is DateTime) "x-date-time": xDateTime.toIso8601String(),
      if (xKeyclicApp is String) "x-keyclic-app": xKeyclicApp.toString(),
      if (xKeyclicAppPlatform is String)
        "x-keyclic-app-platform": xKeyclicAppPlatform.toString(),
      if (xKeyclicAppVersion is String)
        "x-keyclic-app-version": xKeyclicAppVersion.toString(),
    };

    final List<String> contentTypes = <String>[
      "application/json;charset=UTF-8",
      "application/json",
    ];

    final List<String> authNames = <String>[
      "bearer",
    ];

    final Response response = await apiClient.invokeAPI(
      path: path,
      method: 'GET',
      queryParams: queryParams,
      headerParams: headerParams,
      contentType: contentTypes[0],
      authNames: authNames,
    );

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }

    if (response.body == null) {
      return null;
    }

    return apiClient.deserialize(response.body, 'DocumentPagination')
        as DocumentPagination;
  }

  /// Retrieve all Membership resources.
  ///
  ///
  Future<MemberPagination> cgetMembershipsByPerson(
    String xKeyclicApp,
    String person, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> order__,
    DateTime after,
    DateTime before,
    String permission,
    String query,
    String role,
    List<String> roles__,
    String type,
    int page,
    int limit,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (person == null) {
      throw ApiException(0, "Missing required param: person");
    }

    // create path and map variables
    final String path = "/people/{person}/memberships"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "person" + "}", person.toString());

    // query params
    final List<QueryParam> queryParams = <QueryParam>[
      if (order__ != null)
        ..._convertParametersForCollectionFormat("order[]", order__,
            collectionFormat: "multi"),
      if (after != null)
        ..._convertParametersForCollectionFormat("after", after),
      if (before != null)
        ..._convertParametersForCollectionFormat("before", before),
      if (permission != null)
        ..._convertParametersForCollectionFormat("permission", permission),
      if (query != null)
        ..._convertParametersForCollectionFormat("query", query),
      if (role != null) ..._convertParametersForCollectionFormat("role", role),
      if (roles__ != null)
        ..._convertParametersForCollectionFormat("roles[]", roles__,
            collectionFormat: "multi"),
      if (type != null) ..._convertParametersForCollectionFormat("type", type),
      if (page != null) ..._convertParametersForCollectionFormat("page", page),
      if (limit != null)
        ..._convertParametersForCollectionFormat("limit", limit),
    ];

    // header params
    final Map<String, String> headerParams = <String, String>{
      if (acceptLanguage is String)
        "accept-language": acceptLanguage.toString(),
      if (xDateTime is DateTime) "x-date-time": xDateTime.toIso8601String(),
      if (xKeyclicApp is String) "x-keyclic-app": xKeyclicApp.toString(),
      if (xKeyclicAppPlatform is String)
        "x-keyclic-app-platform": xKeyclicAppPlatform.toString(),
      if (xKeyclicAppVersion is String)
        "x-keyclic-app-version": xKeyclicAppVersion.toString(),
    };

    final List<String> contentTypes = <String>[
      "application/json;charset=UTF-8",
      "application/json",
    ];

    final List<String> authNames = <String>[
      "bearer",
    ];

    final Response response = await apiClient.invokeAPI(
      path: path,
      method: 'GET',
      queryParams: queryParams,
      headerParams: headerParams,
      contentType: contentTypes[0],
      authNames: authNames,
    );

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }

    if (response.body == null) {
      return null;
    }

    return apiClient.deserialize(response.body, 'MemberPagination')
        as MemberPagination;
  }

  /// Retrieve all Operation resources.
  ///
  ///
  Future<OperationPagination> cgetOperationsByPerson(
    String xKeyclicApp,
    String person, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> order__,
    String assignedTo,
    List<String> assignedTos__,
    String batch,
    List<String> batches__,
    String category,
    List<String> categories__,
    String createdBy,
    List<String> createdBies__,
    DateTime after,
    DateTime before,
    String deep,
    String delegatedTo,
    List<String> delegatedTos__,
    String hasDocuments,
    String isNull,
    String leaf,
    String level,
    String managedBy,
    List<String> managedBies__,
    String operationStateAll,
    String operationState,
    List<String> operationStates__,
    String organization,
    List<String> organizations__,
    String phase,
    List<String> phases__,
    String place,
    List<String> places__,
    String priority,
    List<String> priorities__,
    String query,
    List<String> rating__,
    DateTime scheduledAtAfter,
    DateTime scheduledAtBefore,
    String state,
    List<String> states__,
    List<String> visibility__,
    int page,
    int limit,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (person == null) {
      throw ApiException(0, "Missing required param: person");
    }

    // create path and map variables
    final String path = "/people/{person}/operations"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "person" + "}", person.toString());

    // query params
    final List<QueryParam> queryParams = <QueryParam>[
      if (order__ != null)
        ..._convertParametersForCollectionFormat("order[]", order__,
            collectionFormat: "multi"),
      if (assignedTo != null)
        ..._convertParametersForCollectionFormat("assigned_to", assignedTo),
      if (assignedTos__ != null)
        ..._convertParametersForCollectionFormat(
            "assigned_tos[]", assignedTos__,
            collectionFormat: "multi"),
      if (batch != null)
        ..._convertParametersForCollectionFormat("batch", batch),
      if (batches__ != null)
        ..._convertParametersForCollectionFormat("batches[]", batches__,
            collectionFormat: "multi"),
      if (category != null)
        ..._convertParametersForCollectionFormat("category", category),
      if (categories__ != null)
        ..._convertParametersForCollectionFormat("categories[]", categories__,
            collectionFormat: "multi"),
      if (createdBy != null)
        ..._convertParametersForCollectionFormat("created_by", createdBy),
      if (createdBies__ != null)
        ..._convertParametersForCollectionFormat(
            "created_bies[]", createdBies__,
            collectionFormat: "multi"),
      if (after != null)
        ..._convertParametersForCollectionFormat("after", after),
      if (before != null)
        ..._convertParametersForCollectionFormat("before", before),
      if (deep != null) ..._convertParametersForCollectionFormat("deep", deep),
      if (delegatedTo != null)
        ..._convertParametersForCollectionFormat("delegated_to", delegatedTo),
      if (delegatedTos__ != null)
        ..._convertParametersForCollectionFormat(
            "delegated_tos[]", delegatedTos__,
            collectionFormat: "multi"),
      if (hasDocuments != null)
        ..._convertParametersForCollectionFormat("has_documents", hasDocuments),
      if (isNull != null)
        ..._convertParametersForCollectionFormat("is_null", isNull),
      if (leaf != null) ..._convertParametersForCollectionFormat("leaf", leaf),
      if (level != null)
        ..._convertParametersForCollectionFormat("level", level),
      if (managedBy != null)
        ..._convertParametersForCollectionFormat("managed_by", managedBy),
      if (managedBies__ != null)
        ..._convertParametersForCollectionFormat(
            "managed_bies[]", managedBies__,
            collectionFormat: "multi"),
      if (operationStateAll != null)
        ..._convertParametersForCollectionFormat(
            "operation_state_all", operationStateAll),
      if (operationState != null)
        ..._convertParametersForCollectionFormat(
            "operation_state", operationState),
      if (operationStates__ != null)
        ..._convertParametersForCollectionFormat(
            "operation_states[]", operationStates__,
            collectionFormat: "multi"),
      if (organization != null)
        ..._convertParametersForCollectionFormat("organization", organization),
      if (organizations__ != null)
        ..._convertParametersForCollectionFormat(
            "organizations[]", organizations__,
            collectionFormat: "multi"),
      if (phase != null)
        ..._convertParametersForCollectionFormat("phase", phase),
      if (phases__ != null)
        ..._convertParametersForCollectionFormat("phases[]", phases__,
            collectionFormat: "multi"),
      if (place != null)
        ..._convertParametersForCollectionFormat("place", place),
      if (places__ != null)
        ..._convertParametersForCollectionFormat("places[]", places__,
            collectionFormat: "multi"),
      if (priority != null)
        ..._convertParametersForCollectionFormat("priority", priority),
      if (priorities__ != null)
        ..._convertParametersForCollectionFormat("priorities[]", priorities__,
            collectionFormat: "multi"),
      if (query != null)
        ..._convertParametersForCollectionFormat("query", query),
      if (rating__ != null)
        ..._convertParametersForCollectionFormat("rating[]", rating__,
            collectionFormat: "multi"),
      if (scheduledAtAfter != null)
        ..._convertParametersForCollectionFormat(
            "scheduled_at_after", scheduledAtAfter),
      if (scheduledAtBefore != null)
        ..._convertParametersForCollectionFormat(
            "scheduled_at_before", scheduledAtBefore),
      if (state != null)
        ..._convertParametersForCollectionFormat("state", state),
      if (states__ != null)
        ..._convertParametersForCollectionFormat("states[]", states__,
            collectionFormat: "multi"),
      if (visibility__ != null)
        ..._convertParametersForCollectionFormat("visibility[]", visibility__,
            collectionFormat: "multi"),
      if (page != null) ..._convertParametersForCollectionFormat("page", page),
      if (limit != null)
        ..._convertParametersForCollectionFormat("limit", limit),
    ];

    // header params
    final Map<String, String> headerParams = <String, String>{
      if (acceptLanguage is String)
        "accept-language": acceptLanguage.toString(),
      if (xDateTime is DateTime) "x-date-time": xDateTime.toIso8601String(),
      if (xKeyclicApp is String) "x-keyclic-app": xKeyclicApp.toString(),
      if (xKeyclicAppPlatform is String)
        "x-keyclic-app-platform": xKeyclicAppPlatform.toString(),
      if (xKeyclicAppVersion is String)
        "x-keyclic-app-version": xKeyclicAppVersion.toString(),
    };

    final List<String> contentTypes = <String>[
      "application/json;charset=UTF-8",
      "application/json",
    ];

    final List<String> authNames = <String>[
      "bearer",
    ];

    final Response response = await apiClient.invokeAPI(
      path: path,
      method: 'GET',
      queryParams: queryParams,
      headerParams: headerParams,
      contentType: contentTypes[0],
      authNames: authNames,
    );

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }

    if (response.body == null) {
      return null;
    }

    return apiClient.deserialize(response.body, 'OperationPagination')
        as OperationPagination;
  }

  /// Retrieve all ReviewRequest resources.
  ///
  ///
  Future<ReviewRequestPagination> cgetReviewRequestsByPerson(
    String xKeyclicApp,
    String person, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> order__,
    DateTime after,
    DateTime before,
    int page,
    int limit,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (person == null) {
      throw ApiException(0, "Missing required param: person");
    }

    // create path and map variables
    final String path = "/people/{person}/review-requests"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "person" + "}", person.toString());

    // query params
    final List<QueryParam> queryParams = <QueryParam>[
      if (order__ != null)
        ..._convertParametersForCollectionFormat("order[]", order__,
            collectionFormat: "multi"),
      if (after != null)
        ..._convertParametersForCollectionFormat("after", after),
      if (before != null)
        ..._convertParametersForCollectionFormat("before", before),
      if (page != null) ..._convertParametersForCollectionFormat("page", page),
      if (limit != null)
        ..._convertParametersForCollectionFormat("limit", limit),
    ];

    // header params
    final Map<String, String> headerParams = <String, String>{
      if (acceptLanguage is String)
        "accept-language": acceptLanguage.toString(),
      if (xDateTime is DateTime) "x-date-time": xDateTime.toIso8601String(),
      if (xKeyclicApp is String) "x-keyclic-app": xKeyclicApp.toString(),
      if (xKeyclicAppPlatform is String)
        "x-keyclic-app-platform": xKeyclicAppPlatform.toString(),
      if (xKeyclicAppVersion is String)
        "x-keyclic-app-version": xKeyclicAppVersion.toString(),
    };

    final List<String> contentTypes = <String>[
      "application/json;charset=UTF-8",
      "application/json",
    ];

    final List<String> authNames = <String>[
      "bearer",
    ];

    final Response response = await apiClient.invokeAPI(
      path: path,
      method: 'GET',
      queryParams: queryParams,
      headerParams: headerParams,
      contentType: contentTypes[0],
      authNames: authNames,
    );

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }

    if (response.body == null) {
      return null;
    }

    return apiClient.deserialize(response.body, 'ReviewRequestPagination')
        as ReviewRequestPagination;
  }

  /// Retrieve one Person resource.
  ///
  ///
  Future<Person> getPerson(
    String xKeyclicApp,
    String person, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (person == null) {
      throw ApiException(0, "Missing required param: person");
    }

    // create path and map variables
    final String path = "/people/{person}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "person" + "}", person.toString());

    // query params
    final List<QueryParam> queryParams = <QueryParam>[];

    // header params
    final Map<String, String> headerParams = <String, String>{
      if (acceptLanguage is String)
        "accept-language": acceptLanguage.toString(),
      if (xDateTime is DateTime) "x-date-time": xDateTime.toIso8601String(),
      if (xKeyclicApp is String) "x-keyclic-app": xKeyclicApp.toString(),
      if (xKeyclicAppPlatform is String)
        "x-keyclic-app-platform": xKeyclicAppPlatform.toString(),
      if (xKeyclicAppVersion is String)
        "x-keyclic-app-version": xKeyclicAppVersion.toString(),
    };

    final List<String> contentTypes = <String>[
      "application/json;charset=UTF-8",
      "application/json",
    ];

    final List<String> authNames = <String>[
      "bearer",
    ];

    final Response response = await apiClient.invokeAPI(
      path: path,
      method: 'GET',
      queryParams: queryParams,
      headerParams: headerParams,
      contentType: contentTypes[0],
      authNames: authNames,
    );

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }

    if (response.body == null) {
      return null;
    }

    return apiClient.deserialize(response.body, 'Person') as Person;
  }

  /// Edit one Person resource.
  ///
  ///
  Future<Person> patchPerson(
    String xKeyclicApp,
    PersonPatch personPatch,
    String person, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (personPatch == null) {
      throw ApiException(0, "Missing required param: personPatch");
    }

    if (person == null) {
      throw ApiException(0, "Missing required param: person");
    }

    // create path and map variables
    final String path = "/people/{person}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "person" + "}", person.toString());

    // query params
    final List<QueryParam> queryParams = <QueryParam>[];

    // header params
    final Map<String, String> headerParams = <String, String>{
      if (acceptLanguage is String)
        "accept-language": acceptLanguage.toString(),
      if (xDateTime is DateTime) "x-date-time": xDateTime.toIso8601String(),
      if (xKeyclicApp is String) "x-keyclic-app": xKeyclicApp.toString(),
      if (xKeyclicAppPlatform is String)
        "x-keyclic-app-platform": xKeyclicAppPlatform.toString(),
      if (xKeyclicAppVersion is String)
        "x-keyclic-app-version": xKeyclicAppVersion.toString(),
    };

    final List<String> contentTypes = <String>[
      "application/json;charset=UTF-8",
      "application/json",
    ];

    final List<String> authNames = <String>[
      "bearer",
    ];

    final Response response = await apiClient.invokeAPI(
      path: path,
      method: 'PATCH',
      queryParams: queryParams,
      body: personPatch,
      headerParams: headerParams,
      contentType: contentTypes[0],
      authNames: authNames,
    );

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }

    if (response.body == null) {
      return null;
    }

    return apiClient.deserialize(response.body, 'Person') as Person;
  }
}
