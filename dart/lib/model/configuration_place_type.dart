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
  static ConfigurationPlaceType? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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

  static List<ConfigurationPlaceType> listFromJson(Iterable? json) {
    if (json == null) {
      return <ConfigurationPlaceType>[];
    }

    return json.fold(<ConfigurationPlaceType>[],
        (List<ConfigurationPlaceType> previousValue, element) {
      final ConfigurationPlaceType? object =
          ConfigurationPlaceType.fromJson(element);
      if (object is ConfigurationPlaceType) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ConfigurationPlaceType> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ConfigurationPlaceType>{};
    }

    return json.entries.fold(<String, ConfigurationPlaceType>{},
        (Map<String, ConfigurationPlaceType> previousValue, element) {
      final ConfigurationPlaceType? object =
          ConfigurationPlaceType.fromJson(element.value);
      if (object is ConfigurationPlaceType) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ConfigurationPlaceType-objects as value to a dart map
  static Map<String, List<ConfigurationPlaceType>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ConfigurationPlaceType>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ConfigurationPlaceType>>(
          key, ConfigurationPlaceType.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ConfigurationPlaceType[id=$id, type=$type, workflow=$workflow]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'type')) r'type': type,
      if (keys == null ||
          keys.any((key) => RegExp(r'^workflow\.').hasMatch(key)))
        r'workflow': workflow?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^workflow\.'))) {
            previousValue.add(element.split(RegExp(r'^workflow\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
