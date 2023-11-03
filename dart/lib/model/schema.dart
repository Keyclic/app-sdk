//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Schema {
  /// Returns a new [Schema] instance.
  Schema({
    this.properties = const {},
    this.required_ = const [],
  });

  /// Returns a new [Schema] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Schema? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Schema(
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

    return other is Schema &&
        DeepCollectionEquality.unordered()
            .equals(properties, other.properties) &&
        DeepCollectionEquality.unordered().equals(required_, other.required_);
  }

  @override
  int get hashCode =>
      (properties == null ? 0 : properties.hashCode) +
      (required_ == null ? 0 : required_.hashCode);

  static List<Schema> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Schema>[];
    }

    return json.fold(<Schema>[], (List<Schema> previousValue, element) {
      final Schema? object = Schema.fromJson(element);
      if (object is Schema) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Schema> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Schema>{};
    }

    return json.entries.fold(<String, Schema>{},
        (Map<String, Schema> previousValue, element) {
      final Schema? object = Schema.fromJson(element.value);
      if (object is Schema) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Schema-objects as value to a dart map
  static Map<String, List<Schema>> mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Schema>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Schema>>(key, Schema.listFromJson(value));
    });
  }

  @override
  String toString() => 'Schema[properties=$properties, required_=$required_]';

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
