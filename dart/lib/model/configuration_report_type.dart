//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ConfigurationReportType {
  /// Returns a new [ConfigurationReportType] instance.
  ConfigurationReportType({
    this.id,
    this.priorities = const [],
    this.type,
    this.workflow,
  });

  /// Returns a new [ConfigurationReportType] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ConfigurationReportType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ConfigurationReportType(
      id: json[r'id'],
      priorities: ReportTypePriority.listFromJson(json[r'priorities']),
      type: json[r'type'],
      workflow: ReportTypeWorkflow.fromJson(json[r'workflow']),
    );
  }

  final String? id;

  List<ReportTypePriority>? priorities;

  String? type;

  ReportTypeWorkflow? workflow;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ConfigurationReportType &&
        other.id == id &&
        DeepCollectionEquality.unordered()
            .equals(priorities, other.priorities) &&
        other.type == type &&
        other.workflow == workflow;
  }

  @override
  int get hashCode =>
      (id == null ? 0 : id.hashCode) +
      (priorities == null ? 0 : priorities.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (workflow == null ? 0 : workflow.hashCode);

  static List<ConfigurationReportType> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ConfigurationReportType>[];
    }
    return json
        .map((value) {
          return ConfigurationReportType.fromJson(value);
        })
        .whereType<ConfigurationReportType>()
        .toList();
  }

  static Map<String, ConfigurationReportType> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ConfigurationReportType>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ConfigurationReportType?>(
            key, ConfigurationReportType.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ConfigurationReportType>;
  }

  // maps a json object with a list of ConfigurationReportType-objects as value to a dart map
  static Map<String, List<ConfigurationReportType>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ConfigurationReportType>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ConfigurationReportType.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ConfigurationReportType[id=$id, priorities=$priorities, type=$type, workflow=$workflow]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) r'id': id,
      if (priorities != null) r'priorities': priorities,
      if (type != null) r'type': type,
      if (workflow != null) r'workflow': workflow,
    };
  }
}
