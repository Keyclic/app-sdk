//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class IntegrationLinkCreateLinkCommandWrite {
  /// Returns a new [IntegrationLinkCreateLinkCommandWrite] instance.
  IntegrationLinkCreateLinkCommandWrite({
    this.data,
    required this.integration,
    this.metadata,
    this.name,
    required this.source_,
    this.state,
    this.target,
  });

  /// Returns a new [IntegrationLinkCreateLinkCommandWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static IntegrationLinkCreateLinkCommandWrite? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return IntegrationLinkCreateLinkCommandWrite(
      data: json[r'data'] == null
          ? null
          : Map<String, Object?>.from(json[r'data']),
      integration: json[r'integration'],
      metadata: json[r'metadata'] == null
          ? null
          : Map<String, Object?>.from(json[r'metadata']),
      name: json[r'name'],
      source_: json[r'source'],
      state: IntegrationLinkCreateLinkCommandWriteStateEnum.fromJson(
          json[r'state']),
      target: json[r'target'],
    );
  }

  Map<String, Object?>? data;

  String integration;

  Map<String, Object?>? metadata;

  String? name;

  String source_;

  IntegrationLinkCreateLinkCommandWriteStateEnum? state;

  String? target;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is IntegrationLinkCreateLinkCommandWrite &&
        DeepCollectionEquality.unordered().equals(data, other.data) &&
        other.integration == integration &&
        DeepCollectionEquality.unordered().equals(metadata, other.metadata) &&
        other.name == name &&
        other.source_ == source_ &&
        other.state == state &&
        other.target == target;
  }

  @override
  int get hashCode =>
      (data == null ? 0 : data.hashCode) +
      integration.hashCode +
      (metadata == null ? 0 : metadata.hashCode) +
      (name == null ? 0 : name.hashCode) +
      source_.hashCode +
      (state == null ? 0 : state.hashCode) +
      (target == null ? 0 : target.hashCode);

  static List<IntegrationLinkCreateLinkCommandWrite> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <IntegrationLinkCreateLinkCommandWrite>[];
    }

    return json.fold(<IntegrationLinkCreateLinkCommandWrite>[],
        (List<IntegrationLinkCreateLinkCommandWrite> previousValue, element) {
      final IntegrationLinkCreateLinkCommandWrite? object =
          IntegrationLinkCreateLinkCommandWrite.fromJson(element);
      if (object is IntegrationLinkCreateLinkCommandWrite) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, IntegrationLinkCreateLinkCommandWrite> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, IntegrationLinkCreateLinkCommandWrite>{};
    }

    return json.entries.fold(<String, IntegrationLinkCreateLinkCommandWrite>{},
        (Map<String, IntegrationLinkCreateLinkCommandWrite> previousValue,
            element) {
      final IntegrationLinkCreateLinkCommandWrite? object =
          IntegrationLinkCreateLinkCommandWrite.fromJson(element.value);
      if (object is IntegrationLinkCreateLinkCommandWrite) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of IntegrationLinkCreateLinkCommandWrite-objects as value to a dart map
  static Map<String, List<IntegrationLinkCreateLinkCommandWrite>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<IntegrationLinkCreateLinkCommandWrite>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<IntegrationLinkCreateLinkCommandWrite>>(
          key, IntegrationLinkCreateLinkCommandWrite.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'IntegrationLinkCreateLinkCommandWrite[data=$data, integration=$integration, metadata=$metadata, name=$name, source_=$source_, state=$state, target=$target]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'data')) r'data': data,
      r'integration': integration,
      if (keys == null || keys.contains(r'metadata')) r'metadata': metadata,
      if (keys == null || keys.contains(r'name')) r'name': name,
      r'source': source_,
      if (keys == null || keys.contains(r'state')) r'state': state,
      if (keys == null || keys.contains(r'target')) r'target': target,
    };
  }
}

class IntegrationLinkCreateLinkCommandWriteStateEnum {
  /// Instantiate a new enum with the provided [value].
  const IntegrationLinkCreateLinkCommandWriteStateEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ACTIVE =
      IntegrationLinkCreateLinkCommandWriteStateEnum._(r'ACTIVE');
  static const INACTIVE =
      IntegrationLinkCreateLinkCommandWriteStateEnum._(r'INACTIVE');

  /// List of all possible values in this [enum][IntegrationLinkCreateLinkCommandWriteStateEnum].
  static const values = <IntegrationLinkCreateLinkCommandWriteStateEnum>[
    ACTIVE,
    INACTIVE,
  ];

  static IntegrationLinkCreateLinkCommandWriteStateEnum? fromJson(
          dynamic value) =>
      IntegrationLinkCreateLinkCommandWriteStateEnumTypeTransformer()
          .decode(value);

  static List<IntegrationLinkCreateLinkCommandWriteStateEnum> listFromJson(
      List<dynamic> json) {
    return json
        .map((value) {
          return IntegrationLinkCreateLinkCommandWriteStateEnum.fromJson(value);
        })
        .whereType<IntegrationLinkCreateLinkCommandWriteStateEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [IntegrationLinkCreateLinkCommandWriteStateEnum] to String,
/// and [decode] dynamic data back to [IntegrationLinkCreateLinkCommandWriteStateEnum].
class IntegrationLinkCreateLinkCommandWriteStateEnumTypeTransformer {
  const IntegrationLinkCreateLinkCommandWriteStateEnumTypeTransformer._();

  factory IntegrationLinkCreateLinkCommandWriteStateEnumTypeTransformer() =>
      _instance ??=
          IntegrationLinkCreateLinkCommandWriteStateEnumTypeTransformer._();

  String encode(IntegrationLinkCreateLinkCommandWriteStateEnum data) =>
      data.value;

  /// Decodes a [dynamic value][data] to a IntegrationLinkCreateLinkCommandWriteStateEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  IntegrationLinkCreateLinkCommandWriteStateEnum? decode(dynamic data,
      {bool allowNull = true}) {
    switch (data) {
      case r'ACTIVE':
        return IntegrationLinkCreateLinkCommandWriteStateEnum.ACTIVE;
      case r'INACTIVE':
        return IntegrationLinkCreateLinkCommandWriteStateEnum.INACTIVE;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [IntegrationLinkCreateLinkCommandWriteStateEnumTypeTransformer] instance.
  static IntegrationLinkCreateLinkCommandWriteStateEnumTypeTransformer?
      _instance;
}
