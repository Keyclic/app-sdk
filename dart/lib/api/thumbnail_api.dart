part of keyclic_sdk_api.api;

class ThumbnailApi {
  ThumbnailApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Retrieve one Thumbnail resource.
  ///
  ///
  Future<MultipartFile> getThumbnailByBusinessActivityAndWidthAndHeight(
    String xKeyclicApp,
    String businessActivity,
    String width,
    String height, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (businessActivity == null) {
      throw ApiException(0, "Missing required param: businessActivity");
    }

    if (width == null) {
      throw ApiException(0, "Missing required param: width");
    }

    if (height == null) {
      throw ApiException(0, "Missing required param: height");
    }

    // create path and map variables
    final String path =
        "/businessactivities/{businessActivity}/thumbnail/{width}/{height}"
            .replaceAll("{format}", "json")
            .replaceAll(
                "{" + "businessActivity" + "}", businessActivity.toString())
            .replaceAll("{" + "width" + "}", width.toString())
            .replaceAll("{" + "height" + "}", height.toString());

    // query params
    final List<QueryParam> queryParams = [];

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

    return apiClient.deserialize(response.body, 'MultipartFile')
        as MultipartFile;
  }
}