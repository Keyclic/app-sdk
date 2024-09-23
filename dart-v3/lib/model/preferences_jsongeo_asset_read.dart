//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PreferencesJsongeoAssetRead {
  /// Returns a new [PreferencesJsongeoAssetRead] instance.
  PreferencesJsongeoAssetRead({
    this.visibility,
  });

  /// Returns a new [PreferencesJsongeoAssetRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PreferencesJsongeoAssetRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PreferencesJsongeoAssetRead(
      visibility: PreferencesJsongeoAssetReadVisibilityEnum.fromJson(
          json[r'visibility']),
    );
  }

  PreferencesJsongeoAssetReadVisibilityEnum? visibility;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PreferencesJsongeoAssetRead &&
        other.visibility == visibility;
  }

  @override
  int get hashCode => (visibility == null ? 0 : visibility.hashCode);

  static List<PreferencesJsongeoAssetRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <PreferencesJsongeoAssetRead>[];
    }

    return json.fold(<PreferencesJsongeoAssetRead>[],
        (List<PreferencesJsongeoAssetRead> previousValue, element) {
      final PreferencesJsongeoAssetRead? object =
          PreferencesJsongeoAssetRead.fromJson(element);
      if (object is PreferencesJsongeoAssetRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PreferencesJsongeoAssetRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PreferencesJsongeoAssetRead>{};
    }

    return json.entries.fold(<String, PreferencesJsongeoAssetRead>{},
        (Map<String, PreferencesJsongeoAssetRead> previousValue, element) {
      final PreferencesJsongeoAssetRead? object =
          PreferencesJsongeoAssetRead.fromJson(element.value);
      if (object is PreferencesJsongeoAssetRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PreferencesJsongeoAssetRead-objects as value to a dart map
  static Map<String, List<PreferencesJsongeoAssetRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PreferencesJsongeoAssetRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PreferencesJsongeoAssetRead>>(
          key, PreferencesJsongeoAssetRead.listFromJson(value));
    });
  }

  @override
  String toString() => 'PreferencesJsongeoAssetRead[visibility=$visibility]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'visibility'))
        r'visibility': visibility,
    };
  }
}

class PreferencesJsongeoAssetReadVisibilityEnum {
  /// Instantiate a new enum with the provided [value].
  const PreferencesJsongeoAssetReadVisibilityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PRIVATE =
      PreferencesJsongeoAssetReadVisibilityEnum._(r'VISIBILITY_PRIVATE');
  static const PUBLIC =
      PreferencesJsongeoAssetReadVisibilityEnum._(r'VISIBILITY_PUBLIC');
  static const SHARED =
      PreferencesJsongeoAssetReadVisibilityEnum._(r'VISIBILITY_SHARED');

  /// List of all possible values in this [enum][PreferencesJsongeoAssetReadVisibilityEnum].
  static const values = <PreferencesJsongeoAssetReadVisibilityEnum>[
    PRIVATE,
    PUBLIC,
    SHARED,
  ];

  static PreferencesJsongeoAssetReadVisibilityEnum? fromJson(dynamic value) =>
      PreferencesJsongeoAssetReadVisibilityEnumTypeTransformer().decode(value);

  static List<PreferencesJsongeoAssetReadVisibilityEnum> listFromJson(
      List<dynamic> json) {
    return json
        .map((value) {
          return PreferencesJsongeoAssetReadVisibilityEnum.fromJson(value);
        })
        .whereType<PreferencesJsongeoAssetReadVisibilityEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [PreferencesJsongeoAssetReadVisibilityEnum] to String,
/// and [decode] dynamic data back to [PreferencesJsongeoAssetReadVisibilityEnum].
class PreferencesJsongeoAssetReadVisibilityEnumTypeTransformer {
  const PreferencesJsongeoAssetReadVisibilityEnumTypeTransformer._();

  factory PreferencesJsongeoAssetReadVisibilityEnumTypeTransformer() =>
      _instance ??=
          PreferencesJsongeoAssetReadVisibilityEnumTypeTransformer._();

  String encode(PreferencesJsongeoAssetReadVisibilityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PreferencesJsongeoAssetReadVisibilityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PreferencesJsongeoAssetReadVisibilityEnum? decode(dynamic data,
      {bool allowNull = true}) {
    switch (data) {
      case r'VISIBILITY_PRIVATE':
        return PreferencesJsongeoAssetReadVisibilityEnum.PRIVATE;
      case r'VISIBILITY_PUBLIC':
        return PreferencesJsongeoAssetReadVisibilityEnum.PUBLIC;
      case r'VISIBILITY_SHARED':
        return PreferencesJsongeoAssetReadVisibilityEnum.SHARED;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [PreferencesJsongeoAssetReadVisibilityEnumTypeTransformer] instance.
  static PreferencesJsongeoAssetReadVisibilityEnumTypeTransformer? _instance;
}
