part of keyclic_sdk_api.api;

class ConnectorApi {
  ConnectorApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create one Connector resource.
  ///
  ///
  Future<Run> postConnectorByConnectorAndWorkflow(
    String xKeyclicApp,
    RunData runData,
    String connector,
    String workflow, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (runData == null) {
      throw ApiException(0, "Missing required param: runData");
    }

    if (connector == null) {
      throw ApiException(0, "Missing required param: connector");
    }

    if (workflow == null) {
      throw ApiException(0, "Missing required param: workflow");
    }

    // create path and map variables
    final String path = "/connectors/{connector}/workflows/{workflow}/runs"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "connector" + "}", connector.toString())
        .replaceAll("{" + "workflow" + "}", workflow.toString());

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
      body: runData,
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

    return apiClient.deserialize(response.body, 'Run') as Run;
  }
}
