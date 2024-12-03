//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class TicketApi {
  const TicketApi(this._apiClient);

  final ApiPlatformClient _apiClient;

  /// Removes the Ticket resource.
  /// Removes the Ticket resource.
  ///
  /// Parameters:
  /// * [identifier] - Task identifier
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
  Future<Response<void>> deleteTicket({
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
    final String path = r'/tickets/{identifier}'
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

  /// Retrieves a Ticket resource.
  /// Retrieves a Ticket resource.
  ///
  /// Parameters:
  /// * [identifier] - Task identifier
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
  /// Returns a [Future] containing a [Response] with a [TicketJsonhalRead] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketJsonhalRead>> getTicket({
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
    final String path = r'/tickets/{identifier}'
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

    TicketJsonhalRead responseData;

    try {
      responseData = await _apiClient.deserializeAsync<TicketJsonhalRead>(
          response.data!, 'TicketJsonhalRead');
    } catch (error, stackTrace) {
      throw DioException(
        error: error,
        requestOptions: response.requestOptions,
        response: response,
        stackTrace: stackTrace,
        type: DioExceptionType.unknown,
      );
    }

    return Response<TicketJsonhalRead>(
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

  /// Retrieves the collection of Ticket resources.
  /// Retrieves the collection of Ticket resources.
  ///
  /// Parameters:
  /// * [xKeyclicApp] -
  /// * [xOrganizationId] -
  /// * [page] - The collection page number
  /// * [limit] - The number of items per page
  /// * [pagination] - Enable or disable pagination
  /// * [search] -
  /// * [archived] - Check if resource is archived and if archived date has passed
  /// * [completed] -
  /// * [childrenPeriodScheduledAtLeftSquareBracketBeforeRightSquareBracket] -
  /// * [childrenPeriodScheduledAtLeftSquareBracketStrictlyBeforeRightSquareBracket] -
  /// * [childrenPeriodScheduledAtLeftSquareBracketAfterRightSquareBracket] -
  /// * [childrenPeriodScheduledAtLeftSquareBracketStrictlyAfterRightSquareBracket] -
  /// * [createdAtLeftSquareBracketBeforeRightSquareBracket] -
  /// * [createdAtLeftSquareBracketStrictlyBeforeRightSquareBracket] -
  /// * [createdAtLeftSquareBracketAfterRightSquareBracket] -
  /// * [createdAtLeftSquareBracketStrictlyAfterRightSquareBracket] -
  /// * [dueByLeftSquareBracketBeforeRightSquareBracket] -
  /// * [dueByLeftSquareBracketStrictlyBeforeRightSquareBracket] -
  /// * [dueByLeftSquareBracketAfterRightSquareBracket] -
  /// * [dueByLeftSquareBracketStrictlyAfterRightSquareBracket] -
  /// * [scheduledAtLeftSquareBracketBeforeRightSquareBracket] -
  /// * [scheduledAtLeftSquareBracketStrictlyBeforeRightSquareBracket] -
  /// * [scheduledAtLeftSquareBracketAfterRightSquareBracket] -
  /// * [scheduledAtLeftSquareBracketStrictlyAfterRightSquareBracket] -
  /// * [updatedAtLeftSquareBracketBeforeRightSquareBracket] -
  /// * [updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket] -
  /// * [updatedAtLeftSquareBracketAfterRightSquareBracket] -
  /// * [updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket] -
  /// * [resourceType] -
  /// * [taskEquipments] -
  /// * [taskEquipmentsLeftSquareBracketRightSquareBracket] -
  /// * [existsLeftSquareBracketArchivedAtRightSquareBracket] -
  /// * [existsLeftSquareBracketAssignmentsRightSquareBracket] -
  /// * [existsLeftSquareBracketDocumentsRightSquareBracket] -
  /// * [operationStateAll] -
  /// * [operationStateAllLeftSquareBracketRightSquareBracket] -
  /// * [orderLeftSquareBracketCategoryPeriodNameRightSquareBracket] -
  /// * [orderLeftSquareBracketCreatedAtRightSquareBracket] -
  /// * [orderLeftSquareBracketDueByRightSquareBracket] -
  /// * [orderLeftSquareBracketPlacePeriodNameRightSquareBracket] -
  /// * [orderLeftSquareBracketPriorityPeriodPositionRightSquareBracket] -
  /// * [orderLeftSquareBracketScheduledAtRightSquareBracket] -
  /// * [orderLeftSquareBracketStatePeriodNameRightSquareBracket] -
  /// * [orderLeftSquareBracketUpdatedAtRightSquareBracket] -
  /// * [assignmentsPeriodMember] -
  /// * [assignmentsPeriodMemberLeftSquareBracketRightSquareBracket] -
  /// * [assignmentsPeriodService] -
  /// * [assignmentsPeriodServiceLeftSquareBracketRightSquareBracket] -
  /// * [assignmentsPeriodServicePeriodManager] -
  /// * [assignmentsPeriodServicePeriodManagerLeftSquareBracketRightSquareBracket] -
  /// * [category] -
  /// * [categoryLeftSquareBracketRightSquareBracket] -
  /// * [categoryPeriodType] -
  /// * [categoryPeriodTypeLeftSquareBracketRightSquareBracket] -
  /// * [childrenPeriodAssignmentsPeriodMember] -
  /// * [childrenPeriodAssignmentsPeriodMemberLeftSquareBracketRightSquareBracket] -
  /// * [childrenPeriodState] -
  /// * [childrenPeriodStateLeftSquareBracketRightSquareBracket] -
  /// * [createdBy] -
  /// * [createdByLeftSquareBracketRightSquareBracket] -
  /// * [equipments] -
  /// * [equipmentsLeftSquareBracketRightSquareBracket] -
  /// * [feedbackPeriodBatch] -
  /// * [feedbackPeriodBatchLeftSquareBracketRightSquareBracket] -
  /// * [feedbackPeriodVisibility] -
  /// * [feedbackPeriodVisibilityLeftSquareBracketRightSquareBracket] -
  /// * [level] -
  /// * [levelLeftSquareBracketRightSquareBracket] -
  /// * [parent] -
  /// * [parentLeftSquareBracketRightSquareBracket] -
  /// * [phase] -
  /// * [phaseLeftSquareBracketRightSquareBracket] -
  /// * [place] -
  /// * [placeLeftSquareBracketRightSquareBracket] -
  /// * [priority] -
  /// * [priorityLeftSquareBracketRightSquareBracket] -
  /// * [reviewsPeriodReviewRating] -
  /// * [reviewsPeriodReviewRatingLeftSquareBracketRightSquareBracket] -
  /// * [state] -
  /// * [stateLeftSquareBracketRightSquareBracket] -
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
  /// Returns a [Future] containing a [Response] with a [GetTicketCollection200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<GetTicketCollection200Response>> getTicketCollection({
    required String xKeyclicApp,
    required String xOrganizationId,
    int? page,
    int? limit,
    bool? pagination,
    String? search,
    bool? archived,
    bool? completed,
    String? childrenPeriodScheduledAtLeftSquareBracketBeforeRightSquareBracket,
    String?
        childrenPeriodScheduledAtLeftSquareBracketStrictlyBeforeRightSquareBracket,
    String? childrenPeriodScheduledAtLeftSquareBracketAfterRightSquareBracket,
    String?
        childrenPeriodScheduledAtLeftSquareBracketStrictlyAfterRightSquareBracket,
    String? createdAtLeftSquareBracketBeforeRightSquareBracket,
    String? createdAtLeftSquareBracketStrictlyBeforeRightSquareBracket,
    String? createdAtLeftSquareBracketAfterRightSquareBracket,
    String? createdAtLeftSquareBracketStrictlyAfterRightSquareBracket,
    String? dueByLeftSquareBracketBeforeRightSquareBracket,
    String? dueByLeftSquareBracketStrictlyBeforeRightSquareBracket,
    String? dueByLeftSquareBracketAfterRightSquareBracket,
    String? dueByLeftSquareBracketStrictlyAfterRightSquareBracket,
    String? scheduledAtLeftSquareBracketBeforeRightSquareBracket,
    String? scheduledAtLeftSquareBracketStrictlyBeforeRightSquareBracket,
    String? scheduledAtLeftSquareBracketAfterRightSquareBracket,
    String? scheduledAtLeftSquareBracketStrictlyAfterRightSquareBracket,
    String? updatedAtLeftSquareBracketBeforeRightSquareBracket,
    String? updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket,
    String? updatedAtLeftSquareBracketAfterRightSquareBracket,
    String? updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket,
    String? resourceType,
    String? taskEquipments,
    List<String>? taskEquipmentsLeftSquareBracketRightSquareBracket,
    bool? existsLeftSquareBracketArchivedAtRightSquareBracket,
    bool? existsLeftSquareBracketAssignmentsRightSquareBracket,
    bool? existsLeftSquareBracketDocumentsRightSquareBracket,
    String? operationStateAll,
    List<String>? operationStateAllLeftSquareBracketRightSquareBracket,
    String? orderLeftSquareBracketCategoryPeriodNameRightSquareBracket,
    String? orderLeftSquareBracketCreatedAtRightSquareBracket,
    String? orderLeftSquareBracketDueByRightSquareBracket,
    String? orderLeftSquareBracketPlacePeriodNameRightSquareBracket,
    String? orderLeftSquareBracketPriorityPeriodPositionRightSquareBracket,
    String? orderLeftSquareBracketScheduledAtRightSquareBracket,
    String? orderLeftSquareBracketStatePeriodNameRightSquareBracket,
    String? orderLeftSquareBracketUpdatedAtRightSquareBracket,
    String? assignmentsPeriodMember,
    List<String>? assignmentsPeriodMemberLeftSquareBracketRightSquareBracket,
    String? assignmentsPeriodService,
    List<String>? assignmentsPeriodServiceLeftSquareBracketRightSquareBracket,
    String? assignmentsPeriodServicePeriodManager,
    List<String>?
        assignmentsPeriodServicePeriodManagerLeftSquareBracketRightSquareBracket,
    String? category,
    List<String>? categoryLeftSquareBracketRightSquareBracket,
    String? categoryPeriodType,
    List<String>? categoryPeriodTypeLeftSquareBracketRightSquareBracket,
    String? childrenPeriodAssignmentsPeriodMember,
    List<String>?
        childrenPeriodAssignmentsPeriodMemberLeftSquareBracketRightSquareBracket,
    String? childrenPeriodState,
    List<String>? childrenPeriodStateLeftSquareBracketRightSquareBracket,
    String? createdBy,
    List<String>? createdByLeftSquareBracketRightSquareBracket,
    String? equipments,
    List<String>? equipmentsLeftSquareBracketRightSquareBracket,
    String? feedbackPeriodBatch,
    List<String>? feedbackPeriodBatchLeftSquareBracketRightSquareBracket,
    String? feedbackPeriodVisibility,
    List<String>? feedbackPeriodVisibilityLeftSquareBracketRightSquareBracket,
    int? level,
    List<int>? levelLeftSquareBracketRightSquareBracket,
    String? parent,
    List<String>? parentLeftSquareBracketRightSquareBracket,
    String? phase,
    List<String>? phaseLeftSquareBracketRightSquareBracket,
    String? place,
    List<String>? placeLeftSquareBracketRightSquareBracket,
    String? priority,
    List<String>? priorityLeftSquareBracketRightSquareBracket,
    int? reviewsPeriodReviewRating,
    List<int>? reviewsPeriodReviewRatingLeftSquareBracketRightSquareBracket,
    String? state,
    List<String>? stateLeftSquareBracketRightSquareBracket,
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
    final String path = r'/tickets';
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
      if (archived != null) r'archived': encodeQueryParameter(archived),
      if (completed != null) r'completed': encodeQueryParameter(completed),
      if (childrenPeriodScheduledAtLeftSquareBracketBeforeRightSquareBracket !=
          null)
        r'children.scheduledAt[before]': encodeQueryParameter(
            childrenPeriodScheduledAtLeftSquareBracketBeforeRightSquareBracket),
      if (childrenPeriodScheduledAtLeftSquareBracketStrictlyBeforeRightSquareBracket !=
          null)
        r'children.scheduledAt[strictly_before]': encodeQueryParameter(
            childrenPeriodScheduledAtLeftSquareBracketStrictlyBeforeRightSquareBracket),
      if (childrenPeriodScheduledAtLeftSquareBracketAfterRightSquareBracket !=
          null)
        r'children.scheduledAt[after]': encodeQueryParameter(
            childrenPeriodScheduledAtLeftSquareBracketAfterRightSquareBracket),
      if (childrenPeriodScheduledAtLeftSquareBracketStrictlyAfterRightSquareBracket !=
          null)
        r'children.scheduledAt[strictly_after]': encodeQueryParameter(
            childrenPeriodScheduledAtLeftSquareBracketStrictlyAfterRightSquareBracket),
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
      if (dueByLeftSquareBracketBeforeRightSquareBracket != null)
        r'dueBy[before]': encodeQueryParameter(
            dueByLeftSquareBracketBeforeRightSquareBracket),
      if (dueByLeftSquareBracketStrictlyBeforeRightSquareBracket != null)
        r'dueBy[strictly_before]': encodeQueryParameter(
            dueByLeftSquareBracketStrictlyBeforeRightSquareBracket),
      if (dueByLeftSquareBracketAfterRightSquareBracket != null)
        r'dueBy[after]':
            encodeQueryParameter(dueByLeftSquareBracketAfterRightSquareBracket),
      if (dueByLeftSquareBracketStrictlyAfterRightSquareBracket != null)
        r'dueBy[strictly_after]': encodeQueryParameter(
            dueByLeftSquareBracketStrictlyAfterRightSquareBracket),
      if (scheduledAtLeftSquareBracketBeforeRightSquareBracket != null)
        r'scheduledAt[before]': encodeQueryParameter(
            scheduledAtLeftSquareBracketBeforeRightSquareBracket),
      if (scheduledAtLeftSquareBracketStrictlyBeforeRightSquareBracket != null)
        r'scheduledAt[strictly_before]': encodeQueryParameter(
            scheduledAtLeftSquareBracketStrictlyBeforeRightSquareBracket),
      if (scheduledAtLeftSquareBracketAfterRightSquareBracket != null)
        r'scheduledAt[after]': encodeQueryParameter(
            scheduledAtLeftSquareBracketAfterRightSquareBracket),
      if (scheduledAtLeftSquareBracketStrictlyAfterRightSquareBracket != null)
        r'scheduledAt[strictly_after]': encodeQueryParameter(
            scheduledAtLeftSquareBracketStrictlyAfterRightSquareBracket),
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
      if (resourceType != null)
        r'resourceType': encodeQueryParameter(resourceType),
      if (taskEquipments != null)
        r'task_equipments': encodeQueryParameter(taskEquipments),
      if (taskEquipmentsLeftSquareBracketRightSquareBracket != null)
        r'task_equipments[]': encodeCollectionQueryParameter(
            taskEquipmentsLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (existsLeftSquareBracketArchivedAtRightSquareBracket != null)
        r'exists[archivedAt]': encodeQueryParameter(
            existsLeftSquareBracketArchivedAtRightSquareBracket),
      if (existsLeftSquareBracketAssignmentsRightSquareBracket != null)
        r'exists[assignments]': encodeQueryParameter(
            existsLeftSquareBracketAssignmentsRightSquareBracket),
      if (existsLeftSquareBracketDocumentsRightSquareBracket != null)
        r'exists[documents]': encodeQueryParameter(
            existsLeftSquareBracketDocumentsRightSquareBracket),
      if (operationStateAll != null)
        r'operation_state_all': encodeQueryParameter(operationStateAll),
      if (operationStateAllLeftSquareBracketRightSquareBracket != null)
        r'operation_state_all[]': encodeCollectionQueryParameter(
            operationStateAllLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (orderLeftSquareBracketCategoryPeriodNameRightSquareBracket != null)
        r'order[category.name]': encodeQueryParameter(
            orderLeftSquareBracketCategoryPeriodNameRightSquareBracket),
      if (orderLeftSquareBracketCreatedAtRightSquareBracket != null)
        r'order[createdAt]': encodeQueryParameter(
            orderLeftSquareBracketCreatedAtRightSquareBracket),
      if (orderLeftSquareBracketDueByRightSquareBracket != null)
        r'order[dueBy]':
            encodeQueryParameter(orderLeftSquareBracketDueByRightSquareBracket),
      if (orderLeftSquareBracketPlacePeriodNameRightSquareBracket != null)
        r'order[place.name]': encodeQueryParameter(
            orderLeftSquareBracketPlacePeriodNameRightSquareBracket),
      if (orderLeftSquareBracketPriorityPeriodPositionRightSquareBracket !=
          null)
        r'order[priority.position]': encodeQueryParameter(
            orderLeftSquareBracketPriorityPeriodPositionRightSquareBracket),
      if (orderLeftSquareBracketScheduledAtRightSquareBracket != null)
        r'order[scheduledAt]': encodeQueryParameter(
            orderLeftSquareBracketScheduledAtRightSquareBracket),
      if (orderLeftSquareBracketStatePeriodNameRightSquareBracket != null)
        r'order[state.name]': encodeQueryParameter(
            orderLeftSquareBracketStatePeriodNameRightSquareBracket),
      if (orderLeftSquareBracketUpdatedAtRightSquareBracket != null)
        r'order[updatedAt]': encodeQueryParameter(
            orderLeftSquareBracketUpdatedAtRightSquareBracket),
      if (assignmentsPeriodMember != null)
        r'assignments.member': encodeQueryParameter(assignmentsPeriodMember),
      if (assignmentsPeriodMemberLeftSquareBracketRightSquareBracket != null)
        r'assignments.member[]': encodeCollectionQueryParameter(
            assignmentsPeriodMemberLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (assignmentsPeriodService != null)
        r'assignments.service': encodeQueryParameter(assignmentsPeriodService),
      if (assignmentsPeriodServiceLeftSquareBracketRightSquareBracket != null)
        r'assignments.service[]': encodeCollectionQueryParameter(
            assignmentsPeriodServiceLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (assignmentsPeriodServicePeriodManager != null)
        r'assignments.service.manager':
            encodeQueryParameter(assignmentsPeriodServicePeriodManager),
      if (assignmentsPeriodServicePeriodManagerLeftSquareBracketRightSquareBracket !=
          null)
        r'assignments.service.manager[]': encodeCollectionQueryParameter(
            assignmentsPeriodServicePeriodManagerLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (category != null) r'category': encodeQueryParameter(category),
      if (categoryLeftSquareBracketRightSquareBracket != null)
        r'category[]': encodeCollectionQueryParameter(
            categoryLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (categoryPeriodType != null)
        r'category.type': encodeQueryParameter(categoryPeriodType),
      if (categoryPeriodTypeLeftSquareBracketRightSquareBracket != null)
        r'category.type[]': encodeCollectionQueryParameter(
            categoryPeriodTypeLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (childrenPeriodAssignmentsPeriodMember != null)
        r'children.assignments.member':
            encodeQueryParameter(childrenPeriodAssignmentsPeriodMember),
      if (childrenPeriodAssignmentsPeriodMemberLeftSquareBracketRightSquareBracket !=
          null)
        r'children.assignments.member[]': encodeCollectionQueryParameter(
            childrenPeriodAssignmentsPeriodMemberLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (childrenPeriodState != null)
        r'children.state': encodeQueryParameter(childrenPeriodState),
      if (childrenPeriodStateLeftSquareBracketRightSquareBracket != null)
        r'children.state[]': encodeCollectionQueryParameter(
            childrenPeriodStateLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (createdBy != null) r'createdBy': encodeQueryParameter(createdBy),
      if (createdByLeftSquareBracketRightSquareBracket != null)
        r'createdBy[]': encodeCollectionQueryParameter(
            createdByLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (equipments != null) r'equipments': encodeQueryParameter(equipments),
      if (equipmentsLeftSquareBracketRightSquareBracket != null)
        r'equipments[]': encodeCollectionQueryParameter(
            equipmentsLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (feedbackPeriodBatch != null)
        r'feedback.batch': encodeQueryParameter(feedbackPeriodBatch),
      if (feedbackPeriodBatchLeftSquareBracketRightSquareBracket != null)
        r'feedback.batch[]': encodeCollectionQueryParameter(
            feedbackPeriodBatchLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (feedbackPeriodVisibility != null)
        r'feedback.visibility': encodeQueryParameter(feedbackPeriodVisibility),
      if (feedbackPeriodVisibilityLeftSquareBracketRightSquareBracket != null)
        r'feedback.visibility[]': encodeCollectionQueryParameter(
            feedbackPeriodVisibilityLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (level != null) r'level': encodeQueryParameter(level),
      if (levelLeftSquareBracketRightSquareBracket != null)
        r'level[]': encodeCollectionQueryParameter(
            levelLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (parent != null) r'parent': encodeQueryParameter(parent),
      if (parentLeftSquareBracketRightSquareBracket != null)
        r'parent[]': encodeCollectionQueryParameter(
            parentLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (phase != null) r'phase': encodeQueryParameter(phase),
      if (phaseLeftSquareBracketRightSquareBracket != null)
        r'phase[]': encodeCollectionQueryParameter(
            phaseLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (place != null) r'place': encodeQueryParameter(place),
      if (placeLeftSquareBracketRightSquareBracket != null)
        r'place[]': encodeCollectionQueryParameter(
            placeLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (priority != null) r'priority': encodeQueryParameter(priority),
      if (priorityLeftSquareBracketRightSquareBracket != null)
        r'priority[]': encodeCollectionQueryParameter(
            priorityLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (reviewsPeriodReviewRating != null)
        r'reviews.reviewRating':
            encodeQueryParameter(reviewsPeriodReviewRating),
      if (reviewsPeriodReviewRatingLeftSquareBracketRightSquareBracket != null)
        r'reviews.reviewRating[]': encodeCollectionQueryParameter(
            reviewsPeriodReviewRatingLeftSquareBracketRightSquareBracket,
            format: ListFormat.multi),
      if (state != null) r'state': encodeQueryParameter(state),
      if (stateLeftSquareBracketRightSquareBracket != null)
        r'state[]': encodeCollectionQueryParameter(
            stateLeftSquareBracketRightSquareBracket,
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

    GetTicketCollection200Response responseData;

    try {
      responseData =
          await _apiClient.deserializeAsync<GetTicketCollection200Response>(
              response.data!, 'GetTicketCollection200Response');
    } catch (error, stackTrace) {
      throw DioException(
        error: error,
        requestOptions: response.requestOptions,
        response: response,
        stackTrace: stackTrace,
        type: DioExceptionType.unknown,
      );
    }

    return Response<GetTicketCollection200Response>(
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

  /// Updates the Ticket resource.
  /// Updates the Ticket resource.
  ///
  /// Parameters:
  /// * [identifier] - Task identifier
  /// * [xKeyclicApp] -
  /// * [xOrganizationId] -
  /// * [ticketEditTicketCommandWrite] - The updated Ticket resource
  /// * [acceptLanguage] -
  /// * [xDateTime] -
  /// * [xKeyclicAppPlatform] -
  /// * [xKeyclicAppVersion] -
  /// * [xEnableDispatch] -
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketJsonhalRead] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketJsonhalRead>> patchTicket({
    required String identifier,
    required String xKeyclicApp,
    required String xOrganizationId,
    required TicketEditTicketCommandWrite ticketEditTicketCommandWrite,
    String? acceptLanguage,
    DateTime? xDateTime,
    String? xKeyclicAppPlatform,
    String? xKeyclicAppVersion,
    bool? xEnableDispatch,
    Iterable<String>? bodyParameters,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final String path = r'/tickets/{identifier}'
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
        if (xEnableDispatch != null) r'X-Enable-Dispatch': xEnableDispatch,
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
      bodyData = ticketEditTicketCommandWrite.toJson(bodyParameters);
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

    TicketJsonhalRead responseData;

    try {
      responseData = await _apiClient.deserializeAsync<TicketJsonhalRead>(
          response.data!, 'TicketJsonhalRead');
    } catch (error, stackTrace) {
      throw DioException(
        error: error,
        requestOptions: response.requestOptions,
        response: response,
        stackTrace: stackTrace,
        type: DioExceptionType.unknown,
      );
    }

    return Response<TicketJsonhalRead>(
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

  /// Creates a Ticket resource.
  /// Creates a Ticket resource.
  ///
  /// Parameters:
  /// * [xKeyclicApp] -
  /// * [xOrganizationId] -
  /// * [ticketCreateTicketCommandWrite] - The new Ticket resource
  /// * [acceptLanguage] -
  /// * [xDateTime] -
  /// * [xKeyclicAppPlatform] -
  /// * [xKeyclicAppVersion] -
  /// * [xEnableDispatch] -
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketJsonhalRead] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketJsonhalRead>> postTicket({
    required String xKeyclicApp,
    required String xOrganizationId,
    required TicketCreateTicketCommandWrite ticketCreateTicketCommandWrite,
    String? acceptLanguage,
    DateTime? xDateTime,
    String? xKeyclicAppPlatform,
    String? xKeyclicAppVersion,
    bool? xEnableDispatch,
    Iterable<String>? bodyParameters,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final String path = r'/tickets';
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
        if (xEnableDispatch != null) r'X-Enable-Dispatch': xEnableDispatch,
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
      bodyData = ticketCreateTicketCommandWrite.toJson(bodyParameters);
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

    TicketJsonhalRead responseData;

    try {
      responseData = await _apiClient.deserializeAsync<TicketJsonhalRead>(
          response.data!, 'TicketJsonhalRead');
    } catch (error, stackTrace) {
      throw DioException(
        error: error,
        requestOptions: response.requestOptions,
        response: response,
        stackTrace: stackTrace,
        type: DioExceptionType.unknown,
      );
    }

    return Response<TicketJsonhalRead>(
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
