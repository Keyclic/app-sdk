//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ConfigurationOperationType {
  /// Returns a new [ConfigurationOperationType] instance.
  ConfigurationOperationType({
    this.id,
    this.type,
    this.workflow,
  });

  /// Returns a new [ConfigurationOperationType] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ConfigurationOperationType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ConfigurationOperationType(
      id: json[r'id'],
      type: json[r'type'],
      workflow: OperationTypeWorkflow.fromJson(json[r'workflow']),
    );
  }

  final String? id;

  String? type;

  OperationTypeWorkflow? workflow;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ConfigurationOperationType &&
        other.id == id &&
        other.type == type &&
        other.workflow == workflow;
  }

  @override
  int get hashCode =>
      (id == null ? 0 : id.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (workflow == null ? 0 : workflow.hashCode);

  static List<ConfigurationOperationType> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ConfigurationOperationType>[];
    }
    return json
        .map((value) {
          return ConfigurationOperationType.fromJson(value);
        })
        .whereType<ConfigurationOperationType>()
        .toList();
  }

  static Map<String, ConfigurationOperationType> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ConfigurationOperationType>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ConfigurationOperationType?>(
            key, ConfigurationOperationType.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ConfigurationOperationType>;
  }

  // maps a json object with a list of ConfigurationOperationType-objects as value to a dart map
  static Map<String, List<ConfigurationOperationType>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ConfigurationOperationType>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ConfigurationOperationType.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ConfigurationOperationType[id=$id, type=$type, workflow=$workflow]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) r'id': id,
      if (type != null) r'type': type,
      if (workflow != null) r'workflow': workflow,
    };
  }
}
