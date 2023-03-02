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

    return json.fold(<ConfigurationReportType>[],
        (List<ConfigurationReportType> previousValue, element) {
      final ConfigurationReportType? object =
          ConfigurationReportType.fromJson(element);
      if (object is ConfigurationReportType) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ConfigurationReportType> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ConfigurationReportType>{};
    }

    return json.entries.fold(<String, ConfigurationReportType>{},
        (Map<String, ConfigurationReportType> previousValue, element) {
      final ConfigurationReportType? object =
          ConfigurationReportType.fromJson(element.value);
      if (object is ConfigurationReportType) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ConfigurationReportType-objects as value to a dart map
  static Map<String, List<ConfigurationReportType>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ConfigurationReportType>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ConfigurationReportType>>(
          key, ConfigurationReportType.listFromJson(value));
    });
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
