//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MemberData {
  /// Returns a new [MemberData] instance.
  MemberData({
    this.contactPoint,
    required this.organization,
    this.person,
    this.type,
  });

  /// Returns a new [MemberData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MemberData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MemberData(
      contactPoint:
          InternalServiceDataContactPoint.fromJson(json[r'contactPoint']),
      organization: json[r'organization'],
      person: json[r'person'],
      type: MemberDataTypeEnum.fromJson(json[r'type']),
    );
  }

  InternalServiceDataContactPoint? contactPoint;

  String organization;

  String? person;

  MemberDataTypeEnum? type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberData &&
        other.contactPoint == contactPoint &&
        other.organization == organization &&
        other.person == person &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (contactPoint == null ? 0 : contactPoint.hashCode) +
      organization.hashCode +
      (person == null ? 0 : person.hashCode) +
      (type == null ? 0 : type.hashCode);

  static List<MemberData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <MemberData>[];
    }
    return json
        .map((value) {
          return MemberData.fromJson(value);
        })
        .whereType<MemberData>()
        .toList();
  }

  static Map<String, MemberData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MemberData>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, MemberData?>(key, MemberData.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, MemberData>;
  }

  // maps a json object with a list of MemberData-objects as value to a dart map
  static Map<String, List<MemberData>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<MemberData>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: MemberData.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'MemberData[contactPoint=$contactPoint, organization=$organization, person=$person, type=$type]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (contactPoint != null) r'contactPoint': contactPoint,
      r'organization': organization,
      if (person != null) r'person': person,
      if (type != null) r'type': type,
    };
  }
}

class MemberDataTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const MemberDataTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const collaborator = MemberDataTypeEnum._(r'Collaborator');
  static const contact = MemberDataTypeEnum._(r'Contact');

  /// List of all possible values in this [enum][MemberDataTypeEnum].
  static const values = <MemberDataTypeEnum>[
    collaborator,
    contact,
  ];

  static MemberDataTypeEnum? fromJson(dynamic value) =>
      MemberDataTypeEnumTypeTransformer().decode(value);

  static List<MemberDataTypeEnum> listFromJson(List<dynamic> json) {
    return json
        .map((value) {
          return MemberDataTypeEnum.fromJson(value);
        })
        .whereType<MemberDataTypeEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [MemberDataTypeEnum] to String,
/// and [decode] dynamic data back to [MemberDataTypeEnum].
class MemberDataTypeEnumTypeTransformer {
  const MemberDataTypeEnumTypeTransformer._();

  factory MemberDataTypeEnumTypeTransformer() =>
      _instance ??= MemberDataTypeEnumTypeTransformer._();

  String encode(MemberDataTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MemberDataTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MemberDataTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    switch (data) {
      case r'Collaborator':
        return MemberDataTypeEnum.collaborator;
      case r'Contact':
        return MemberDataTypeEnum.contact;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [MemberDataTypeEnumTypeTransformer] instance.
  static MemberDataTypeEnumTypeTransformer? _instance;
}
