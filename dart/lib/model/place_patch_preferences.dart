//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlacePatchPreferences {
  /// Returns a new [PlacePatchPreferences] instance.
  PlacePatchPreferences({
    this.visibility,
  });

  /// Returns a new [PlacePatchPreferences] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlacePatchPreferences? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PlacePatchPreferences(
      visibility:
          PlacePatchPreferencesVisibilityEnum.fromJson(json[r'visibility']),
    );
  }

  PlacePatchPreferencesVisibilityEnum? visibility;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlacePatchPreferences && other.visibility == visibility;
  }

  @override
  int get hashCode => (visibility == null ? 0 : visibility.hashCode);

  static List<PlacePatchPreferences> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PlacePatchPreferences>[];
    }

    return json.fold(<PlacePatchPreferences>[],
        (List<PlacePatchPreferences> previousValue, element) {
      final PlacePatchPreferences? object =
          PlacePatchPreferences.fromJson(element);
      if (object is PlacePatchPreferences) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlacePatchPreferences> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlacePatchPreferences>{};
    }

    return json.entries.fold(<String, PlacePatchPreferences>{},
        (Map<String, PlacePatchPreferences> previousValue, element) {
      final PlacePatchPreferences? object =
          PlacePatchPreferences.fromJson(element.value);
      if (object is PlacePatchPreferences) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlacePatchPreferences-objects as value to a dart map
  static Map<String, List<PlacePatchPreferences>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlacePatchPreferences>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlacePatchPreferences>>(
          key, PlacePatchPreferences.listFromJson(value));
    });
  }

  @override
  String toString() => 'PlacePatchPreferences[visibility=$visibility]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'visibility'))
        r'visibility': visibility,
    };
  }
}

class PlacePatchPreferencesVisibilityEnum {
  /// Instantiate a new enum with the provided [value].
  const PlacePatchPreferencesVisibilityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PRIVATE =
      PlacePatchPreferencesVisibilityEnum._(r'VISIBILITY_PRIVATE');
  static const PUBLIC =
      PlacePatchPreferencesVisibilityEnum._(r'VISIBILITY_PUBLIC');
  static const SHARED =
      PlacePatchPreferencesVisibilityEnum._(r'VISIBILITY_SHARED');

  /// List of all possible values in this [enum][PlacePatchPreferencesVisibilityEnum].
  static const values = <PlacePatchPreferencesVisibilityEnum>[
    PRIVATE,
    PUBLIC,
    SHARED,
  ];

  static PlacePatchPreferencesVisibilityEnum? fromJson(dynamic value) =>
      PlacePatchPreferencesVisibilityEnumTypeTransformer().decode(value);

  static List<PlacePatchPreferencesVisibilityEnum> listFromJson(
      List<dynamic> json) {
    return json
        .map((value) {
          return PlacePatchPreferencesVisibilityEnum.fromJson(value);
        })
        .whereType<PlacePatchPreferencesVisibilityEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [PlacePatchPreferencesVisibilityEnum] to String,
/// and [decode] dynamic data back to [PlacePatchPreferencesVisibilityEnum].
class PlacePatchPreferencesVisibilityEnumTypeTransformer {
  const PlacePatchPreferencesVisibilityEnumTypeTransformer._();

  factory PlacePatchPreferencesVisibilityEnumTypeTransformer() =>
      _instance ??= PlacePatchPreferencesVisibilityEnumTypeTransformer._();

  String encode(PlacePatchPreferencesVisibilityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PlacePatchPreferencesVisibilityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PlacePatchPreferencesVisibilityEnum? decode(dynamic data,
      {bool allowNull = true}) {
    switch (data) {
      case r'VISIBILITY_PRIVATE':
        return PlacePatchPreferencesVisibilityEnum.PRIVATE;
      case r'VISIBILITY_PUBLIC':
        return PlacePatchPreferencesVisibilityEnum.PUBLIC;
      case r'VISIBILITY_SHARED':
        return PlacePatchPreferencesVisibilityEnum.SHARED;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [PlacePatchPreferencesVisibilityEnumTypeTransformer] instance.
  static PlacePatchPreferencesVisibilityEnumTypeTransformer? _instance;
}
