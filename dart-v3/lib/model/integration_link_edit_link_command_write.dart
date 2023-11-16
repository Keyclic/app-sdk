//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class IntegrationLinkEditLinkCommandWrite {
  /// Returns a new [IntegrationLinkEditLinkCommandWrite] instance.
  IntegrationLinkEditLinkCommandWrite({
    this.data,
    this.metadata,
    this.name,
    this.state,
    this.target,
  });

  /// Returns a new [IntegrationLinkEditLinkCommandWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static IntegrationLinkEditLinkCommandWrite? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return IntegrationLinkEditLinkCommandWrite(
      data: json[r'data'] == null
          ? null
          : Map<String, Object?>.from(json[r'data']),
      metadata: json[r'metadata'] == null
          ? null
          : Map<String, Object?>.from(json[r'metadata']),
      name: json[r'name'],
      state:
          IntegrationLinkEditLinkCommandWriteStateEnum.fromJson(json[r'state']),
      target: json[r'target'],
    );
  }

  Map<String, Object?>? data;

  Map<String, Object?>? metadata;

  String? name;

  IntegrationLinkEditLinkCommandWriteStateEnum? state;

  String? target;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is IntegrationLinkEditLinkCommandWrite &&
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

  static List<IntegrationLinkEditLinkCommandWrite> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <IntegrationLinkEditLinkCommandWrite>[];
    }

    return json.fold(<IntegrationLinkEditLinkCommandWrite>[],
        (List<IntegrationLinkEditLinkCommandWrite> previousValue, element) {
      final IntegrationLinkEditLinkCommandWrite? object =
          IntegrationLinkEditLinkCommandWrite.fromJson(element);
      if (object is IntegrationLinkEditLinkCommandWrite) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, IntegrationLinkEditLinkCommandWrite> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, IntegrationLinkEditLinkCommandWrite>{};
    }

    return json.entries.fold(<String, IntegrationLinkEditLinkCommandWrite>{},
        (Map<String, IntegrationLinkEditLinkCommandWrite> previousValue,
            element) {
      final IntegrationLinkEditLinkCommandWrite? object =
          IntegrationLinkEditLinkCommandWrite.fromJson(element.value);
      if (object is IntegrationLinkEditLinkCommandWrite) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of IntegrationLinkEditLinkCommandWrite-objects as value to a dart map
  static Map<String, List<IntegrationLinkEditLinkCommandWrite>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<IntegrationLinkEditLinkCommandWrite>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<IntegrationLinkEditLinkCommandWrite>>(
          key, IntegrationLinkEditLinkCommandWrite.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'IntegrationLinkEditLinkCommandWrite[data=$data, metadata=$metadata, name=$name, state=$state, target=$target]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && data != null) || (keys?.contains(r'data') ?? false))
        r'data': data,
      if ((keys == null && metadata != null) ||
          (keys?.contains(r'metadata') ?? false))
        r'metadata': metadata,
      if ((keys == null && name != null) || (keys?.contains(r'name') ?? false))
        r'name': name,
      if ((keys == null && state != null) ||
          (keys?.contains(r'state') ?? false))
        r'state': state,
      if ((keys == null && target != null) ||
          (keys?.contains(r'target') ?? false))
        r'target': target,
    };
  }
}

class IntegrationLinkEditLinkCommandWriteStateEnum {
  /// Instantiate a new enum with the provided [value].
  const IntegrationLinkEditLinkCommandWriteStateEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ACTIVE =
      IntegrationLinkEditLinkCommandWriteStateEnum._(r'ACTIVE');
  static const INACTIVE =
      IntegrationLinkEditLinkCommandWriteStateEnum._(r'INACTIVE');

  /// List of all possible values in this [enum][IntegrationLinkEditLinkCommandWriteStateEnum].
  static const values = <IntegrationLinkEditLinkCommandWriteStateEnum>[
    ACTIVE,
    INACTIVE,
  ];

  static IntegrationLinkEditLinkCommandWriteStateEnum? fromJson(
          dynamic value) =>
      IntegrationLinkEditLinkCommandWriteStateEnumTypeTransformer()
          .decode(value);

  static List<IntegrationLinkEditLinkCommandWriteStateEnum> listFromJson(
      List<dynamic> json) {
    return json
        .map((value) {
          return IntegrationLinkEditLinkCommandWriteStateEnum.fromJson(value);
        })
        .whereType<IntegrationLinkEditLinkCommandWriteStateEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [IntegrationLinkEditLinkCommandWriteStateEnum] to String,
/// and [decode] dynamic data back to [IntegrationLinkEditLinkCommandWriteStateEnum].
class IntegrationLinkEditLinkCommandWriteStateEnumTypeTransformer {
  const IntegrationLinkEditLinkCommandWriteStateEnumTypeTransformer._();

  factory IntegrationLinkEditLinkCommandWriteStateEnumTypeTransformer() =>
      _instance ??=
          IntegrationLinkEditLinkCommandWriteStateEnumTypeTransformer._();

  String encode(IntegrationLinkEditLinkCommandWriteStateEnum data) =>
      data.value;

  /// Decodes a [dynamic value][data] to a IntegrationLinkEditLinkCommandWriteStateEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  IntegrationLinkEditLinkCommandWriteStateEnum? decode(dynamic data,
      {bool allowNull = true}) {
    switch (data) {
      case r'ACTIVE':
        return IntegrationLinkEditLinkCommandWriteStateEnum.ACTIVE;
      case r'INACTIVE':
        return IntegrationLinkEditLinkCommandWriteStateEnum.INACTIVE;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [IntegrationLinkEditLinkCommandWriteStateEnumTypeTransformer] instance.
  static IntegrationLinkEditLinkCommandWriteStateEnumTypeTransformer? _instance;
}
