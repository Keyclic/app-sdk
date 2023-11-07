//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class IntegrationLinkJsonhalRead {
  /// Returns a new [IntegrationLinkJsonhalRead] instance.
  IntegrationLinkJsonhalRead({
    this.links,
    this.data = const {},
    this.metadata = const {},
    this.name,
    required this.source_,
    this.state = const IntegrationLinkJsonhalReadStateEnum._('INACTIVE'),
    this.target,
    this.id,
    this.createdAt,
    this.updatedAt,
  });

  /// Returns a new [IntegrationLinkJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static IntegrationLinkJsonhalRead? fromJson(Map<String, dynamic>? json) {
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

    return IntegrationLinkJsonhalRead(
      links: json[r'_links'] is! Map
          ? null
          : AssetTypeJsonhalReadLinks.fromJson(json[r'_links']),
      data: json[r'data'] is! Map
          ? null
          : Map<String, Object>.from(json[r'data']),
      metadata: json[r'metadata'] is! Map
          ? null
          : Map<String, Object>.from(json[r'metadata']),
      name: json[r'name'],
      source_: json[r'source'],
      state: IntegrationLinkJsonhalReadStateEnum.fromJson(json[r'state']),
      target: json[r'target'],
      id: json[r'id'],
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  AssetTypeJsonhalReadLinks? links;

  Map<String, Object>? data;

  Map<String, Object>? metadata;

  String? name;

  /// Identify the unique identifier of the resource in the source system.
  String source_;

  IntegrationLinkJsonhalReadStateEnum? state;

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

    return other is IntegrationLinkJsonhalRead &&
        other.links == links &&
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
      (links == null ? 0 : links.hashCode) +
      (data == null ? 0 : data.hashCode) +
      (metadata == null ? 0 : metadata.hashCode) +
      (name == null ? 0 : name.hashCode) +
      source_.hashCode +
      (state == null ? 0 : state.hashCode) +
      (target == null ? 0 : target.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<IntegrationLinkJsonhalRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <IntegrationLinkJsonhalRead>[];
    }

    return json.fold(<IntegrationLinkJsonhalRead>[],
        (List<IntegrationLinkJsonhalRead> previousValue, element) {
      final IntegrationLinkJsonhalRead? object =
          IntegrationLinkJsonhalRead.fromJson(element);
      if (object is IntegrationLinkJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, IntegrationLinkJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, IntegrationLinkJsonhalRead>{};
    }

    return json.entries.fold(<String, IntegrationLinkJsonhalRead>{},
        (Map<String, IntegrationLinkJsonhalRead> previousValue, element) {
      final IntegrationLinkJsonhalRead? object =
          IntegrationLinkJsonhalRead.fromJson(element.value);
      if (object is IntegrationLinkJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of IntegrationLinkJsonhalRead-objects as value to a dart map
  static Map<String, List<IntegrationLinkJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<IntegrationLinkJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<IntegrationLinkJsonhalRead>>(
          key, IntegrationLinkJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'IntegrationLinkJsonhalRead[links=$links, data=$data, metadata=$metadata, name=$name, source_=$source_, state=$state, target=$target, id=$id, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && links != null) ||
          (keys?.contains(r'links') ?? false))
        r'_links': links?.toJson(),
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

class IntegrationLinkJsonhalReadStateEnum {
  /// Instantiate a new enum with the provided [value].
  const IntegrationLinkJsonhalReadStateEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ACTIVE = IntegrationLinkJsonhalReadStateEnum._(r'ACTIVE');
  static const INACTIVE = IntegrationLinkJsonhalReadStateEnum._(r'INACTIVE');

  /// List of all possible values in this [enum][IntegrationLinkJsonhalReadStateEnum].
  static const values = <IntegrationLinkJsonhalReadStateEnum>[
    ACTIVE,
    INACTIVE,
  ];

  static IntegrationLinkJsonhalReadStateEnum? fromJson(dynamic value) =>
      IntegrationLinkJsonhalReadStateEnumTypeTransformer().decode(value);

  static List<IntegrationLinkJsonhalReadStateEnum> listFromJson(
      List<dynamic> json) {
    return json
        .map((value) {
          return IntegrationLinkJsonhalReadStateEnum.fromJson(value);
        })
        .whereType<IntegrationLinkJsonhalReadStateEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [IntegrationLinkJsonhalReadStateEnum] to String,
/// and [decode] dynamic data back to [IntegrationLinkJsonhalReadStateEnum].
class IntegrationLinkJsonhalReadStateEnumTypeTransformer {
  const IntegrationLinkJsonhalReadStateEnumTypeTransformer._();

  factory IntegrationLinkJsonhalReadStateEnumTypeTransformer() =>
      _instance ??= IntegrationLinkJsonhalReadStateEnumTypeTransformer._();

  String encode(IntegrationLinkJsonhalReadStateEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a IntegrationLinkJsonhalReadStateEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  IntegrationLinkJsonhalReadStateEnum? decode(dynamic data,
      {bool allowNull = true}) {
    switch (data) {
      case r'ACTIVE':
        return IntegrationLinkJsonhalReadStateEnum.ACTIVE;
      case r'INACTIVE':
        return IntegrationLinkJsonhalReadStateEnum.INACTIVE;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [IntegrationLinkJsonhalReadStateEnumTypeTransformer] instance.
  static IntegrationLinkJsonhalReadStateEnumTypeTransformer? _instance;
}
