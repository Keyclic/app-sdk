//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class IntegrationLinkRead {
  /// Returns a new [IntegrationLinkRead] instance.
  IntegrationLinkRead({
    this.data = const {},
    this.metadata = const {},
    this.name,
    required this.source_,
    this.state = const IntegrationLinkReadStateEnum._('INACTIVE'),
    this.target,
    this.id,
    this.createdAt,
    this.updatedAt,
  });

  /// Returns a new [IntegrationLinkRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static IntegrationLinkRead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? createdAt =
        json[r'createdAt'] == null ? null : DateTime.parse(json[r'createdAt']);
    if (createdAt != null && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime? updatedAt =
        json[r'updatedAt'] == null ? null : DateTime.parse(json[r'updatedAt']);
    if (updatedAt != null && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return IntegrationLinkRead(
      data: json[r'data'] is! Map
          ? null
          : Map<String, Object>.from(json[r'data']),
      metadata: json[r'metadata'] is! Map
          ? null
          : Map<String, Object>.from(json[r'metadata']),
      name: json[r'name'],
      source_: json[r'source'],
      state: IntegrationLinkReadStateEnum.fromJson(json[r'state']),
      target: json[r'target'],
      id: json[r'id'],
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  Map<String, Object>? data;

  Map<String, Object>? metadata;

  String? name;

  /// Identify the unique identifier of the resource in the source system.
  String source_;

  IntegrationLinkReadStateEnum? state;

  /// Identify the unique identifier of the resource in the target system.
  String? target;

  /// The resource identifier.
  final String? id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is IntegrationLinkRead &&
        DeepCollectionEquality.unordered().equals(data, other.data) &&
        DeepCollectionEquality.unordered().equals(metadata, other.metadata) &&
        other.name == name &&
        other.source_ == source_ &&
        other.state == state &&
        other.target == target &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (data == null ? 0 : data.hashCode) +
      (metadata == null ? 0 : metadata.hashCode) +
      (name == null ? 0 : name.hashCode) +
      source_.hashCode +
      (state == null ? 0 : state.hashCode) +
      (target == null ? 0 : target.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<IntegrationLinkRead> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <IntegrationLinkRead>[];
    }

    return json.fold(<IntegrationLinkRead>[],
        (List<IntegrationLinkRead> previousValue, element) {
      final IntegrationLinkRead? object = IntegrationLinkRead.fromJson(element);
      if (object is IntegrationLinkRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, IntegrationLinkRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, IntegrationLinkRead>{};
    }

    return json.entries.fold(<String, IntegrationLinkRead>{},
        (Map<String, IntegrationLinkRead> previousValue, element) {
      final IntegrationLinkRead? object =
          IntegrationLinkRead.fromJson(element.value);
      if (object is IntegrationLinkRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of IntegrationLinkRead-objects as value to a dart map
  static Map<String, List<IntegrationLinkRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<IntegrationLinkRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<IntegrationLinkRead>>(
          key, IntegrationLinkRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'IntegrationLinkRead[data=$data, metadata=$metadata, name=$name, source_=$source_, state=$state, target=$target, id=$id, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && data != null) || (keys?.contains(r'data') ?? false))
        r'data': data,
      if ((keys == null && metadata != null) ||
          (keys?.contains(r'metadata') ?? false))
        r'metadata': metadata,
      if ((keys == null && name != null) || (keys?.contains(r'name') ?? false))
        r'name': name,
      r'source': source_,
      if ((keys == null && state != null) ||
          (keys?.contains(r'state') ?? false))
        r'state': state,
      if ((keys == null && target != null) ||
          (keys?.contains(r'target') ?? false))
        r'target': target,
      if ((keys == null && id != null) || (keys?.contains(r'id') ?? false))
        r'id': id,
      if ((keys == null && createdAt != null) ||
          (keys?.contains(r'createdAt') ?? false))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if ((keys == null && updatedAt != null) ||
          (keys?.contains(r'updatedAt') ?? false))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}

class IntegrationLinkReadStateEnum {
  /// Instantiate a new enum with the provided [value].
  const IntegrationLinkReadStateEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ACTIVE = IntegrationLinkReadStateEnum._(r'ACTIVE');
  static const INACTIVE = IntegrationLinkReadStateEnum._(r'INACTIVE');

  /// List of all possible values in this [enum][IntegrationLinkReadStateEnum].
  static const values = <IntegrationLinkReadStateEnum>[
    ACTIVE,
    INACTIVE,
  ];

  static IntegrationLinkReadStateEnum? fromJson(dynamic value) =>
      IntegrationLinkReadStateEnumTypeTransformer().decode(value);

  static List<IntegrationLinkReadStateEnum> listFromJson(List<dynamic> json) {
    return json
        .map((value) {
          return IntegrationLinkReadStateEnum.fromJson(value);
        })
        .whereType<IntegrationLinkReadStateEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [IntegrationLinkReadStateEnum] to String,
/// and [decode] dynamic data back to [IntegrationLinkReadStateEnum].
class IntegrationLinkReadStateEnumTypeTransformer {
  const IntegrationLinkReadStateEnumTypeTransformer._();

  factory IntegrationLinkReadStateEnumTypeTransformer() =>
      _instance ??= IntegrationLinkReadStateEnumTypeTransformer._();

  String encode(IntegrationLinkReadStateEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a IntegrationLinkReadStateEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  IntegrationLinkReadStateEnum? decode(dynamic data, {bool allowNull = true}) {
    switch (data) {
      case r'ACTIVE':
        return IntegrationLinkReadStateEnum.ACTIVE;
      case r'INACTIVE':
        return IntegrationLinkReadStateEnum.INACTIVE;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [IntegrationLinkReadStateEnumTypeTransformer] instance.
  static IntegrationLinkReadStateEnumTypeTransformer? _instance;
}
