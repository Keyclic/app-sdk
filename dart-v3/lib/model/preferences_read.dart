//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PreferencesRead {
  /// Returns a new [PreferencesRead] instance.
  PreferencesRead({
    this.visibility,
  });

  /// Returns a new [PreferencesRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PreferencesRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PreferencesRead(
      visibility: PreferencesReadVisibilityEnum.fromJson(json[r'visibility']),
    );
  }

  PreferencesReadVisibilityEnum? visibility;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PreferencesRead && other.visibility == visibility;
  }

  @override
  int get hashCode => (visibility == null ? 0 : visibility.hashCode);

  static List<PreferencesRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PreferencesRead>[];
    }

    return json.fold(<PreferencesRead>[],
        (List<PreferencesRead> previousValue, element) {
      final PreferencesRead? object = PreferencesRead.fromJson(element);
      if (object is PreferencesRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PreferencesRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PreferencesRead>{};
    }

    return json.entries.fold(<String, PreferencesRead>{},
        (Map<String, PreferencesRead> previousValue, element) {
      final PreferencesRead? object = PreferencesRead.fromJson(element.value);
      if (object is PreferencesRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PreferencesRead-objects as value to a dart map
  static Map<String, List<PreferencesRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PreferencesRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PreferencesRead>>(
          key, PreferencesRead.listFromJson(value));
    });
  }

  @override
  String toString() => 'PreferencesRead[visibility=$visibility]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'visibility'))
        r'visibility': visibility,
    };
  }
}

class PreferencesReadVisibilityEnum {
  /// Instantiate a new enum with the provided [value].
  const PreferencesReadVisibilityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PRIVATE = PreferencesReadVisibilityEnum._(r'VISIBILITY_PRIVATE');
  static const PUBLIC = PreferencesReadVisibilityEnum._(r'VISIBILITY_PUBLIC');
  static const SHARED = PreferencesReadVisibilityEnum._(r'VISIBILITY_SHARED');

  /// List of all possible values in this [enum][PreferencesReadVisibilityEnum].
  static const values = <PreferencesReadVisibilityEnum>[
    PRIVATE,
    PUBLIC,
    SHARED,
  ];

  static PreferencesReadVisibilityEnum? fromJson(dynamic value) =>
      PreferencesReadVisibilityEnumTypeTransformer().decode(value);

  static List<PreferencesReadVisibilityEnum> listFromJson(List<dynamic> json) {
    return json
        .map((value) {
          return PreferencesReadVisibilityEnum.fromJson(value);
        })
        .whereType<PreferencesReadVisibilityEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [PreferencesReadVisibilityEnum] to String,
/// and [decode] dynamic data back to [PreferencesReadVisibilityEnum].
class PreferencesReadVisibilityEnumTypeTransformer {
  const PreferencesReadVisibilityEnumTypeTransformer._();

  factory PreferencesReadVisibilityEnumTypeTransformer() =>
      _instance ??= PreferencesReadVisibilityEnumTypeTransformer._();

  String encode(PreferencesReadVisibilityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PreferencesReadVisibilityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PreferencesReadVisibilityEnum? decode(dynamic data, {bool allowNull = true}) {
    switch (data) {
      case r'VISIBILITY_PRIVATE':
        return PreferencesReadVisibilityEnum.PRIVATE;
      case r'VISIBILITY_PUBLIC':
        return PreferencesReadVisibilityEnum.PUBLIC;
      case r'VISIBILITY_SHARED':
        return PreferencesReadVisibilityEnum.SHARED;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [PreferencesReadVisibilityEnumTypeTransformer] instance.
  static PreferencesReadVisibilityEnumTypeTransformer? _instance;
}
