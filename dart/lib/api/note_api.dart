part of keyclic_sdk_api.api;

class NoteApi {
  NoteApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Remove one Note resource.
  ///
  ///
  Future<void> deleteNote(
    String xKeyclicApp,
    String note, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (note == null) {
      throw ApiException(0, "Missing required param: note");
    }

    // create path and map variables
    final String path = "/notes/{note}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "note" + "}", note.toString());

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
      method: 'DELETE',
      queryParams: queryParams,
      headerParams: headerParams,
      contentType: contentTypes[0],
      authNames: authNames,
    );

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }

    if (response.body == null) {
      return;
    }

    return;
  }

  /// Retrieve one Note resource.
  ///
  ///
  Future<Note> getNote(
    String xKeyclicApp,
    String note, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (note == null) {
      throw ApiException(0, "Missing required param: note");
    }

    // create path and map variables
    final String path = "/notes/{note}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "note" + "}", note.toString());

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

    return apiClient.deserialize(response.body, 'Note') as Note;
  }

  /// Edit one Note resource.
  ///
  ///
  Future<Note> patchNote(
    String xKeyclicApp,
    NotePatch notePatch,
    String note, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (notePatch == null) {
      throw ApiException(0, "Missing required param: notePatch");
    }

    if (note == null) {
      throw ApiException(0, "Missing required param: note");
    }

    // create path and map variables
    final String path = "/notes/{note}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "note" + "}", note.toString());

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
      body: notePatch,
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

    return apiClient.deserialize(response.body, 'Note') as Note;
  }

  /// Create one Note resource.
  ///
  ///
  Future<Note> postNote(
    String xKeyclicApp,
    MessageData messageData, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (messageData == null) {
      throw ApiException(0, "Missing required param: messageData");
    }

    // create path and map variables
    final String path = "/notes".replaceAll("{format}", "json");

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
      body: messageData,
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

    return apiClient.deserialize(response.body, 'Note') as Note;
  }
}
