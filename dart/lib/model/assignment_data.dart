//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class AssignmentData {
  /// Returns a new [AssignmentData] instance.
  AssignmentData({
    this.description,
    @required this.report,
    @required this.service,
  });

  /// Returns a new [AssignmentData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory AssignmentData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return AssignmentData(
      description: json[r'description'],
      report: json[r'report'],
      service: json[r'service'],
    );
  }

  String description;

  String report;

  String service;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentData &&
        other.description == description &&
        other.report == report &&
        other.service == service;
  }

  @override
  int get hashCode =>
      (description == null ? 0 : description.hashCode) +
      (report == null ? 0 : report.hashCode) +
      (service == null ? 0 : service.hashCode);

  static List<AssignmentData> listFromJson(List<dynamic> json) {
    return <AssignmentData>[
      if (json is List)
        for (dynamic value in json) AssignmentData.fromJson(value),
    ];
  }

  static Map<String, AssignmentData> mapFromJson(Map<String, dynamic> json) {
    return <String, AssignmentData>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: AssignmentData.fromJson(entry.value),
    };
  }

  // maps a json object with a list of AssignmentData-objects as value to a dart map
  static Map<String, List<AssignmentData>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<AssignmentData>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: AssignmentData.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'AssignmentData[description=$description, report=$report, service=$service]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (description != null) r'description': description,
      r'report': report,
      r'service': service,
    };
  }
}
