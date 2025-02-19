//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlacePreferences {
  /// Returns a new [PlacePreferences] instance.
  PlacePreferences({
    this.public,
    this.visibility,
  });

  /// Returns a new [PlacePreferences] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlacePreferences? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PlacePreferences(
      public: json[r'public'],
      visibility: PlacePreferencesVisibilityEnum.fromJson(json[r'visibility']),
    );
  }

  bool? public;

  PlacePreferencesVisibilityEnum? visibility;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlacePreferences &&
        other.public == public &&
        other.visibility == visibility;
  }

  @override
  int get hashCode =>
      (public == null ? 0 : public.hashCode) +
      (visibility == null ? 0 : visibility.hashCode);

  static List<PlacePreferences> listFromJson(Iterable? json) {
    if (json == null) {
      return <PlacePreferences>[];
    }

    return json.fold(<PlacePreferences>[],
        (List<PlacePreferences> previousValue, element) {
      final PlacePreferences? object = PlacePreferences.fromJson(element);
      if (object is PlacePreferences) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlacePreferences> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlacePreferences>{};
    }

    return json.entries.fold(<String, PlacePreferences>{},
        (Map<String, PlacePreferences> previousValue, element) {
      final PlacePreferences? object = PlacePreferences.fromJson(element.value);
      if (object is PlacePreferences) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlacePreferences-objects as value to a dart map
  static Map<String, List<PlacePreferences>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlacePreferences>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlacePreferences>>(
          key, PlacePreferences.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PlacePreferences[public=$public, visibility=$visibility]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'public')) r'public': public,
      if (keys == null || keys.contains(r'visibility'))
        r'visibility': visibility,
    };
  }
}

class PlacePreferencesVisibilityEnum {
  /// Instantiate a new enum with the provided [value].
  const PlacePreferencesVisibilityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PRIVATE =
      PlacePreferencesVisibilityEnum._(r'VISIBILITY_PRIVATE');
  static const PUBLIC = PlacePreferencesVisibilityEnum._(r'VISIBILITY_PUBLIC');
  static const SHARED = PlacePreferencesVisibilityEnum._(r'VISIBILITY_SHARED');

  /// List of all possible values in this [enum][PlacePreferencesVisibilityEnum].
  static const values = <PlacePreferencesVisibilityEnum>[
    PRIVATE,
    PUBLIC,
    SHARED,
  ];

  static PlacePreferencesVisibilityEnum? fromJson(dynamic value) =>
      PlacePreferencesVisibilityEnumTypeTransformer().decode(value);

  static List<PlacePreferencesVisibilityEnum> listFromJson(List<dynamic> json) {
    return json
        .map((value) {
          return PlacePreferencesVisibilityEnum.fromJson(value);
        })
        .whereType<PlacePreferencesVisibilityEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [PlacePreferencesVisibilityEnum] to String,
/// and [decode] dynamic data back to [PlacePreferencesVisibilityEnum].
class PlacePreferencesVisibilityEnumTypeTransformer {
  const PlacePreferencesVisibilityEnumTypeTransformer._();

  factory PlacePreferencesVisibilityEnumTypeTransformer() =>
      _instance ??= PlacePreferencesVisibilityEnumTypeTransformer._();

  String encode(PlacePreferencesVisibilityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PlacePreferencesVisibilityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PlacePreferencesVisibilityEnum? decode(dynamic data,
      {bool allowNull = true}) {
    switch (data) {
      case r'VISIBILITY_PRIVATE':
        return PlacePreferencesVisibilityEnum.PRIVATE;
      case r'VISIBILITY_PUBLIC':
        return PlacePreferencesVisibilityEnum.PUBLIC;
      case r'VISIBILITY_SHARED':
        return PlacePreferencesVisibilityEnum.SHARED;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [PlacePreferencesVisibilityEnumTypeTransformer] instance.
  static PlacePreferencesVisibilityEnumTypeTransformer? _instance;
}
