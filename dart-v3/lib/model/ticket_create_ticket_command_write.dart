//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class TicketCreateTicketCommandWrite {
  /// Returns a new [TicketCreateTicketCommandWrite] instance.
  TicketCreateTicketCommandWrite({
    this.description,
    this.equipments,
    this.member,
    this.name,
    required this.parent,
    this.scheduledAt,
    this.type,
  });

  /// Returns a new [TicketCreateTicketCommandWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TicketCreateTicketCommandWrite? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    DateTime? scheduledAt = json[r'scheduledAt'] == null
        ? null
        : DateTime.parse(json[r'scheduledAt']);
    if (scheduledAt != null && scheduledAt.isUtc == false) {
      scheduledAt = DateTime.parse('${json[r'scheduledAt']}Z');
    }

    return TicketCreateTicketCommandWrite(
      description: json[r'description'],
      equipments: json[r'equipments'] == null
          ? null
          : List<String>.from(json[r'equipments']),
      member: json[r'member'],
      name: json[r'name'],
      parent: json[r'parent'],
      scheduledAt: scheduledAt,
      type: TicketCreateTicketCommandWriteTypeEnum.fromJson(json[r'type']),
    );
  }

  String? description;

  List<String>? equipments;

  String? member;

  String? name;

  String parent;

  DateTime? scheduledAt;

  TicketCreateTicketCommandWriteTypeEnum? type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is TicketCreateTicketCommandWrite &&
        other.description == description &&
        DeepCollectionEquality.unordered()
            .equals(equipments, other.equipments) &&
        other.member == member &&
        other.name == name &&
        other.parent == parent &&
        other.scheduledAt == scheduledAt &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (description == null ? 0 : description.hashCode) +
      (equipments == null ? 0 : equipments.hashCode) +
      (member == null ? 0 : member.hashCode) +
      (name == null ? 0 : name.hashCode) +
      parent.hashCode +
      (scheduledAt == null ? 0 : scheduledAt.hashCode) +
      (type == null ? 0 : type.hashCode);

  static List<TicketCreateTicketCommandWrite> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <TicketCreateTicketCommandWrite>[];
    }

    return json.fold(<TicketCreateTicketCommandWrite>[],
        (List<TicketCreateTicketCommandWrite> previousValue, element) {
      final TicketCreateTicketCommandWrite? object =
          TicketCreateTicketCommandWrite.fromJson(element);
      if (object is TicketCreateTicketCommandWrite) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, TicketCreateTicketCommandWrite> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, TicketCreateTicketCommandWrite>{};
    }

    return json.entries.fold(<String, TicketCreateTicketCommandWrite>{},
        (Map<String, TicketCreateTicketCommandWrite> previousValue, element) {
      final TicketCreateTicketCommandWrite? object =
          TicketCreateTicketCommandWrite.fromJson(element.value);
      if (object is TicketCreateTicketCommandWrite) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of TicketCreateTicketCommandWrite-objects as value to a dart map
  static Map<String, List<TicketCreateTicketCommandWrite>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<TicketCreateTicketCommandWrite>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<TicketCreateTicketCommandWrite>>(
          key, TicketCreateTicketCommandWrite.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'TicketCreateTicketCommandWrite[description=$description, equipments=$equipments, member=$member, name=$name, parent=$parent, scheduledAt=$scheduledAt, type=$type]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      if (keys == null || keys.contains(r'equipments'))
        r'equipments': equipments,
      if (keys == null || keys.contains(r'member')) r'member': member,
      if (keys == null || keys.contains(r'name')) r'name': name,
      r'parent': parent,
      if (keys == null || keys.contains(r'scheduledAt'))
        r'scheduledAt': scheduledAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'type')) r'type': type,
    };
  }
}

class TicketCreateTicketCommandWriteTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const TicketCreateTicketCommandWriteTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const operation =
      TicketCreateTicketCommandWriteTypeEnum._(r'Operation');
  static const task = TicketCreateTicketCommandWriteTypeEnum._(r'Task');

  /// List of all possible values in this [enum][TicketCreateTicketCommandWriteTypeEnum].
  static const values = <TicketCreateTicketCommandWriteTypeEnum>[
    operation,
    task,
  ];

  static TicketCreateTicketCommandWriteTypeEnum? fromJson(dynamic value) =>
      TicketCreateTicketCommandWriteTypeEnumTypeTransformer().decode(value);

  static List<TicketCreateTicketCommandWriteTypeEnum> listFromJson(
      List<dynamic> json) {
    return json
        .map((value) {
          return TicketCreateTicketCommandWriteTypeEnum.fromJson(value);
        })
        .whereType<TicketCreateTicketCommandWriteTypeEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [TicketCreateTicketCommandWriteTypeEnum] to String,
/// and [decode] dynamic data back to [TicketCreateTicketCommandWriteTypeEnum].
class TicketCreateTicketCommandWriteTypeEnumTypeTransformer {
  const TicketCreateTicketCommandWriteTypeEnumTypeTransformer._();

  factory TicketCreateTicketCommandWriteTypeEnumTypeTransformer() =>
      _instance ??= TicketCreateTicketCommandWriteTypeEnumTypeTransformer._();

  String encode(TicketCreateTicketCommandWriteTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TicketCreateTicketCommandWriteTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TicketCreateTicketCommandWriteTypeEnum? decode(dynamic data,
      {bool allowNull = true}) {
    switch (data) {
      case r'Operation':
        return TicketCreateTicketCommandWriteTypeEnum.operation;
      case r'Task':
        return TicketCreateTicketCommandWriteTypeEnum.task;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [TicketCreateTicketCommandWriteTypeEnumTypeTransformer] instance.
  static TicketCreateTicketCommandWriteTypeEnumTypeTransformer? _instance;
}
