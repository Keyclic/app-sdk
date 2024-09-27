//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PreferencesAssetRead {
  /// Returns a new [PreferencesAssetRead] instance.
  PreferencesAssetRead({
    this.visibility,
  });

  /// Returns a new [PreferencesAssetRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PreferencesAssetRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PreferencesAssetRead(
      visibility:
          PreferencesAssetReadVisibilityEnum.fromJson(json[r'visibility']),
    );
  }

  PreferencesAssetReadVisibilityEnum? visibility;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PreferencesAssetRead && other.visibility == visibility;
  }

  @override
  int get hashCode => (visibility == null ? 0 : visibility.hashCode);

  static List<PreferencesAssetRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <PreferencesAssetRead>[];
    }

    return json.fold(<PreferencesAssetRead>[],
        (List<PreferencesAssetRead> previousValue, element) {
      final PreferencesAssetRead? object =
          PreferencesAssetRead.fromJson(element);
      if (object is PreferencesAssetRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PreferencesAssetRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PreferencesAssetRead>{};
    }

    return json.entries.fold(<String, PreferencesAssetRead>{},
        (Map<String, PreferencesAssetRead> previousValue, element) {
      final PreferencesAssetRead? object =
          PreferencesAssetRead.fromJson(element.value);
      if (object is PreferencesAssetRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PreferencesAssetRead-objects as value to a dart map
  static Map<String, List<PreferencesAssetRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PreferencesAssetRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PreferencesAssetRead>>(
          key, PreferencesAssetRead.listFromJson(value));
    });
  }

  @override
  String toString() => 'PreferencesAssetRead[visibility=$visibility]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'visibility'))
        r'visibility': visibility,
    };
  }
}

class PreferencesAssetReadVisibilityEnum {
  /// Instantiate a new enum with the provided [value].
  const PreferencesAssetReadVisibilityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PRIVATE =
      PreferencesAssetReadVisibilityEnum._(r'VISIBILITY_PRIVATE');
  static const PUBLIC =
      PreferencesAssetReadVisibilityEnum._(r'VISIBILITY_PUBLIC');
  static const SHARED =
      PreferencesAssetReadVisibilityEnum._(r'VISIBILITY_SHARED');

  /// List of all possible values in this [enum][PreferencesAssetReadVisibilityEnum].
  static const values = <PreferencesAssetReadVisibilityEnum>[
    PRIVATE,
    PUBLIC,
    SHARED,
  ];

  static PreferencesAssetReadVisibilityEnum? fromJson(dynamic value) =>
      PreferencesAssetReadVisibilityEnumTypeTransformer().decode(value);

  static List<PreferencesAssetReadVisibilityEnum> listFromJson(
      List<dynamic> json) {
    return json
        .map((value) {
          return PreferencesAssetReadVisibilityEnum.fromJson(value);
        })
        .whereType<PreferencesAssetReadVisibilityEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [PreferencesAssetReadVisibilityEnum] to String,
/// and [decode] dynamic data back to [PreferencesAssetReadVisibilityEnum].
class PreferencesAssetReadVisibilityEnumTypeTransformer {
  const PreferencesAssetReadVisibilityEnumTypeTransformer._();

  factory PreferencesAssetReadVisibilityEnumTypeTransformer() =>
      _instance ??= PreferencesAssetReadVisibilityEnumTypeTransformer._();

  String encode(PreferencesAssetReadVisibilityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PreferencesAssetReadVisibilityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PreferencesAssetReadVisibilityEnum? decode(dynamic data,
      {bool allowNull = true}) {
    switch (data) {
      case r'VISIBILITY_PRIVATE':
        return PreferencesAssetReadVisibilityEnum.PRIVATE;
      case r'VISIBILITY_PUBLIC':
        return PreferencesAssetReadVisibilityEnum.PUBLIC;
      case r'VISIBILITY_SHARED':
        return PreferencesAssetReadVisibilityEnum.SHARED;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [PreferencesAssetReadVisibilityEnumTypeTransformer] instance.
  static PreferencesAssetReadVisibilityEnumTypeTransformer? _instance;
}
