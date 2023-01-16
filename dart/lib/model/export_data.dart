part of keyclic_sdk_api.api;

class ExportDataContentTypeEnum {
  static const String pdf_ = "application/pdf";
  static const String vndOpenxmlformatsOfficedocumentSpreadsheetmlSheet_ =
      "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
}

class ExportData {
  ExportData({
    this.contentType,
    this.organization,
    this.groupBy,
  });

  factory ExportData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ExportData(
      contentType: json['contentType'],
      organization: json['organization'],
      groupBy: json['groupBy'],
    );
  }

  /// use ExportDataContentTypeEnum
  String contentType;

  String organization;

  String groupBy;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExportData &&
        runtimeType == other.runtimeType &&
        contentType == other.contentType &&
        organization == other.organization &&
        groupBy == other.groupBy;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= contentType?.hashCode ?? 0;
    hashCode ^= organization?.hashCode ?? 0;
    hashCode ^= groupBy?.hashCode ?? 0;

    return hashCode;
  }

  static List<ExportData> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => ExportData.fromJson(value))?.toList() ??
        <ExportData>[];
  }

  static Map<String, ExportData> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, ExportData>((String key, dynamic value) {
          return MapEntry(key, ExportData.fromJson(value));
        }) ??
        <String, ExportData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (contentType != null) 'contentType': contentType,
      if (organization != null) 'organization': organization,
      if (groupBy != null) 'groupBy': groupBy,
    };
  }

  @override
  String toString() {
    return 'ExportData[contentType=$contentType, organization=$organization, groupBy=$groupBy, ]';
  }
}
