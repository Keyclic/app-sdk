//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class QuoteApi {
  const QuoteApi(this._apiClient);

  final ApiPlatformClient _apiClient;

  /// Removes the Quote resource.
  /// Removes the Quote resource.
  ///
  /// Parameters:
  /// * [identifier] - Quote identifier
  /// * [xKeyclicApp] -
  /// * [xOrganizationId] -
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
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> deleteQuote({
    required String identifier,
    required String xKeyclicApp,
    required String xOrganizationId,
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
    final String path = r'/quotes/{identifier}'
        .replaceAll('{' r'identifier' '}', identifier.toString());
    final options = Options(
      method: r'DELETE',
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

    return _apiClient.dio.request<Object>(
      path,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  /// Retrieves a Quote resource.
  /// Retrieves a Quote resource.
  ///
  /// Parameters:
  /// * [identifier] - Quote identifier
  /// * [xKeyclicApp] -
  /// * [xOrganizationId] -
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
  /// Returns a [Future] containing a [Response] with a [QuoteJsonhalRead] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<QuoteJsonhalRead>> getQuote({
    required String identifier,
    required String xKeyclicApp,
    required String xOrganizationId,
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
    final String path = r'/quotes/{identifier}'
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

    final response = await _apiClient.dio.request<Object>(
      path,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    QuoteJsonhalRead responseData;

    try {
      responseData = await _apiClient.deserializeAsync<QuoteJsonhalRead>(
          response.data!, 'QuoteJsonhalRead');
    } catch (error, stackTrace) {
      throw DioException(
        error: error,
        requestOptions: response.requestOptions,
        response: response,
        stackTrace: stackTrace,
        type: DioExceptionType.unknown,
      );
    }

    return Response<QuoteJsonhalRead>(
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

  /// Retrieves the collection of Quote resources.
  /// Retrieves the collection of Quote resources.
  ///
  /// Parameters:
  /// * [xKeyclicApp] -
  /// * [xOrganizationId] -
  /// * [page] - The collection page number
  /// * [limit] - The number of items per page
  /// * [pagination] - Enable or disable pagination
  /// * [search] -
  /// * [createdAtLeftSquareBracketBeforeRightSquareBracket] -
  /// * [createdAtLeftSquareBracketStrictlyBeforeRightSquareBracket] -
  /// * [createdAtLeftSquareBracketAfterRightSquareBracket] -
  /// * [createdAtLeftSquareBracketStrictlyAfterRightSquareBracket] -
  /// * [expirationDateLeftSquareBracketBeforeRightSquareBracket] -
  /// * [expirationDateLeftSquareBracketStrictlyBeforeRightSquareBracket] -
  /// * [expirationDateLeftSquareBracketAfterRightSquareBracket] -
  /// * [expirationDateLeftSquareBracketStrictlyAfterRightSquareBracket] -
  /// * [issueDateLeftSquareBracketBeforeRightSquareBracket] -
  /// * [issueDateLeftSquareBracketStrictlyBeforeRightSquareBracket] -
  /// * [issueDateLeftSquareBracketAfterRightSquareBracket] -
  /// * [issueDateLeftSquareBracketStrictlyAfterRightSquareBracket] -
  /// * [resolutionDateLeftSquareBracketBeforeRightSquareBracket] -
  /// * [resolutionDateLeftSquareBracketStrictlyBeforeRightSquareBracket] -
  /// * [resolutionDateLeftSquareBracketAfterRightSquareBracket] -
  /// * [resolutionDateLeftSquareBracketStrictlyAfterRightSquareBracket] -
  /// * [updatedAtLeftSquareBracketBeforeRightSquareBracket] -
  /// * [updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket] -
  /// * [updatedAtLeftSquareBracketAfterRightSquareBracket] -
  /// * [updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket] -
  /// * [orderLeftSquareBracketAmountExcludingTaxPeriodValueRightSquareBracket] -
  /// * [orderLeftSquareBracketAmountIncludingTaxPeriodValueRightSquareBracket] -
  /// * [orderLeftSquareBracketIssueDateRightSquareBracket] -
  /// * [orderLeftSquareBracketNameRightSquareBracket] -
  /// * [orderLeftSquareBracketNumberRightSquareBracket] -
  /// * [orderLeftSquareBracketPlacePeriodNameRightSquareBracket] -
  /// * [orderLeftSquareBracketProviderContactPointPeriodNameRightSquareBracket] -
  /// * [author] -
  /// * [authorLeftSquareBracketRightSquareBracket] -
  /// * [authorContactPointPeriodFamilyName] -
  /// * [authorContactPointPeriodFamilyNameLeftSquareBracketRightSquareBracket] -
  /// * [place] -
  /// * [placeLeftSquareBracketRightSquareBracket] -
  /// * [provider] -
  /// * [providerLeftSquareBracketRightSquareBracket] -
  /// * [providerContactPointPeriodName] -
  /// * [providerContactPointPeriodNameLeftSquareBracketRightSquareBracket] -
  /// * [state] -
  /// * [stateLeftSquareBracketRightSquareBracket] -
  /// * [task] -
  /// * [taskLeftSquareBracketRightSquareBracket] -
  /// * [treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketAncestorsRightSquareBracketLeftSquareBracketRightSquareBracket] - Filter on the ancestors of a node, all the nodes along the path from that node to the root of the tree.
  /// * [treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketDescendantsRightSquareBracketLeftSquareBracketRightSquareBracket] - Filter on the tree below the node excluding the node itself.
  /// * [treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketNodeRightSquareBracketLeftSquareBracketRightSquareBracket] - Filter on the node only.
  /// * [treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketSubtreeRightSquareBracketLeftSquareBracketRightSquareBracket] - Filter on the tree below the node including the node itself.
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
  /// Returns a [Future] containing a [Response] with a [GetQuoteCollection200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<GetQuoteCollection200Response>> getQuoteCollection({
    required String xKeyclicApp,
    required String xOrganizationId,
    int? page,
    int? limit,
    bool? pagination,
    String? search,
    String? createdAtLeftSquareBracketBeforeRightSquareBracket,
    String? createdAtLeftSquareBracketStrictlyBeforeRightSquareBracket,
    String? createdAtLeftSquareBracketAfterRightSquareBracket,
    String? createdAtLeftSquareBracketStrictlyAfterRightSquareBracket,
    String? expirationDateLeftSquareBracketBeforeRightSquareBracket,
    String? expirationDateLeftSquareBracketStrictlyBeforeRightSquareBracket,
    String? expirationDateLeftSquareBracketAfterRightSquareBracket,
    String? expirationDateLeftSquareBracketStrictlyAfterRightSquareBracket,
    String? issueDateLeftSquareBracketBeforeRightSquareBracket,
    String? issueDateLeftSquareBracketStrictlyBeforeRightSquareBracket,
    String? issueDateLeftSquareBracketAfterRightSquareBracket,
    String? issueDateLeftSquareBracketStrictlyAfterRightSquareBracket,
    String? resolutionDateLeftSquareBracketBeforeRightSquareBracket,
    String? resolutionDateLeftSquareBracketStrictlyBeforeRightSquareBracket,
    String? resolutionDateLeftSquareBracketAfterRightSquareBracket,
    String? resolutionDateLeftSquareBracketStrictlyAfterRightSquareBracket,
    String? updatedAtLeftSquareBracketBeforeRightSquareBracket,
    String? updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket,
    String? updatedAtLeftSquareBracketAfterRightSquareBracket,
    String? updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket,
    String?
        orderLeftSquareBracketAmountExcludingTaxPeriodValueRightSquareBracket,
    String?
        orderLeftSquareBracketAmountIncludingTaxPeriodValueRightSquareBracket,
    String? orderLeftSquareBracketIssueDateRightSquareBracket,
    String? orderLeftSquareBracketNameRightSquareBracket,
    String? orderLeftSquareBracketNumberRightSquareBracket,
    String? orderLeftSquareBracketPlacePeriodNameRightSquareBracket,
    String?
        orderLeftSquareBracketProviderContactPointPeriodNameRightSquareBracket,
    String? author,
    List<String>? authorLeftSquareBracketRightSquareBracket,
    String? authorContactPointPeriodFamilyName,
    List<String>?
        authorContactPointPeriodFamilyNameLeftSquareBracketRightSquareBracket,
    String? place,
    List<String>? placeLeftSquareBracketRightSquareBracket,
    String? provider,
    List<String>? providerLeftSquareBracketRightSquareBracket,
    String? providerContactPointPeriodName,
    List<String>?
        providerContactPointPeriodNameLeftSquareBracketRightSquareBracket,
    String? state,
    List<String>? stateLeftSquareBracketRightSquareBracket,
    String? task,
    List<String>? taskLeftSquareBracketRightSquareBracket,
    List<String>?
        treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketAncestorsRightSquareBracketLeftSquareBracketRightSquareBracket,
    List<String>?
        treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketDescendantsRightSquareBracketLeftSquareBracketRightSquareBracket,
    List<String>?
        treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketNodeRightSquareBracketLeftSquareBracketRightSquareBracket,
    List<String>?
        treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketSubtreeRightSquareBracketLeftSquareBracketRightSquareBracket,
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
    final String path = r'/quotes';
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
      if (createdAtLeftSquareBracketBeforeRightSquareBracket != null)
        r'createdAt[before]': encodeQueryParameter(
            createdAtLeftSquareBracketBeforeRightSquareBracket),
      if (createdAtLeftSquareBracketStrictlyBeforeRightSquareBracket != null)
        r'createdAt[strictly_before]': encodeQueryParameter(
            createdAtLeftSquareBracketStrictlyBeforeRightSquareBracket),
      if (createdAtLeftSquareBracketAfterRightSquareBracket != null)
        r'createdAt[after]': encodeQueryParameter(
            createdAtLeftSquareBracketAfterRightSquareBracket),
      if (createdAtLeftSquareBracketStrictlyAfterRightSquareBracket != null)
        r'createdAt[strictly_after]': encodeQueryParameter(
            createdAtLeftSquareBracketStrictlyAfterRightSquareBracket),
      if (expirationDateLeftSquareBracketBeforeRightSquareBracket != null)
        r'expirationDate[before]': encodeQueryParameter(
            expirationDateLeftSquareBracketBeforeRightSquareBracket),
      if (expirationDateLeftSquareBracketStrictlyBeforeRightSquareBracket !=
          null)
        r'expirationDate[strictly_before]': encodeQueryParameter(
            expirationDateLeftSquareBracketStrictlyBeforeRightSquareBracket),
      if (expirationDateLeftSquareBracketAfterRightSquareBracket != null)
        r'expirationDate[after]': encodeQueryParameter(
            expirationDateLeftSquareBracketAfterRightSquareBracket),
      if (expirationDateLeftSquareBracketStrictlyAfterRightSquareBracket !=
          null)
        r'expirationDate[strictly_after]': encodeQueryParameter(
            expirationDateLeftSquareBracketStrictlyAfterRightSquareBracket),
      if (issueDateLeftSquareBracketBeforeRightSquareBracket != null)
        r'issueDate[before]': encodeQueryParameter(
            issueDateLeftSquareBracketBeforeRightSquareBracket),
      if (issueDateLeftSquareBracketStrictlyBeforeRightSquareBracket != null)
        r'issueDate[strictly_before]': encodeQueryParameter(
            issueDateLeftSquareBracketStrictlyBeforeRightSquareBracket),
      if (issueDateLeftSquareBracketAfterRightSquareBracket != null)
        r'issueDate[after]': encodeQueryParameter(
            issueDateLeftSquareBracketAfterRightSquareBracket),
      if (issueDateLeftSquareBracketStrictlyAfterRightSquareBracket != null)
        r'issueDate[strictly_after]': encodeQueryParameter(
            issueDateLeftSquareBracketStrictlyAfterRightSquareBracket),
      if (resolutionDateLeftSquareBracketBeforeRightSquareBracket != null)
        r'resolutionDate[before]': encodeQueryParameter(
            resolutionDateLeftSquareBracketBeforeRightSquareBracket),
      if (resolutionDateLeftSquareBracketStrictlyBeforeRightSquareBracket !=
          null)
        r'resolutionDate[strictly_before]': encodeQueryParameter(
            resolutionDateLeftSquareBracketStrictlyBeforeRightSquareBracket),
      if (resolutionDateLeftSquareBracketAfterRightSquareBracket != null)
        r'resolutionDate[after]': encodeQueryParameter(
            resolutionDateLeftSquareBracketAfterRightSquareBracket),
      if (resolutionDateLeftSquareBracketStrictlyAfterRightSquareBracket !=
          null)
        r'resolutionDate[strictly_after]': encodeQueryParameter(
            resolutionDateLeftSquareBracketStrictlyAfterRightSquareBracket),
      if (updatedAtLeftSquareBracketBeforeRightSquareBracket != null)
        r'updatedAt[before]': encodeQueryParameter(
            updatedAtLeftSquareBracketBeforeRightSquareBracket),
      if (updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket != null)
        r'updatedAt[strictly_before]': encodeQueryParameter(
            updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket),
      if (updatedAtLeftSquareBracketAfterRightSquareBracket != null)
        r'updatedAt[after]': encodeQueryParameter(
            updatedAtLeftSquareBracketAfterRightSquareBracket),
      if (updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket != null)
        r'updatedAt[strictly_after]': encodeQueryParameter(
            updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket),
      if (orderLeftSquareBracketAmountExcludingTaxPeriodValueRightSquareBracket !=
          null)
        r'order[amountExcludingTax.value]': encodeQueryParameter(
            orderLeftSquareBracketAmountExcludingTaxPeriodValueRightSquareBracket),
      if (orderLeftSquareBracketAmountIncludingTaxPeriodValueRightSquareBracket !=
          null)
        r'order[amountIncludingTax.value]': encodeQueryParameter(
            orderLeftSquareBracketAmountIncludingTaxPeriodValueRightSquareBracket),
      if (orderLeftSquareBracketIssueDateRightSquareBracket != null)
        r'order[issueDate]': encodeQueryParameter(
            orderLeftSquareBracketIssueDateRightSquareBracket),
      if (orderLeftSquareBracketNameRightSquareBracket != null)
        r'order[name]':
            encodeQueryParameter(orderLeftSquareBracketNameRightSquareBracket),
      if (orderLeftSquareBracketNumberRightSquareBracket != null)
        r'order[number]': encodeQueryParameter(
            orderLeftSquareBracketNumberRightSquareBracket),
      if (orderLeftSquareBracketPlacePeriodNameRightSquareBracket != null)
        r'order[place.name]': encodeQueryParameter(
            orderLeftSquareBracketPlacePeriodNameRightSquareBracket),
      if (orderLeftSquareBracketProviderContactPointPeriodNameRightSquareBracket !=
          null)
        r'order[providerContactPoint.name]': encodeQueryParameter(
            orderLeftSquareBracketProviderContactPointPeriodNameRightSquareBracket),
      if (author != null) r'author': encodeQueryParameter(author),
      if (authorLeftSquareBracketRightSquareBracket != null)
        r'author[]': encodeCollectionQueryParameter(
            authorLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (authorContactPointPeriodFamilyName != null)
        r'authorContactPoint.familyName':
            encodeQueryParameter(authorContactPointPeriodFamilyName),
      if (authorContactPointPeriodFamilyNameLeftSquareBracketRightSquareBracket !=
          null)
        r'authorContactPoint.familyName[]': encodeCollectionQueryParameter(
            authorContactPointPeriodFamilyNameLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (place != null) r'place': encodeQueryParameter(place),
      if (placeLeftSquareBracketRightSquareBracket != null)
        r'place[]': encodeCollectionQueryParameter(
            placeLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (provider != null) r'provider': encodeQueryParameter(provider),
      if (providerLeftSquareBracketRightSquareBracket != null)
        r'provider[]': encodeCollectionQueryParameter(
            providerLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (providerContactPointPeriodName != null)
        r'providerContactPoint.name':
            encodeQueryParameter(providerContactPointPeriodName),
      if (providerContactPointPeriodNameLeftSquareBracketRightSquareBracket !=
          null)
        r'providerContactPoint.name[]': encodeCollectionQueryParameter(
            providerContactPointPeriodNameLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (state != null) r'state': encodeQueryParameter(state),
      if (stateLeftSquareBracketRightSquareBracket != null)
        r'state[]': encodeCollectionQueryParameter(
            stateLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (task != null) r'task': encodeQueryParameter(task),
      if (taskLeftSquareBracketRightSquareBracket != null)
        r'task[]': encodeCollectionQueryParameter(
            taskLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketAncestorsRightSquareBracketLeftSquareBracketRightSquareBracket !=
          null)
        r'tree[place][ancestors][]': encodeCollectionQueryParameter(
            treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketAncestorsRightSquareBracketLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketDescendantsRightSquareBracketLeftSquareBracketRightSquareBracket !=
          null)
        r'tree[place][descendants][]': encodeCollectionQueryParameter(
            treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketDescendantsRightSquareBracketLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketNodeRightSquareBracketLeftSquareBracketRightSquareBracket !=
          null)
        r'tree[place][node][]': encodeCollectionQueryParameter(
            treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketNodeRightSquareBracketLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketSubtreeRightSquareBracketLeftSquareBracketRightSquareBracket !=
          null)
        r'tree[place][subtree][]': encodeCollectionQueryParameter(
            treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketSubtreeRightSquareBracketLeftSquareBracketRightSquareBracket,
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

    GetQuoteCollection200Response responseData;

    try {
      responseData =
          await _apiClient.deserializeAsync<GetQuoteCollection200Response>(
              response.data!, 'GetQuoteCollection200Response');
    } catch (error, stackTrace) {
      throw DioException(
        error: error,
        requestOptions: response.requestOptions,
        response: response,
        stackTrace: stackTrace,
        type: DioExceptionType.unknown,
      );
    }

    return Response<GetQuoteCollection200Response>(
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

  /// Updates the Quote resource.
  /// Updates the Quote resource.
  ///
  /// Parameters:
  /// * [identifier] - Quote identifier
  /// * [xKeyclicApp] -
  /// * [xOrganizationId] -
  /// * [quoteEditQuoteCommandWrite] - The updated Quote resource
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
  /// Returns a [Future] containing a [Response] with a [QuoteJsonhalRead] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<QuoteJsonhalRead>> patchQuote({
    required String identifier,
    required String xKeyclicApp,
    required String xOrganizationId,
    required QuoteEditQuoteCommandWrite quoteEditQuoteCommandWrite,
    String? acceptLanguage,
    DateTime? xDateTime,
    String? xKeyclicAppPlatform,
    String? xKeyclicAppVersion,
    Iterable<String>? bodyParameters,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final String path = r'/quotes/{identifier}'
        .replaceAll('{' r'identifier' '}', identifier.toString());
    final options = Options(
      method: r'PATCH',
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
      contentType: 'application/merge-patch+json',
      validateStatus: validateStatus,
    );

    dynamic bodyData;

    try {
      bodyData = quoteEditQuoteCommandWrite.toJson(bodyParameters);
    } catch (error, stackTrace) {
      throw DioException(
        error: error,
        requestOptions: options.compose(
          _apiClient.dio.options,
          path,
        ),
        stackTrace: stackTrace,
        type: DioExceptionType.unknown,
      );
    }

    final response = await _apiClient.dio.request<Object>(
      path,
      data: bodyData,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    QuoteJsonhalRead responseData;

    try {
      responseData = await _apiClient.deserializeAsync<QuoteJsonhalRead>(
          response.data!, 'QuoteJsonhalRead');
    } catch (error, stackTrace) {
      throw DioException(
        error: error,
        requestOptions: response.requestOptions,
        response: response,
        stackTrace: stackTrace,
        type: DioExceptionType.unknown,
      );
    }

    return Response<QuoteJsonhalRead>(
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

  /// Creates a Quote resource.
  /// Creates a Quote resource.
  ///
  /// Parameters:
  /// * [xKeyclicApp] -
  /// * [xOrganizationId] -
  /// * [quoteCreateQuoteCommandWrite] - The new Quote resource
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
  /// Returns a [Future] containing a [Response] with a [QuoteJsonhalRead] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<QuoteJsonhalRead>> postQuote({
    required String xKeyclicApp,
    required String xOrganizationId,
    required QuoteCreateQuoteCommandWrite quoteCreateQuoteCommandWrite,
    String? acceptLanguage,
    DateTime? xDateTime,
    String? xKeyclicAppPlatform,
    String? xKeyclicAppVersion,
    Iterable<String>? bodyParameters,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final String path = r'/quotes';
    final options = Options(
      method: r'POST',
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
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic bodyData;

    try {
      bodyData = quoteCreateQuoteCommandWrite.toJson(bodyParameters);
    } catch (error, stackTrace) {
      throw DioException(
        error: error,
        requestOptions: options.compose(
          _apiClient.dio.options,
          path,
        ),
        stackTrace: stackTrace,
        type: DioExceptionType.unknown,
      );
    }

    final response = await _apiClient.dio.request<Object>(
      path,
      data: bodyData,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    QuoteJsonhalRead responseData;

    try {
      responseData = await _apiClient.deserializeAsync<QuoteJsonhalRead>(
          response.data!, 'QuoteJsonhalRead');
    } catch (error, stackTrace) {
      throw DioException(
        error: error,
        requestOptions: response.requestOptions,
        response: response,
        stackTrace: stackTrace,
        type: DioExceptionType.unknown,
      );
    }

    return Response<QuoteJsonhalRead>(
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
