//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PreferencesJsonhalRead {
  /// Returns a new [PreferencesJsonhalRead] instance.
  PreferencesJsonhalRead({
    this.links,
    this.visibility,
  });

  /// Returns a new [PreferencesJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PreferencesJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PreferencesJsonhalRead(
      links: AssetTypeJsonhalReadLinks.fromJson(json[r'_links']),
      visibility:
          PreferencesJsonhalReadVisibilityEnum.fromJson(json[r'visibility']),
    );
  }

  AssetTypeJsonhalReadLinks? links;

  PreferencesJsonhalReadVisibilityEnum? visibility;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PreferencesJsonhalRead &&
        other.links == links &&
        other.visibility == visibility;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (visibility == null ? 0 : visibility.hashCode);

  static List<PreferencesJsonhalRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PreferencesJsonhalRead>[];
    }

    return json.fold(<PreferencesJsonhalRead>[],
        (List<PreferencesJsonhalRead> previousValue, element) {
      final PreferencesJsonhalRead? object =
          PreferencesJsonhalRead.fromJson(element);
      if (object is PreferencesJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PreferencesJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PreferencesJsonhalRead>{};
    }

    return json.entries.fold(<String, PreferencesJsonhalRead>{},
        (Map<String, PreferencesJsonhalRead> previousValue, element) {
      final PreferencesJsonhalRead? object =
          PreferencesJsonhalRead.fromJson(element.value);
      if (object is PreferencesJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PreferencesJsonhalRead-objects as value to a dart map
  static Map<String, List<PreferencesJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PreferencesJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PreferencesJsonhalRead>>(
          key, PreferencesJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PreferencesJsonhalRead[links=$links, visibility=$visibility]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'visibility'))
        r'visibility': visibility,
    };
  }
}

class PreferencesJsonhalReadVisibilityEnum {
  /// Instantiate a new enum with the provided [value].
  const PreferencesJsonhalReadVisibilityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PRIVATE =
      PreferencesJsonhalReadVisibilityEnum._(r'VISIBILITY_PRIVATE');
  static const PUBLIC =
      PreferencesJsonhalReadVisibilityEnum._(r'VISIBILITY_PUBLIC');
  static const SHARED =
      PreferencesJsonhalReadVisibilityEnum._(r'VISIBILITY_SHARED');

  /// List of all possible values in this [enum][PreferencesJsonhalReadVisibilityEnum].
  static const values = <PreferencesJsonhalReadVisibilityEnum>[
    PRIVATE,
    PUBLIC,
    SHARED,
  ];

  static PreferencesJsonhalReadVisibilityEnum? fromJson(dynamic value) =>
      PreferencesJsonhalReadVisibilityEnumTypeTransformer().decode(value);

  static List<PreferencesJsonhalReadVisibilityEnum> listFromJson(
      List<dynamic> json) {
    return json
        .map((value) {
          return PreferencesJsonhalReadVisibilityEnum.fromJson(value);
        })
        .whereType<PreferencesJsonhalReadVisibilityEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [PreferencesJsonhalReadVisibilityEnum] to String,
/// and [decode] dynamic data back to [PreferencesJsonhalReadVisibilityEnum].
class PreferencesJsonhalReadVisibilityEnumTypeTransformer {
  const PreferencesJsonhalReadVisibilityEnumTypeTransformer._();

  factory PreferencesJsonhalReadVisibilityEnumTypeTransformer() =>
      _instance ??= PreferencesJsonhalReadVisibilityEnumTypeTransformer._();

  String encode(PreferencesJsonhalReadVisibilityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PreferencesJsonhalReadVisibilityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PreferencesJsonhalReadVisibilityEnum? decode(dynamic data,
      {bool allowNull = true}) {
    switch (data) {
      case r'VISIBILITY_PRIVATE':
        return PreferencesJsonhalReadVisibilityEnum.PRIVATE;
      case r'VISIBILITY_PUBLIC':
        return PreferencesJsonhalReadVisibilityEnum.PUBLIC;
      case r'VISIBILITY_SHARED':
        return PreferencesJsonhalReadVisibilityEnum.SHARED;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [PreferencesJsonhalReadVisibilityEnumTypeTransformer] instance.
  static PreferencesJsonhalReadVisibilityEnumTypeTransformer? _instance;
}
