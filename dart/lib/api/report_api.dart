part of keyclic_sdk_api.api;



class ReportApi {
  final ApiClient apiClient;

  ReportApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Retrieve all Report resources.
  ///
  /// 
  Future<ReportPagination> cgetReportsByOrganization(String xKeyclicApp, String organization, { String acceptLanguage, String xKeyclicAppVersion, String assignedTo, String category, DateTime after, DateTime before, String delegatedTo, String order, String place, String query, String state, int page, int limit, String search_description_, String search[reference], String search_identificationNumber_ }) async {
    Object postBody;

    // verify required params are set
    if(xKeyclicApp == null) {
     throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }

    // create path and map variables
    String path = "/organizations/{organization}/reports".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(assignedTo != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "assigned_to", assignedTo));
    }
    if(category != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "category", category));
    }
    if(after != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "after", after));
    }
    if(before != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "before", before));
    }
    if(delegatedTo != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "delegated_to", delegatedTo));
    }
    if(order != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "order", order));
    }
    if(place != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "place", place));
    }
    if(query != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "query", query));
    }
    if(state != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "state", state));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if(search_description_ != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "search[description]", search_description_));
    }
    if(search[reference] != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "search[reference]", search[reference]));
    }
    if(search_identificationNumber_ != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "search[identificationNumber]", search_identificationNumber_));
    }
    headerParams["accept-language"] = acceptLanguage;
headerParams["x-keyclic-app"] = xKeyclicApp;
headerParams["x-keyclic-app-version"] = xKeyclicAppVersion;

    List<String> contentTypes = ["application/json;charset=UTF-8"];

    String contentType = contentTypes.isEmpty ? "application/json" : contentTypes[0];
    List<String> authNames = ["bearer"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'ReportPagination') as ReportPagination ;
    } else {
      return null;
    }
  }
  /// Retrieve one Report resource.
  ///
  /// 
  Future<Report> getReport(String xKeyclicApp, String report, { String acceptLanguage, String xKeyclicAppVersion }) async {
    Object postBody;

    // verify required params are set
    if(xKeyclicApp == null) {
     throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if(report == null) {
     throw ApiException(400, "Missing required param: report");
    }

    // create path and map variables
    String path = "/reports/{report}".replaceAll("{format}","json").replaceAll("{" + "report" + "}", report.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["accept-language"] = acceptLanguage;
headerParams["x-keyclic-app"] = xKeyclicApp;
headerParams["x-keyclic-app-version"] = xKeyclicAppVersion;

    List<String> contentTypes = ["application/json;charset=UTF-8"];

    String contentType = contentTypes.isEmpty ? "application/json" : contentTypes[0];
    List<String> authNames = ["bearer"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'Report') as Report ;
    } else {
      return null;
    }
  }
  /// Edit one Report resource.
  ///
  /// 
  Future<Report> patchReport(String xKeyclicApp, ReportPatch reportPatch, String report, { String acceptLanguage, String xKeyclicAppVersion }) async {
    Object postBody = reportPatch;

    // verify required params are set
    if(xKeyclicApp == null) {
     throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if(reportPatch == null) {
     throw ApiException(400, "Missing required param: reportPatch");
    }
    if(report == null) {
     throw ApiException(400, "Missing required param: report");
    }

    // create path and map variables
    String path = "/reports/{report}".replaceAll("{format}","json").replaceAll("{" + "report" + "}", report.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["accept-language"] = acceptLanguage;
headerParams["x-keyclic-app"] = xKeyclicApp;
headerParams["x-keyclic-app-version"] = xKeyclicAppVersion;

    List<String> contentTypes = ["application/json;charset=UTF-8"];

    String contentType = contentTypes.isEmpty ? "application/json" : contentTypes[0];
    List<String> authNames = ["bearer"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'PATCH',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'Report') as Report ;
    } else {
      return null;
    }
  }
}
