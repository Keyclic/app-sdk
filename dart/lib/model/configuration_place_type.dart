//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

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
  factory ConfigurationPlaceType.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ConfigurationPlaceType(
      id: json[r'id'],
      type: json[r'type'],
      workflow: PlaceTypeWorkflow.fromJson(json[r'workflow']),
    );
  }

  String id;

  String type;

  PlaceTypeWorkflow workflow;

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

  static List<ConfigurationPlaceType> listFromJson(List<dynamic> json) {
    return <ConfigurationPlaceType>[
      if (json is List)
        for (dynamic value in json) ConfigurationPlaceType.fromJson(value),
    ];
  }

  static Map<String, ConfigurationPlaceType> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ConfigurationPlaceType>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ConfigurationPlaceType.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ConfigurationPlaceType-objects as value to a dart map
  static Map<String, List<ConfigurationPlaceType>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ConfigurationPlaceType>>{
      if (json is Map)
        for (final entry in json.entries)
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
