part of keyclic_sdk_api.api;

class ReportApi {
  ReportApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Retrieve all Assignment resources.
  ///
  ///
  Future<AssignmentPagination> cgetAssignmentsByReport(
    String xKeyclicApp,
    String report, {
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

    if (report == null) {
      throw ApiException(0, "Missing required param: report");
    }

    // create path and map variables
    final String path = "/reports/{report}/assignments"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "report" + "}", report.toString());

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

    return apiClient.deserialize(response.body, 'AssignmentPagination')
        as AssignmentPagination;
  }

  /// Retrieve all Document resources.
  ///
  ///
  Future<DocumentPagination> cgetDocumentsByReport(
    String xKeyclicApp,
    String report, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    List<String> order__,
    DateTime after,
    DateTime before,
    String state,
    List<String> states__,
    int page,
    int limit,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (report == null) {
      throw ApiException(0, "Missing required param: report");
    }

    // create path and map variables
    final String path = "/reports/{report}/documents"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "report" + "}", report.toString());

    // query params
    final List<QueryParam> queryParams = <QueryParam>[
      if (order__ != null)
        ..._convertParametersForCollectionFormat("order[]", order__,
            collectionFormat: "multi"),
      if (after != null)
        ..._convertParametersForCollectionFormat("after", after),
      if (before != null)
        ..._convertParametersForCollectionFormat("before", before),
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

  /// Retrieve all Operation resources.
  ///
  ///
  Future<OperationPagination> cgetOperationsByReport(
    String xKeyclicApp,
    String report, {
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

    if (report == null) {
      throw ApiException(0, "Missing required param: report");
    }

    // create path and map variables
    final String path = "/reports/{report}/operations"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "report" + "}", report.toString());

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

  /// Retrieve one Report resource.
  ///
  ///
  Future<Report> getReport(
    String xKeyclicApp,
    String report, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (report == null) {
      throw ApiException(0, "Missing required param: report");
    }

    // create path and map variables
    final String path = "/reports/{report}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "report" + "}", report.toString());

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

    return apiClient.deserialize(response.body, 'Report') as Report;
  }

  /// Retrieve one Tracking resource.
  ///
  ///
  Future<Tracking> getTrackingByReport(
    String xKeyclicApp,
    String report, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (report == null) {
      throw ApiException(0, "Missing required param: report");
    }

    // create path and map variables
    final String path = "/reports/{report}/tracking"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "report" + "}", report.toString());

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

    return apiClient.deserialize(response.body, 'Tracking') as Tracking;
  }

  /// Edit one Report resource.
  ///
  ///
  Future<Report> patchReport(
    String xKeyclicApp,
    TaskPatch taskPatch,
    String report, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (taskPatch == null) {
      throw ApiException(0, "Missing required param: taskPatch");
    }

    if (report == null) {
      throw ApiException(0, "Missing required param: report");
    }

    // create path and map variables
    final String path = "/reports/{report}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "report" + "}", report.toString());

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
      body: taskPatch,
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

    return apiClient.deserialize(response.body, 'Report') as Report;
  }

  /// Create one Document resource.
  ///
  ///
  Future<Document> postDocumentByReport(
    String xKeyclicApp,
    DocumentData documentData,
    String report, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (documentData == null) {
      throw ApiException(0, "Missing required param: documentData");
    }

    if (report == null) {
      throw ApiException(0, "Missing required param: report");
    }

    // create path and map variables
    final String path = "/reports/{report}/documents"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "report" + "}", report.toString());

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
      method: 'POST',
      queryParams: queryParams,
      body: documentData,
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

    return apiClient.deserialize(response.body, 'Document') as Document;
  }

  /// Create one Workflow resource.
  ///
  ///
  Future<Report> postWorkflowByReport(
    String xKeyclicApp,
    WorkflowData workflowData,
    String report, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (workflowData == null) {
      throw ApiException(0, "Missing required param: workflowData");
    }

    if (report == null) {
      throw ApiException(0, "Missing required param: report");
    }

    // create path and map variables
    final String path = "/reports/{report}/workflow"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "report" + "}", report.toString());

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
      method: 'POST',
      queryParams: queryParams,
      body: workflowData,
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

    return apiClient.deserialize(response.body, 'Report') as Report;
  }
}
