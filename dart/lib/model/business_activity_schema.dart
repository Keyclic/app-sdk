//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class BusinessActivitySchema {
  /// Returns a new [BusinessActivitySchema] instance.
  BusinessActivitySchema({
    this.properties = const {},
    this.required_ = const [],
  });

  /// Returns a new [BusinessActivitySchema] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory BusinessActivitySchema.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BusinessActivitySchema(
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

    return other is BusinessActivitySchema &&
        DeepCollectionEquality.unordered()
            .equals(properties, other.properties) &&
        DeepCollectionEquality.unordered().equals(required_, other.required_);
  }

  @override
  int get hashCode =>
      (properties == null ? 0 : properties.hashCode) +
      (required_ == null ? 0 : required_.hashCode);

  static List<BusinessActivitySchema> listFromJson(List<dynamic> json) {
    return <BusinessActivitySchema>[
      if (json is List)
        for (dynamic value in json) BusinessActivitySchema.fromJson(value),
    ];
  }

  static Map<String, BusinessActivitySchema> mapFromJson(
      Map<String, dynamic> json) {
    return <String, BusinessActivitySchema>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: BusinessActivitySchema.fromJson(entry.value),
    };
  }

  // maps a json object with a list of BusinessActivitySchema-objects as value to a dart map
  static Map<String, List<BusinessActivitySchema>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<BusinessActivitySchema>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: BusinessActivitySchema.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'BusinessActivitySchema[properties=$properties, required_=$required_]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (properties != null) r'properties': properties,
      if (required_ != null) r'required': required_,
    };
  }
}
