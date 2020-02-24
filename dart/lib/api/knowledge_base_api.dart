part of keyclic_sdk_api.api;

class KnowledgeBaseApi {
  KnowledgeBaseApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Retrieve all Article resources.
  ///
  ///
  Future<ArticlePagination> cgetArticlesByKnowledgeBase(
    String xKeyclicApp,
    String knowledgeBase, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppVersion,
    DateTime after,
    DateTime before,
    String order,
    String section,
    int page,
    int limit,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (knowledgeBase == null) {
      throw ApiException(0, "Missing required param: knowledgeBase");
    }

    // create path and map variables
    final String path = "/knowledge-bases/{knowledgeBase}/articles"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "knowledgeBase" + "}", knowledgeBase.toString());

    // query params
    final List<QueryParam> queryParams = [
      if (after != null)
        ..._convertParametersForCollectionFormat("after", after),
      if (before != null)
        ..._convertParametersForCollectionFormat("before", before),
      if (order != null)
        ..._convertParametersForCollectionFormat("order", order),
      if (section != null)
        ..._convertParametersForCollectionFormat("section", section),
      if (page != null) ..._convertParametersForCollectionFormat("page", page),
      if (limit != null)
        ..._convertParametersForCollectionFormat("limit", limit),
    ];

    // header params
    final Map<String, String> headerParams = {
      "accept-language": acceptLanguage,
      if (xDateTime is DateTime) "x-date-time": xDateTime.toIso8601String(),
      "x-keyclic-app": xKeyclicApp,
      "x-keyclic-app-version": xKeyclicAppVersion,
    };

    final List<String> contentTypes = [
      "application/json;charset=UTF-8",
      "application/json",
    ];

    final List<String> authNames = [
      "bearer",
    ];

    final Object postBody = null;

    final Response response = await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      contentTypes[0],
      authNames,
    );

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }

    if (response.body == null) {
      return null;
    }

    return apiClient.deserialize(response.body, 'ArticlePagination')
        as ArticlePagination;
  }

  /// Retrieve all Section resources.
  ///
  ///
  Future<SectionPagination> cgetSectionsByKnowledgeBase(
    String xKeyclicApp,
    String knowledgeBase, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppVersion,
    DateTime after,
    DateTime before,
    String order,
    int page,
    int limit,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (knowledgeBase == null) {
      throw ApiException(0, "Missing required param: knowledgeBase");
    }

    // create path and map variables
    final String path = "/knowledge-bases/{knowledgeBase}/sections"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "knowledgeBase" + "}", knowledgeBase.toString());

    // query params
    final List<QueryParam> queryParams = [
      if (after != null)
        ..._convertParametersForCollectionFormat("after", after),
      if (before != null)
        ..._convertParametersForCollectionFormat("before", before),
      if (order != null)
        ..._convertParametersForCollectionFormat("order", order),
      if (page != null) ..._convertParametersForCollectionFormat("page", page),
      if (limit != null)
        ..._convertParametersForCollectionFormat("limit", limit),
    ];

    // header params
    final Map<String, String> headerParams = {
      "accept-language": acceptLanguage,
      if (xDateTime is DateTime) "x-date-time": xDateTime.toIso8601String(),
      "x-keyclic-app": xKeyclicApp,
      "x-keyclic-app-version": xKeyclicAppVersion,
    };

    final List<String> contentTypes = [
      "application/json;charset=UTF-8",
      "application/json",
    ];

    final List<String> authNames = [
      "bearer",
    ];

    final Object postBody = null;

    final Response response = await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      contentTypes[0],
      authNames,
    );

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }

    if (response.body == null) {
      return null;
    }

    return apiClient.deserialize(response.body, 'SectionPagination')
        as SectionPagination;
  }

  /// Retrieve one KnowledgeBase resource.
  ///
  ///
  Future<KnowledgeBase> getKnowledgeBase(
    String xKeyclicApp,
    String knowledgeBase, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (knowledgeBase == null) {
      throw ApiException(0, "Missing required param: knowledgeBase");
    }

    // create path and map variables
    final String path = "/knowledge-bases/{knowledgeBase}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "knowledgeBase" + "}", knowledgeBase.toString());

    // query params
    final List<QueryParam> queryParams = [];

    // header params
    final Map<String, String> headerParams = {
      "accept-language": acceptLanguage,
      if (xDateTime is DateTime) "x-date-time": xDateTime.toIso8601String(),
      "x-keyclic-app": xKeyclicApp,
      "x-keyclic-app-version": xKeyclicAppVersion,
    };

    final List<String> contentTypes = [
      "application/json;charset=UTF-8",
      "application/json",
    ];

    final List<String> authNames = [
      "bearer",
    ];

    final Object postBody = null;

    final Response response = await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      contentTypes[0],
      authNames,
    );

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }

    if (response.body == null) {
      return null;
    }

    return apiClient.deserialize(response.body, 'KnowledgeBase')
        as KnowledgeBase;
  }
}
