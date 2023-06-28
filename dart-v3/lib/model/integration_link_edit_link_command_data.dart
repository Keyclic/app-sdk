//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class IntegrationLinkEditLinkCommandData {
  /// Returns a new [IntegrationLinkEditLinkCommandData] instance.
  IntegrationLinkEditLinkCommandData({
    this.data = const {},
    this.metadata = const {},
    this.name,
    this.state,
    this.target,
  });

  /// Returns a new [IntegrationLinkEditLinkCommandData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static IntegrationLinkEditLinkCommandData? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return IntegrationLinkEditLinkCommandData(
      data: Map<String, Object>.from(json[r'data']),
      metadata: Map<String, Object>.from(json[r'metadata']),
      name: json[r'name'],
      state:
          IntegrationLinkEditLinkCommandDataStateEnum.fromJson(json[r'state']),
      target: json[r'target'],
    );
  }

  Map<String, Object>? data;

  Map<String, Object>? metadata;

  String? name;

  IntegrationLinkEditLinkCommandDataStateEnum? state;

  String? target;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is IntegrationLinkEditLinkCommandData &&
        DeepCollectionEquality.unordered().equals(data, other.data) &&
        DeepCollectionEquality.unordered().equals(metadata, other.metadata) &&
        other.name == name &&
        other.state == state &&
        other.target == target;
  }

  @override
  int get hashCode =>
      (data == null ? 0 : data.hashCode) +
      (metadata == null ? 0 : metadata.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (state == null ? 0 : state.hashCode) +
      (target == null ? 0 : target.hashCode);

  static List<IntegrationLinkEditLinkCommandData> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <IntegrationLinkEditLinkCommandData>[];
    }

    return json.fold(<IntegrationLinkEditLinkCommandData>[],
        (List<IntegrationLinkEditLinkCommandData> previousValue, element) {
      final IntegrationLinkEditLinkCommandData? object =
          IntegrationLinkEditLinkCommandData.fromJson(element);
      if (object is IntegrationLinkEditLinkCommandData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, IntegrationLinkEditLinkCommandData> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, IntegrationLinkEditLinkCommandData>{};
    }

    return json.entries.fold(<String, IntegrationLinkEditLinkCommandData>{},
        (Map<String, IntegrationLinkEditLinkCommandData> previousValue,
            element) {
      final IntegrationLinkEditLinkCommandData? object =
          IntegrationLinkEditLinkCommandData.fromJson(element.value);
      if (object is IntegrationLinkEditLinkCommandData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of IntegrationLinkEditLinkCommandData-objects as value to a dart map
  static Map<String, List<IntegrationLinkEditLinkCommandData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<IntegrationLinkEditLinkCommandData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<IntegrationLinkEditLinkCommandData>>(
          key, IntegrationLinkEditLinkCommandData.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'IntegrationLinkEditLinkCommandData[data=$data, metadata=$metadata, name=$name, state=$state, target=$target]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (data != null) r'data': data,
      if (metadata != null) r'metadata': metadata,
      if (name != null) r'name': name,
      if (state != null) r'state': state,
      if (target != null) r'target': target,
    };
  }
}

class IntegrationLinkEditLinkCommandDataStateEnum {
  /// Instantiate a new enum with the provided [value].
  const IntegrationLinkEditLinkCommandDataStateEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ACTIVE =
      IntegrationLinkEditLinkCommandDataStateEnum._(r'ACTIVE');
  static const INACTIVE =
      IntegrationLinkEditLinkCommandDataStateEnum._(r'INACTIVE');

  /// List of all possible values in this [enum][IntegrationLinkEditLinkCommandDataStateEnum].
  static const values = <IntegrationLinkEditLinkCommandDataStateEnum>[
    ACTIVE,
    INACTIVE,
  ];

  static IntegrationLinkEditLinkCommandDataStateEnum? fromJson(dynamic value) =>
      IntegrationLinkEditLinkCommandDataStateEnumTypeTransformer()
          .decode(value);

  static List<IntegrationLinkEditLinkCommandDataStateEnum> listFromJson(
      List<dynamic> json) {
    return json
        .map((value) {
          return IntegrationLinkEditLinkCommandDataStateEnum.fromJson(value);
        })
        .whereType<IntegrationLinkEditLinkCommandDataStateEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [IntegrationLinkEditLinkCommandDataStateEnum] to String,
/// and [decode] dynamic data back to [IntegrationLinkEditLinkCommandDataStateEnum].
class IntegrationLinkEditLinkCommandDataStateEnumTypeTransformer {
  const IntegrationLinkEditLinkCommandDataStateEnumTypeTransformer._();

  factory IntegrationLinkEditLinkCommandDataStateEnumTypeTransformer() =>
      _instance ??=
          IntegrationLinkEditLinkCommandDataStateEnumTypeTransformer._();

  String encode(IntegrationLinkEditLinkCommandDataStateEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a IntegrationLinkEditLinkCommandDataStateEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  IntegrationLinkEditLinkCommandDataStateEnum? decode(dynamic data,
      {bool allowNull = true}) {
    switch (data) {
      case r'ACTIVE':
        return IntegrationLinkEditLinkCommandDataStateEnum.ACTIVE;
      case r'INACTIVE':
        return IntegrationLinkEditLinkCommandDataStateEnum.INACTIVE;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [IntegrationLinkEditLinkCommandDataStateEnumTypeTransformer] instance.
  static IntegrationLinkEditLinkCommandDataStateEnumTypeTransformer? _instance;
}
