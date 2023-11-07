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
      workflow: json[r'workflow'] is! Map
          ? null
          : OperationTypeWorkflow.fromJson(json[r'workflow']),
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

  static List<ConfigurationOperationType> listFromJson(
      Iterable<dynamic>? json) {
    if (json == null) {
      return <ConfigurationOperationType>[];
    }

    return json.fold(<ConfigurationOperationType>[],
        (List<ConfigurationOperationType> previousValue, element) {
      final ConfigurationOperationType? object =
          ConfigurationOperationType.fromJson(element);
      if (object is ConfigurationOperationType) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ConfigurationOperationType> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ConfigurationOperationType>{};
    }

    return json.entries.fold(<String, ConfigurationOperationType>{},
        (Map<String, ConfigurationOperationType> previousValue, element) {
      final ConfigurationOperationType? object =
          ConfigurationOperationType.fromJson(element.value);
      if (object is ConfigurationOperationType) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ConfigurationOperationType-objects as value to a dart map
  static Map<String, List<ConfigurationOperationType>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ConfigurationOperationType>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ConfigurationOperationType>>(
          key, ConfigurationOperationType.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ConfigurationOperationType[id=$id, type=$type, workflow=$workflow]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && id != null) || (keys?.contains(r'id') ?? false))
        r'id': id,
      if ((keys == null && type != null) || (keys?.contains(r'type') ?? false))
        r'type': type,
      if ((keys == null && workflow != null) ||
          (keys?.contains(r'workflow') ?? false))
        r'workflow': workflow?.toJson(),
    };
  }
}
