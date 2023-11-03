//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BusinessActivitySchema {
  /// Returns a new [BusinessActivitySchema] instance.
  BusinessActivitySchema({
    this.properties = const {},
    this.required_ = const [],
  });

  /// Returns a new [BusinessActivitySchema] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BusinessActivitySchema? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessActivitySchema(
      properties: SchemaProperty.mapFromJson(json[r'properties']),
      required_: json[r'required'] == null
          ? null
          : List<String>.from(json[r'required']),
    );
  }

  Map<String, SchemaProperty>? properties;

  List<String>? required_;

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

  static List<BusinessActivitySchema> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <BusinessActivitySchema>[];
    }

    return json.fold(<BusinessActivitySchema>[],
        (List<BusinessActivitySchema> previousValue, element) {
      final BusinessActivitySchema? object =
          BusinessActivitySchema.fromJson(element);
      if (object is BusinessActivitySchema) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BusinessActivitySchema> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BusinessActivitySchema>{};
    }

    return json.entries.fold(<String, BusinessActivitySchema>{},
        (Map<String, BusinessActivitySchema> previousValue, element) {
      final BusinessActivitySchema? object =
          BusinessActivitySchema.fromJson(element.value);
      if (object is BusinessActivitySchema) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BusinessActivitySchema-objects as value to a dart map
  static Map<String, List<BusinessActivitySchema>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BusinessActivitySchema>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BusinessActivitySchema>>(
          key, BusinessActivitySchema.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'BusinessActivitySchema[properties=$properties, required_=$required_]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && properties != null) ||
          (keys?.contains(r'properties') ?? false))
        r'properties': properties,
      if ((keys == null && required_ != null) ||
          (keys?.contains(r'required_') ?? false))
        r'required': required_,
    };
  }
}
