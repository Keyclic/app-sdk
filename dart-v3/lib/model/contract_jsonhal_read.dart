//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ContractJsonhalRead {
  /// Returns a new [ContractJsonhalRead] instance.
  ContractJsonhalRead({
    this.links,
    this.billing,
    this.description,
    this.duration,
    required this.effectiveDate,
    required this.name,
    required this.number,
    this.onCall,
    this.renewal,
    this.signedAt,
    this.state = const ContractJsonhalReadStateEnum._('DRAFT'),
    this.terminationDate,
    this.id,
    this.createdAt,
    this.updatedAt,
  });

  /// Returns a new [ContractJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContractJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ContractJsonhalRead(
      links: ContractJsonhalReadLinks.fromJson(json[r'_links']),
      billing: BillingJsonhalRead.fromJson(json[r'billing']),
      description: json[r'description'],
      duration: json[r'duration'],
      effectiveDate: mapToDateTime(json[r'effectiveDate'])!,
      name: json[r'name'],
      number: json[r'number'],
      onCall: json[r'onCall'],
      renewal: RenewalJsonhalRead.fromJson(json[r'renewal']),
      signedAt: mapToDateTime(json[r'signedAt']),
      state: ContractJsonhalReadStateEnum.fromJson(json[r'state'])!,
      terminationDate: mapToDateTime(json[r'terminationDate']),
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
    );
  }

  ContractJsonhalReadLinks? links;

  BillingJsonhalRead? billing;

  /// Detailed description of the contract.
  String? description;

  /// Duration of the contract in ISO 8601 duration format.
  String? duration;

  /// The date and time the contract becomes effective, in ISO 8601 format. The effective date must not be earlier than the billing start date.
  DateTime effectiveDate;

  /// Name of the contract.
  String name;

  /// Number assigned to the contract by the organization. Each contract must have a unique contract number to ensure that contracts can be easily identified and tracked.
  String number;

  /// The onCall property represents whether a staff member is currently available for on-call duties.
  bool? onCall;

  RenewalJsonhalRead? renewal;

  DateTime? signedAt;

  /// Current state of the contract.
  ContractJsonhalReadStateEnum state;

  /// The date and time the contract is terminated, in ISO 8601 format. The termination date must be in the future and must not be earlier than the effective date.
  final DateTime? terminationDate;

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

    return other is ContractJsonhalRead &&
        other.links == links &&
        other.billing == billing &&
        other.description == description &&
        other.duration == duration &&
        other.effectiveDate == effectiveDate &&
        other.name == name &&
        other.number == number &&
        other.onCall == onCall &&
        other.renewal == renewal &&
        other.signedAt == signedAt &&
        other.state == state &&
        other.terminationDate == terminationDate &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (billing == null ? 0 : billing.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (duration == null ? 0 : duration.hashCode) +
      effectiveDate.hashCode +
      name.hashCode +
      number.hashCode +
      (onCall == null ? 0 : onCall.hashCode) +
      (renewal == null ? 0 : renewal.hashCode) +
      (signedAt == null ? 0 : signedAt.hashCode) +
      state.hashCode +
      (terminationDate == null ? 0 : terminationDate.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<ContractJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <ContractJsonhalRead>[];
    }

    return json.fold(<ContractJsonhalRead>[],
        (List<ContractJsonhalRead> previousValue, element) {
      final ContractJsonhalRead? object = ContractJsonhalRead.fromJson(element);
      if (object is ContractJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContractJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContractJsonhalRead>{};
    }

    return json.entries.fold(<String, ContractJsonhalRead>{},
        (Map<String, ContractJsonhalRead> previousValue, element) {
      final ContractJsonhalRead? object =
          ContractJsonhalRead.fromJson(element.value);
      if (object is ContractJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContractJsonhalRead-objects as value to a dart map
  static Map<String, List<ContractJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContractJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ContractJsonhalRead>>(
          key, ContractJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ContractJsonhalRead[links=$links, billing=$billing, description=$description, duration=$duration, effectiveDate=$effectiveDate, name=$name, number=$number, onCall=$onCall, renewal=$renewal, signedAt=$signedAt, state=$state, terminationDate=$terminationDate, id=$id, createdAt=$createdAt, updatedAt=$updatedAt]';

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
      if (keys == null ||
          keys.any((key) => RegExp(r'^billing\.').hasMatch(key)))
        r'billing': billing?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^billing\.'))) {
            previousValue.add(element.split(RegExp(r'^billing\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      if (keys == null || keys.contains(r'duration')) r'duration': duration,
      r'effectiveDate': effectiveDate.toUtc().toIso8601String(),
      r'name': name,
      r'number': number,
      if (keys == null || keys.contains(r'onCall')) r'onCall': onCall,
      if (keys == null ||
          keys.any((key) => RegExp(r'^renewal\.').hasMatch(key)))
        r'renewal': renewal?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^renewal\.'))) {
            previousValue.add(element.split(RegExp(r'^renewal\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'signedAt'))
        r'signedAt': signedAt?.toUtc().toIso8601String(),
      r'state': state,
      if (keys == null || keys.contains(r'terminationDate'))
        r'terminationDate': terminationDate?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}

/// Current state of the contract.
class ContractJsonhalReadStateEnum {
  /// Instantiate a new enum with the provided [value].
  const ContractJsonhalReadStateEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ACTIVE = ContractJsonhalReadStateEnum._(r'ACTIVE');
  static const DRAFT = ContractJsonhalReadStateEnum._(r'DRAFT');
  static const EXPIRED = ContractJsonhalReadStateEnum._(r'EXPIRED');
  static const SUSPENDED = ContractJsonhalReadStateEnum._(r'SUSPENDED');

  /// List of all possible values in this [enum][ContractJsonhalReadStateEnum].
  static const values = <ContractJsonhalReadStateEnum>[
    ACTIVE,
    DRAFT,
    EXPIRED,
    SUSPENDED,
  ];

  static ContractJsonhalReadStateEnum? fromJson(dynamic value) =>
      ContractJsonhalReadStateEnumTypeTransformer().decode(value);

  static List<ContractJsonhalReadStateEnum> listFromJson(List<dynamic> json) {
    return json
        .map((value) {
          return ContractJsonhalReadStateEnum.fromJson(value);
        })
        .whereType<ContractJsonhalReadStateEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [ContractJsonhalReadStateEnum] to String,
/// and [decode] dynamic data back to [ContractJsonhalReadStateEnum].
class ContractJsonhalReadStateEnumTypeTransformer {
  const ContractJsonhalReadStateEnumTypeTransformer._();

  factory ContractJsonhalReadStateEnumTypeTransformer() =>
      _instance ??= ContractJsonhalReadStateEnumTypeTransformer._();

  String encode(ContractJsonhalReadStateEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ContractJsonhalReadStateEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ContractJsonhalReadStateEnum? decode(dynamic data, {bool allowNull = true}) {
    switch (data) {
      case r'ACTIVE':
        return ContractJsonhalReadStateEnum.ACTIVE;
      case r'DRAFT':
        return ContractJsonhalReadStateEnum.DRAFT;
      case r'EXPIRED':
        return ContractJsonhalReadStateEnum.EXPIRED;
      case r'SUSPENDED':
        return ContractJsonhalReadStateEnum.SUSPENDED;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ContractJsonhalReadStateEnumTypeTransformer] instance.
  static ContractJsonhalReadStateEnumTypeTransformer? _instance;
}
