//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlaceDataPreferences {
  /// Returns a new [PlaceDataPreferences] instance.
  PlaceDataPreferences({
    this.visibility,
  });

  /// Returns a new [PlaceDataPreferences] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlaceDataPreferences? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PlaceDataPreferences(
      visibility:
          PlaceDataPreferencesVisibilityEnum.fromJson(json[r'visibility']),
    );
  }

  PlaceDataPreferencesVisibilityEnum? visibility;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceDataPreferences && other.visibility == visibility;
  }

  @override
  int get hashCode => (visibility == null ? 0 : visibility.hashCode);

  static List<PlaceDataPreferences> listFromJson(Iterable? json) {
    if (json == null) {
      return <PlaceDataPreferences>[];
    }

    return json.fold(<PlaceDataPreferences>[],
        (List<PlaceDataPreferences> previousValue, element) {
      final PlaceDataPreferences? object =
          PlaceDataPreferences.fromJson(element);
      if (object is PlaceDataPreferences) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlaceDataPreferences> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceDataPreferences>{};
    }

    return json.entries.fold(<String, PlaceDataPreferences>{},
        (Map<String, PlaceDataPreferences> previousValue, element) {
      final PlaceDataPreferences? object =
          PlaceDataPreferences.fromJson(element.value);
      if (object is PlaceDataPreferences) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlaceDataPreferences-objects as value to a dart map
  static Map<String, List<PlaceDataPreferences>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlaceDataPreferences>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlaceDataPreferences>>(
          key, PlaceDataPreferences.listFromJson(value));
    });
  }

  @override
  String toString() => 'PlaceDataPreferences[visibility=$visibility]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'visibility'))
        r'visibility': visibility,
    };
  }
}

class PlaceDataPreferencesVisibilityEnum {
  /// Instantiate a new enum with the provided [value].
  const PlaceDataPreferencesVisibilityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PRIVATE =
      PlaceDataPreferencesVisibilityEnum._(r'VISIBILITY_PRIVATE');
  static const PUBLIC =
      PlaceDataPreferencesVisibilityEnum._(r'VISIBILITY_PUBLIC');
  static const SHARED =
      PlaceDataPreferencesVisibilityEnum._(r'VISIBILITY_SHARED');

  /// List of all possible values in this [enum][PlaceDataPreferencesVisibilityEnum].
  static const values = <PlaceDataPreferencesVisibilityEnum>[
    PRIVATE,
    PUBLIC,
    SHARED,
  ];

  static PlaceDataPreferencesVisibilityEnum? fromJson(dynamic value) =>
      PlaceDataPreferencesVisibilityEnumTypeTransformer().decode(value);

  static List<PlaceDataPreferencesVisibilityEnum> listFromJson(
      List<dynamic> json) {
    return json
        .map((value) {
          return PlaceDataPreferencesVisibilityEnum.fromJson(value);
        })
        .whereType<PlaceDataPreferencesVisibilityEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [PlaceDataPreferencesVisibilityEnum] to String,
/// and [decode] dynamic data back to [PlaceDataPreferencesVisibilityEnum].
class PlaceDataPreferencesVisibilityEnumTypeTransformer {
  const PlaceDataPreferencesVisibilityEnumTypeTransformer._();

  factory PlaceDataPreferencesVisibilityEnumTypeTransformer() =>
      _instance ??= PlaceDataPreferencesVisibilityEnumTypeTransformer._();

  String encode(PlaceDataPreferencesVisibilityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PlaceDataPreferencesVisibilityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PlaceDataPreferencesVisibilityEnum? decode(dynamic data,
      {bool allowNull = true}) {
    switch (data) {
      case r'VISIBILITY_PRIVATE':
        return PlaceDataPreferencesVisibilityEnum.PRIVATE;
      case r'VISIBILITY_PUBLIC':
        return PlaceDataPreferencesVisibilityEnum.PUBLIC;
      case r'VISIBILITY_SHARED':
        return PlaceDataPreferencesVisibilityEnum.SHARED;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [PlaceDataPreferencesVisibilityEnumTypeTransformer] instance.
  static PlaceDataPreferencesVisibilityEnumTypeTransformer? _instance;
}
