//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ConfigurationPlaceType {
  /// Returns a new [ConfigurationPlaceType] instance.
  ConfigurationPlaceType({
    this.id,
    this.type,
    this.workflow,
  });

  /// Returns a new [ConfigurationPlaceType] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ConfigurationPlaceType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ConfigurationPlaceType(
      id: json[r'id'],
      type: json[r'type'],
      workflow: PlaceTypeWorkflow.fromJson(json[r'workflow']),
    );
  }

  final String? id;

  String? type;

  PlaceTypeWorkflow? workflow;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ConfigurationPlaceType &&
        other.id == id &&
        other.type == type &&
        other.workflow == workflow;
  }

  @override
  int get hashCode =>
      (id == null ? 0 : id.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (workflow == null ? 0 : workflow.hashCode);

  static List<ConfigurationPlaceType> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ConfigurationPlaceType>[];
    }
    return json
        .map((value) {
          return ConfigurationPlaceType.fromJson(value);
        })
        .whereType<ConfigurationPlaceType>()
        .toList();
  }

  static Map<String, ConfigurationPlaceType> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ConfigurationPlaceType>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ConfigurationPlaceType?>(
            key, ConfigurationPlaceType.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ConfigurationPlaceType>;
  }

  // maps a json object with a list of ConfigurationPlaceType-objects as value to a dart map
  static Map<String, List<ConfigurationPlaceType>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ConfigurationPlaceType>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ConfigurationPlaceType.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ConfigurationPlaceType[id=$id, type=$type, workflow=$workflow]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) r'id': id,
      if (type != null) r'type': type,
      if (workflow != null) r'workflow': workflow,
    };
  }
}
