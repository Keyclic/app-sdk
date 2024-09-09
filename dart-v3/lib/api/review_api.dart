//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ReviewApi {
  const ReviewApi(this._apiClient);

  final ApiPlatformClient _apiClient;

  /// Retrieves a Review resource.
  /// Retrieves a Review resource.
  ///
  /// Parameters:
  /// * [identifier] - Review identifier
  /// * [xKeyclicApp] -
  /// * [acceptLanguage] -
  /// * [xDateTime] -
  /// * [xKeyclicAppPlatform] -
  /// * [xKeyclicAppVersion] -
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ReviewJsonhalRead] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ReviewJsonhalRead>> getReview({
    required String identifier,
    required String xKeyclicApp,
    String? acceptLanguage,
    DateTime? xDateTime,
    String? xKeyclicAppPlatform,
    String? xKeyclicAppVersion,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final String path = r'/reviews/{identifier}'
        .replaceAll('{' r'identifier' '}', identifier.toString());
    final options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        // to string ??
        if (acceptLanguage != null) r'Accept-Language': acceptLanguage,
        if (xDateTime != null) r'X-Date-Time': xDateTime,
        r'X-Keyclic-App': xKeyclicApp,
        if (xKeyclicAppPlatform != null)
          r'X-Keyclic-App-Platform': xKeyclicAppPlatform,
        if (xKeyclicAppVersion != null)
          r'X-Keyclic-App-Version': xKeyclicAppVersion,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'apiKey',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final response = await _apiClient.dio.request<Object>(
      path,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ReviewJsonhalRead responseData;

    try {
      responseData = await _apiClient.deserializeAsync<ReviewJsonhalRead>(
          response.data!, 'ReviewJsonhalRead');
    } catch (error, stackTrace) {
      throw DioException(
        error: error,
        requestOptions: response.requestOptions,
        response: response,
        stackTrace: stackTrace,
        type: DioExceptionType.unknown,
      );
    }

    return Response<ReviewJsonhalRead>(
      data: responseData,
      headers: response.headers,
      isRedirect: response.isRedirect,
      requestOptions: response.requestOptions,
      redirects: response.redirects,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
      extra: response.extra,
    );
  }

  /// Retrieves the collection of Review resources.
  /// Retrieves the collection of Review resources.
  ///
  /// Parameters:
  /// * [xKeyclicApp] -
  /// * [xOrganizationId] -
  /// * [page] - The collection page number
  /// * [limit] - The number of items per page
  /// * [pagination] - Enable or disable pagination
  /// * [itemReviewed] -
  /// * [itemReviewedLeftSquareBracketRightSquareBracket] -
  /// * [itemReviewedPeriodAssignmentsPeriodService] -
  /// * [itemReviewedPeriodAssignmentsPeriodServiceLeftSquareBracketRightSquareBracket] -
  /// * [itemReviewedPeriodCategory] -
  /// * [itemReviewedPeriodCategoryLeftSquareBracketRightSquareBracket] -
  /// * [reviewRating] -
  /// * [reviewRatingLeftSquareBracketRightSquareBracket] -
  /// * [acceptLanguage] -
  /// * [xDateTime] -
  /// * [xKeyclicAppPlatform] -
  /// * [xKeyclicAppVersion] -
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GetReviewCollection200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<GetReviewCollection200Response>> getReviewCollection({
    required String xKeyclicApp,
    required String xOrganizationId,
    int? page,
    int? limit,
    bool? pagination,
    String? itemReviewed,
    List<String>? itemReviewedLeftSquareBracketRightSquareBracket,
    String? itemReviewedPeriodAssignmentsPeriodService,
    List<String>?
        itemReviewedPeriodAssignmentsPeriodServiceLeftSquareBracketRightSquareBracket,
    String? itemReviewedPeriodCategory,
    List<String>? itemReviewedPeriodCategoryLeftSquareBracketRightSquareBracket,
    int? reviewRating,
    List<int>? reviewRatingLeftSquareBracketRightSquareBracket,
    String? acceptLanguage,
    DateTime? xDateTime,
    String? xKeyclicAppPlatform,
    String? xKeyclicAppVersion,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final String path = r'/reviews';
    final options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        // to string ??
        if (acceptLanguage != null) r'Accept-Language': acceptLanguage,
        if (xDateTime != null) r'X-Date-Time': xDateTime,
        r'X-Keyclic-App': xKeyclicApp,
        if (xKeyclicAppPlatform != null)
          r'X-Keyclic-App-Platform': xKeyclicAppPlatform,
        if (xKeyclicAppVersion != null)
          r'X-Keyclic-App-Version': xKeyclicAppVersion,
        r'X-Organization-Id': xOrganizationId,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'apiKey',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final queryParameters = <String, dynamic>{
      if (page != null) r'page': encodeQueryParameter(page),
      if (limit != null) r'limit': encodeQueryParameter(limit),
      if (pagination != null) r'pagination': encodeQueryParameter(pagination),
      if (itemReviewed != null)
        r'itemReviewed': encodeQueryParameter(itemReviewed),
      if (itemReviewedLeftSquareBracketRightSquareBracket != null)
        r'itemReviewed[]': encodeCollectionQueryParameter(
            itemReviewedLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (itemReviewedPeriodAssignmentsPeriodService != null)
        r'itemReviewed.assignments.service':
            encodeQueryParameter(itemReviewedPeriodAssignmentsPeriodService),
      if (itemReviewedPeriodAssignmentsPeriodServiceLeftSquareBracketRightSquareBracket !=
          null)
        r'itemReviewed.assignments.service[]': encodeCollectionQueryParameter(
            itemReviewedPeriodAssignmentsPeriodServiceLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (itemReviewedPeriodCategory != null)
        r'itemReviewed.category':
            encodeQueryParameter(itemReviewedPeriodCategory),
      if (itemReviewedPeriodCategoryLeftSquareBracketRightSquareBracket != null)
        r'itemReviewed.category[]': encodeCollectionQueryParameter(
            itemReviewedPeriodCategoryLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (reviewRating != null)
        r'reviewRating': encodeQueryParameter(reviewRating),
      if (reviewRatingLeftSquareBracketRightSquareBracket != null)
        r'reviewRating[]': encodeCollectionQueryParameter(
            reviewRatingLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
    };

    final response = await _apiClient.dio.request<Object>(
      path,
      options: options,
      queryParameters: queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    GetReviewCollection200Response responseData;

    try {
      responseData =
          await _apiClient.deserializeAsync<GetReviewCollection200Response>(
              response.data!, 'GetReviewCollection200Response');
    } catch (error, stackTrace) {
      throw DioException(
        error: error,
        requestOptions: response.requestOptions,
        response: response,
        stackTrace: stackTrace,
        type: DioExceptionType.unknown,
      );
    }

    return Response<GetReviewCollection200Response>(
      data: responseData,
      headers: response.headers,
      isRedirect: response.isRedirect,
      requestOptions: response.requestOptions,
      redirects: response.redirects,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
      extra: response.extra,
    );
  }
}
