//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class Schema {
  /// Returns a new [Schema] instance.
  Schema({
    this.properties = const {},
    this.required_ = const [],
  });

  /// Returns a new [Schema] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory Schema.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Schema(
      properties: json[r'properties'],
      required_: List<String>.from(json[r'required'] ?? []),
    );
  }

  Map<String, SchemaProperty> properties;

  List<String> required_;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Schema &&
        DeepCollectionEquality.unordered()
            .equals(properties, other.properties) &&
        DeepCollectionEquality.unordered().equals(required_, other.required_);
  }

  @override
  int get hashCode =>
      (properties == null ? 0 : properties.hashCode) +
      (required_ == null ? 0 : required_.hashCode);

  static List<Schema> listFromJson(List<dynamic> json) {
    return <Schema>[
      if (json is List)
        for (dynamic value in json) Schema.fromJson(value),
    ];
  }

  static Map<String, Schema> mapFromJson(Map<String, dynamic> json) {
    return <String, Schema>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Schema.fromJson(entry.value),
    };
  }

  // maps a json object with a list of Schema-objects as value to a dart map
  static Map<String, List<Schema>> mapListFromJson(Map<String, dynamic> json) {
    return <String, List<Schema>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Schema.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'Schema[properties=$properties, required_=$required_]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (properties != null) r'properties': properties,
      if (required_ != null) r'required': required_,
    };
  }
}
