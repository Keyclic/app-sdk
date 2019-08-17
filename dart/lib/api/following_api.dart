part of keyclic_sdk_api.api;

class FollowingApi {
  FollowingApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Retrieve all Following resources.
  ///
  ///
  Future<FeedPagination> cgetFollowingsByFeed(
    String xKeyclicApp,
    String feed, {
    String acceptLanguage,
    String xKeyclicAppVersion,
    int page,
    int limit,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (feed == null) {
      throw ApiException(0, "Missing required param: feed");
    }

    // create path and map variables
    final String path = "/feeds/{feed}/following"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "feed" + "}", feed.toString());

    // query params
    final List<QueryParam> queryParams = [
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

    return apiClient.deserialize(response.body, 'FeedPagination')
        as FeedPagination;
  }
}
