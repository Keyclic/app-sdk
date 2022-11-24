//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class InvitationApi {
  InvitationApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Remove one Invitation resource.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] invitation (required):
  ///   The identifier of the resource.
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Response> deleteInvitationWithHttpInfo(
    String xKeyclicApp,
    String invitation, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    // Verify required params are set.
    if (xKeyclicApp == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: xKeyclicApp');
    }
    if (invitation == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: invitation');
    }

    final path = r'/invitations/{invitation}'
        .replaceAll('{' + 'invitation' + '}', invitation.toString());

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{
      if (acceptLanguage != null)
        r'accept-language': parameterToString(acceptLanguage),
      if (xDateTime != null) r'x-date-time': parameterToString(xDateTime),
      r'x-keyclic-app': parameterToString(xKeyclicApp),
      if (xKeyclicAppPlatform != null)
        r'x-keyclic-app-platform': parameterToString(xKeyclicAppPlatform),
      if (xKeyclicAppVersion != null)
        r'x-keyclic-app-version': parameterToString(xKeyclicAppVersion),
    };

    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final authNames = <String>[
      'bearer',
    ];

    return apiClient.invokeAPI(
      path: path,
      method: 'DELETE',
      queryParams: queryParams,
      headerParams: headerParams,
      formParams: formParams,
      contentType: contentTypes.isNotEmpty ? contentTypes[0] : null,
      authNames: authNames,
    );
  }

  /// Remove one Invitation resource.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] invitation (required):
  ///   The identifier of the resource.
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<void> deleteInvitation(
    String xKeyclicApp,
    String invitation, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    final response = await deleteInvitationWithHttpInfo(
      xKeyclicApp,
      invitation,
      acceptLanguage: acceptLanguage,
      xDateTime: xDateTime,
      xKeyclicAppPlatform: xKeyclicAppPlatform,
      xKeyclicAppVersion: xKeyclicAppVersion,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve one Invitation resource.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] invitation (required):
  ///   The identifier of the resource.
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Response> getInvitationWithHttpInfo(
    String xKeyclicApp,
    String invitation, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    // Verify required params are set.
    if (xKeyclicApp == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: xKeyclicApp');
    }
    if (invitation == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: invitation');
    }

    final path = r'/invitations/{invitation}'
        .replaceAll('{' + 'invitation' + '}', invitation.toString());

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{
      if (acceptLanguage != null)
        r'accept-language': parameterToString(acceptLanguage),
      if (xDateTime != null) r'x-date-time': parameterToString(xDateTime),
      r'x-keyclic-app': parameterToString(xKeyclicApp),
      if (xKeyclicAppPlatform != null)
        r'x-keyclic-app-platform': parameterToString(xKeyclicAppPlatform),
      if (xKeyclicAppVersion != null)
        r'x-keyclic-app-version': parameterToString(xKeyclicAppVersion),
    };

    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final authNames = <String>[
      'bearer',
    ];

    return apiClient.invokeAPI(
      path: path,
      method: 'GET',
      queryParams: queryParams,
      headerParams: headerParams,
      formParams: formParams,
      contentType: contentTypes.isNotEmpty ? contentTypes[0] : null,
      authNames: authNames,
    );
  }

  /// Retrieve one Invitation resource.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [String] invitation (required):
  ///   The identifier of the resource.
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Invitation> getInvitation(
    String xKeyclicApp,
    String invitation, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    final response = await getInvitationWithHttpInfo(
      xKeyclicApp,
      invitation,
      acceptLanguage: acceptLanguage,
      xDateTime: xDateTime,
      xKeyclicAppPlatform: xKeyclicAppPlatform,
      xKeyclicAppVersion: xKeyclicAppVersion,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body == null || response.statusCode == HttpStatus.noContent) {
      return Future<Invitation>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'Invitation',
    ) as Invitation;
  }

  /// Create one Invitation resource.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [InvitationData] invitationData (required):
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Response> postInvitationWithHttpInfo(
    String xKeyclicApp,
    InvitationData invitationData, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    // Verify required params are set.
    if (xKeyclicApp == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: xKeyclicApp');
    }
    if (invitationData == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: invitationData');
    }

    final path = r'/invitations';

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{
      if (acceptLanguage != null)
        r'accept-language': parameterToString(acceptLanguage),
      if (xDateTime != null) r'x-date-time': parameterToString(xDateTime),
      r'x-keyclic-app': parameterToString(xKeyclicApp),
      if (xKeyclicAppPlatform != null)
        r'x-keyclic-app-platform': parameterToString(xKeyclicAppPlatform),
      if (xKeyclicAppVersion != null)
        r'x-keyclic-app-version': parameterToString(xKeyclicAppVersion),
    };

    final formParams = <String, String>{};

    final contentTypes = <String>[
      'application/json;charset=UTF-8',
    ];
    final authNames = <String>[
      'bearer',
    ];

    return apiClient.invokeAPI(
      path: path,
      method: 'POST',
      queryParams: queryParams,
      body: invitationData,
      headerParams: headerParams,
      formParams: formParams,
      contentType: contentTypes.isNotEmpty ? contentTypes[0] : null,
      authNames: authNames,
    );
  }

  /// Create one Invitation resource.
  ///
  /// Parameters:
  ///
  /// * [String] xKeyclicApp (required):
  ///
  /// * [InvitationData] invitationData (required):
  ///
  /// * [String] acceptLanguage:
  ///
  /// * [DateTime] xDateTime:
  ///
  /// * [String] xKeyclicAppPlatform:
  ///
  /// * [String] xKeyclicAppVersion:
  Future<Invitation> postInvitation(
    String xKeyclicApp,
    InvitationData invitationData, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    final response = await postInvitationWithHttpInfo(
      xKeyclicApp,
      invitationData,
      acceptLanguage: acceptLanguage,
      xDateTime: xDateTime,
      xKeyclicAppPlatform: xKeyclicAppPlatform,
      xKeyclicAppVersion: xKeyclicAppVersion,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body == null || response.statusCode == HttpStatus.noContent) {
      return Future<Invitation>.value(null);
    }

    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'Invitation',
    ) as Invitation;
  }
}
