//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class OccupantApi {
  const OccupantApi(this._apiClient);

  final ApiPlatformClient _apiClient;

  /// Retrieves a Occupant resource.
  /// Retrieves a Occupant resource.
  ///
  /// Parameters:
  /// * [identifier] - Occupant identifier
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
  /// Returns a [Future] containing a [Response] with a [OccupantJsonhalRead] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<OccupantJsonhalRead>> getOccupant({
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
    final String path = r'/occupants/{identifier}'
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

    OccupantJsonhalRead responseData;

    try {
      responseData = await _apiClient.deserializeAsync<OccupantJsonhalRead>(
          response.data!, 'OccupantJsonhalRead');
    } catch (error, stackTrace) {
      throw DioException(
        error: error,
        requestOptions: response.requestOptions,
        response: response,
        stackTrace: stackTrace,
        type: DioExceptionType.unknown,
      );
    }

    return Response<OccupantJsonhalRead>(
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

  /// Retrieves the collection of Occupant resources.
  /// Retrieves the collection of Occupant resources.
  ///
  /// Parameters:
  /// * [xKeyclicApp] -
  /// * [xOrganizationId] -
  /// * [page] - The collection page number
  /// * [limit] - The number of items per page
  /// * [pagination] - Enable or disable pagination
  /// * [search] -
  /// * [asset] -
  /// * [assetLeftSquareBracketRightSquareBracket] -
  /// * [member] -
  /// * [memberLeftSquareBracketRightSquareBracket] -
  /// * [memberPeriodPerson] -
  /// * [memberPeriodPersonLeftSquareBracketRightSquareBracket] -
  /// * [treeLeftSquareBracketAssetRightSquareBracketLeftSquareBracketAncestorsRightSquareBracketLeftSquareBracketRightSquareBracket] - Filter on the ancestors of a node, all the nodes along the path from that node to the root of the tree.
  /// * [treeLeftSquareBracketAssetRightSquareBracketLeftSquareBracketDescendantsRightSquareBracketLeftSquareBracketRightSquareBracket] - Filter on the tree below the node excluding the node itself.
  /// * [treeLeftSquareBracketAssetRightSquareBracketLeftSquareBracketNodeRightSquareBracketLeftSquareBracketRightSquareBracket] - Filter on the node only.
  /// * [treeLeftSquareBracketAssetRightSquareBracketLeftSquareBracketSubtreeRightSquareBracketLeftSquareBracketRightSquareBracket] - Filter on the tree below the node including the node itself.
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
  /// Returns a [Future] containing a [Response] with a [GetOccupantCollection200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<GetOccupantCollection200Response>> getOccupantCollection({
    required String xKeyclicApp,
    required String xOrganizationId,
    int? page,
    int? limit,
    bool? pagination,
    String? search,
    String? asset,
    List<String>? assetLeftSquareBracketRightSquareBracket,
    String? member,
    List<String>? memberLeftSquareBracketRightSquareBracket,
    String? memberPeriodPerson,
    List<String>? memberPeriodPersonLeftSquareBracketRightSquareBracket,
    List<String>?
        treeLeftSquareBracketAssetRightSquareBracketLeftSquareBracketAncestorsRightSquareBracketLeftSquareBracketRightSquareBracket,
    List<String>?
        treeLeftSquareBracketAssetRightSquareBracketLeftSquareBracketDescendantsRightSquareBracketLeftSquareBracketRightSquareBracket,
    List<String>?
        treeLeftSquareBracketAssetRightSquareBracketLeftSquareBracketNodeRightSquareBracketLeftSquareBracketRightSquareBracket,
    List<String>?
        treeLeftSquareBracketAssetRightSquareBracketLeftSquareBracketSubtreeRightSquareBracketLeftSquareBracketRightSquareBracket,
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
    final String path = r'/occupants';
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
      if (search != null) r'search': encodeQueryParameter(search),
      if (asset != null) r'asset': encodeQueryParameter(asset),
      if (assetLeftSquareBracketRightSquareBracket != null)
        r'asset[]': encodeCollectionQueryParameter(
            assetLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (member != null) r'member': encodeQueryParameter(member),
      if (memberLeftSquareBracketRightSquareBracket != null)
        r'member[]': encodeCollectionQueryParameter(
            memberLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (memberPeriodPerson != null)
        r'member.person': encodeQueryParameter(memberPeriodPerson),
      if (memberPeriodPersonLeftSquareBracketRightSquareBracket != null)
        r'member.person[]': encodeCollectionQueryParameter(
            memberPeriodPersonLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (treeLeftSquareBracketAssetRightSquareBracketLeftSquareBracketAncestorsRightSquareBracketLeftSquareBracketRightSquareBracket !=
          null)
        r'tree[asset][ancestors][]': encodeCollectionQueryParameter(
            treeLeftSquareBracketAssetRightSquareBracketLeftSquareBracketAncestorsRightSquareBracketLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (treeLeftSquareBracketAssetRightSquareBracketLeftSquareBracketDescendantsRightSquareBracketLeftSquareBracketRightSquareBracket !=
          null)
        r'tree[asset][descendants][]': encodeCollectionQueryParameter(
            treeLeftSquareBracketAssetRightSquareBracketLeftSquareBracketDescendantsRightSquareBracketLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (treeLeftSquareBracketAssetRightSquareBracketLeftSquareBracketNodeRightSquareBracketLeftSquareBracketRightSquareBracket !=
          null)
        r'tree[asset][node][]': encodeCollectionQueryParameter(
            treeLeftSquareBracketAssetRightSquareBracketLeftSquareBracketNodeRightSquareBracketLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (treeLeftSquareBracketAssetRightSquareBracketLeftSquareBracketSubtreeRightSquareBracketLeftSquareBracketRightSquareBracket !=
          null)
        r'tree[asset][subtree][]': encodeCollectionQueryParameter(
            treeLeftSquareBracketAssetRightSquareBracketLeftSquareBracketSubtreeRightSquareBracketLeftSquareBracketRightSquareBracket,
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

    GetOccupantCollection200Response responseData;

    try {
      responseData =
          await _apiClient.deserializeAsync<GetOccupantCollection200Response>(
              response.data!, 'GetOccupantCollection200Response');
    } catch (error, stackTrace) {
      throw DioException(
        error: error,
        requestOptions: response.requestOptions,
        response: response,
        stackTrace: stackTrace,
        type: DioExceptionType.unknown,
      );
    }

    return Response<GetOccupantCollection200Response>(
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
