//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PreferencesJsonhalAssetRead {
  /// Returns a new [PreferencesJsonhalAssetRead] instance.
  PreferencesJsonhalAssetRead({
    this.public,
    this.visibility,
  });

  /// Returns a new [PreferencesJsonhalAssetRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PreferencesJsonhalAssetRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PreferencesJsonhalAssetRead(
      public: json[r'public'],
      visibility: PreferencesJsonhalAssetReadVisibilityEnum.fromJson(
          json[r'visibility']),
    );
  }

  bool? public;

  PreferencesJsonhalAssetReadVisibilityEnum? visibility;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PreferencesJsonhalAssetRead &&
        other.public == public &&
        other.visibility == visibility;
  }

  @override
  int get hashCode =>
      (public == null ? 0 : public.hashCode) +
      (visibility == null ? 0 : visibility.hashCode);

  static List<PreferencesJsonhalAssetRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <PreferencesJsonhalAssetRead>[];
    }

    return json.fold(<PreferencesJsonhalAssetRead>[],
        (List<PreferencesJsonhalAssetRead> previousValue, element) {
      final PreferencesJsonhalAssetRead? object =
          PreferencesJsonhalAssetRead.fromJson(element);
      if (object is PreferencesJsonhalAssetRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PreferencesJsonhalAssetRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PreferencesJsonhalAssetRead>{};
    }

    return json.entries.fold(<String, PreferencesJsonhalAssetRead>{},
        (Map<String, PreferencesJsonhalAssetRead> previousValue, element) {
      final PreferencesJsonhalAssetRead? object =
          PreferencesJsonhalAssetRead.fromJson(element.value);
      if (object is PreferencesJsonhalAssetRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PreferencesJsonhalAssetRead-objects as value to a dart map
  static Map<String, List<PreferencesJsonhalAssetRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PreferencesJsonhalAssetRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PreferencesJsonhalAssetRead>>(
          key, PreferencesJsonhalAssetRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PreferencesJsonhalAssetRead[public=$public, visibility=$visibility]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'public')) r'public': public,
      if (keys == null || keys.contains(r'visibility'))
        r'visibility': visibility,
    };
  }
}

class PreferencesJsonhalAssetReadVisibilityEnum {
  /// Instantiate a new enum with the provided [value].
  const PreferencesJsonhalAssetReadVisibilityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PRIVATE =
      PreferencesJsonhalAssetReadVisibilityEnum._(r'VISIBILITY_PRIVATE');
  static const PUBLIC =
      PreferencesJsonhalAssetReadVisibilityEnum._(r'VISIBILITY_PUBLIC');
  static const SHARED =
      PreferencesJsonhalAssetReadVisibilityEnum._(r'VISIBILITY_SHARED');

  /// List of all possible values in this [enum][PreferencesJsonhalAssetReadVisibilityEnum].
  static const values = <PreferencesJsonhalAssetReadVisibilityEnum>[
    PRIVATE,
    PUBLIC,
    SHARED,
  ];

  static PreferencesJsonhalAssetReadVisibilityEnum? fromJson(dynamic value) =>
      PreferencesJsonhalAssetReadVisibilityEnumTypeTransformer().decode(value);

  static List<PreferencesJsonhalAssetReadVisibilityEnum> listFromJson(
      List<dynamic> json) {
    return json
        .map((value) {
          return PreferencesJsonhalAssetReadVisibilityEnum.fromJson(value);
        })
        .whereType<PreferencesJsonhalAssetReadVisibilityEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [PreferencesJsonhalAssetReadVisibilityEnum] to String,
/// and [decode] dynamic data back to [PreferencesJsonhalAssetReadVisibilityEnum].
class PreferencesJsonhalAssetReadVisibilityEnumTypeTransformer {
  const PreferencesJsonhalAssetReadVisibilityEnumTypeTransformer._();

  factory PreferencesJsonhalAssetReadVisibilityEnumTypeTransformer() =>
      _instance ??=
          PreferencesJsonhalAssetReadVisibilityEnumTypeTransformer._();

  String encode(PreferencesJsonhalAssetReadVisibilityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PreferencesJsonhalAssetReadVisibilityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PreferencesJsonhalAssetReadVisibilityEnum? decode(dynamic data,
      {bool allowNull = true}) {
    switch (data) {
      case r'VISIBILITY_PRIVATE':
        return PreferencesJsonhalAssetReadVisibilityEnum.PRIVATE;
      case r'VISIBILITY_PUBLIC':
        return PreferencesJsonhalAssetReadVisibilityEnum.PUBLIC;
      case r'VISIBILITY_SHARED':
        return PreferencesJsonhalAssetReadVisibilityEnum.SHARED;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [PreferencesJsonhalAssetReadVisibilityEnumTypeTransformer] instance.
  static PreferencesJsonhalAssetReadVisibilityEnumTypeTransformer? _instance;
}
