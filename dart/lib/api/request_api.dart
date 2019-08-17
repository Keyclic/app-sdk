part of keyclic_sdk_api.api;

class RequestApi {
  RequestApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Retrieve all Request resources.
  ///
  ///
  Future<FeedbackReviewRequestPagination> cgetRequestsByPerson(
    String xKeyclicApp,
    String person, {
    String acceptLanguage,
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

    if (person == null) {
      throw ApiException(0, "Missing required param: person");
    }

    // create path and map variables
    final String path = "/people/{person}/review-requests"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "person" + "}", person.toString());

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

    return apiClient.deserialize(
            response.body, 'FeedbackReviewRequestPagination')
        as FeedbackReviewRequestPagination;
  }
}