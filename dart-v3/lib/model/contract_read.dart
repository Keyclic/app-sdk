//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ContractRead {
  /// Returns a new [ContractRead] instance.
  ContractRead({
    this.billing,
    this.description,
    this.duration,
    required this.effectiveDate,
    this.endDate,
    required this.name,
    required this.number,
    this.onCall,
    required this.provider,
    this.renewal,
    this.signedAt,
    this.state,
    this.terminationDate,
    this.terminationReason,
    required this.type,
    this.id,
    this.createdAt,
    this.updatedAt,
  });

  /// Returns a new [ContractRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContractRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ContractRead(
      billing: BillingRead.fromJson(json[r'billing']),
      description: json[r'description'],
      duration: json[r'duration'],
      effectiveDate: mapToDateTime(json[r'effectiveDate'])!,
      endDate: mapToDateTime(json[r'endDate']),
      name: json[r'name'],
      number: json[r'number'],
      onCall: json[r'onCall'],
      provider: json[r'provider'],
      renewal: RenewalRead.fromJson(json[r'renewal']),
      signedAt: mapToDateTime(json[r'signedAt']),
      state: ContractReadStateEnum.fromJson(json[r'state']),
      terminationDate: mapToDateTime(json[r'terminationDate']),
      terminationReason: json[r'terminationReason'],
      type: json[r'type'],
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
    );
  }

  BillingRead? billing;

  /// Detailed description of the contract.
  String? description;

  /// Duration of the contract in ISO 8601 duration format.
  String? duration;

  /// The date and time the contract becomes effective, in ISO 8601 format. The effective date must not be earlier than the billing start date.
  DateTime effectiveDate;

  /// The date and time the contract ends This date is calculated according to effetive date, duration and eventually renewal duration.
  final DateTime? endDate;

  /// Name of the contract.
  String name;

  /// Number assigned to the contract by the organization. Each contract must have a unique contract number to ensure that contracts can be easily identified and tracked.
  String number;

  /// The onCall property represents whether a staff member is currently available for on-call duties.
  bool? onCall;

  /// Organization responsible for the contract.
  String provider;

  RenewalRead? renewal;

  DateTime? signedAt;

  /// Current state of the contract.
  final ContractReadStateEnum? state;

  /// The date and time the contract is terminated, in ISO 8601 format. The termination date must be in the future and must not be earlier than the effective date.
  DateTime? terminationDate;

  /// The optional reason for termination.
  String? terminationReason;

  /// The type of the contract defined by the organization.
  String type;

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

    return other is ContractRead &&
        other.billing == billing &&
        other.description == description &&
        other.duration == duration &&
        other.effectiveDate == effectiveDate &&
        other.endDate == endDate &&
        other.name == name &&
        other.number == number &&
        other.onCall == onCall &&
        other.provider == provider &&
        other.renewal == renewal &&
        other.signedAt == signedAt &&
        other.state == state &&
        other.terminationDate == terminationDate &&
        other.terminationReason == terminationReason &&
        other.type == type &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (billing == null ? 0 : billing.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (duration == null ? 0 : duration.hashCode) +
      effectiveDate.hashCode +
      (endDate == null ? 0 : endDate.hashCode) +
      name.hashCode +
      number.hashCode +
      (onCall == null ? 0 : onCall.hashCode) +
      provider.hashCode +
      (renewal == null ? 0 : renewal.hashCode) +
      (signedAt == null ? 0 : signedAt.hashCode) +
      (state == null ? 0 : state.hashCode) +
      (terminationDate == null ? 0 : terminationDate.hashCode) +
      (terminationReason == null ? 0 : terminationReason.hashCode) +
      type.hashCode +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<ContractRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <ContractRead>[];
    }

    return json.fold(<ContractRead>[],
        (List<ContractRead> previousValue, element) {
      final ContractRead? object = ContractRead.fromJson(element);
      if (object is ContractRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContractRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContractRead>{};
    }

    return json.entries.fold(<String, ContractRead>{},
        (Map<String, ContractRead> previousValue, element) {
      final ContractRead? object = ContractRead.fromJson(element.value);
      if (object is ContractRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContractRead-objects as value to a dart map
  static Map<String, List<ContractRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContractRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ContractRead>>(
          key, ContractRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ContractRead[billing=$billing, description=$description, duration=$duration, effectiveDate=$effectiveDate, endDate=$endDate, name=$name, number=$number, onCall=$onCall, provider=$provider, renewal=$renewal, signedAt=$signedAt, state=$state, terminationDate=$terminationDate, terminationReason=$terminationReason, type=$type, id=$id, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
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
      if (keys == null || keys.contains(r'endDate'))
        r'endDate': endDate?.toUtc().toIso8601String(),
      r'name': name,
      r'number': number,
      if (keys == null || keys.contains(r'onCall')) r'onCall': onCall,
      r'provider': provider,
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
      if (keys == null || keys.contains(r'state')) r'state': state,
      if (keys == null || keys.contains(r'terminationDate'))
        r'terminationDate': terminationDate?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'terminationReason'))
        r'terminationReason': terminationReason,
      r'type': type,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}

/// Current state of the contract.
class ContractReadStateEnum {
  /// Instantiate a new enum with the provided [value].
  const ContractReadStateEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ACTIVE = ContractReadStateEnum._(r'ACTIVE');
  static const DRAFT = ContractReadStateEnum._(r'DRAFT');
  static const EXPIRED = ContractReadStateEnum._(r'EXPIRED');
  static const FUTURE = ContractReadStateEnum._(r'FUTURE');
  static const SUSPENDED = ContractReadStateEnum._(r'SUSPENDED');
  static const TERMINATED = ContractReadStateEnum._(r'TERMINATED');

  /// List of all possible values in this [enum][ContractReadStateEnum].
  static const values = <ContractReadStateEnum>[
    ACTIVE,
    DRAFT,
    EXPIRED,
    FUTURE,
    SUSPENDED,
    TERMINATED,
  ];

  static ContractReadStateEnum? fromJson(dynamic value) =>
      ContractReadStateEnumTypeTransformer().decode(value);

  static List<ContractReadStateEnum> listFromJson(List<dynamic> json) {
    return json
        .map((value) {
          return ContractReadStateEnum.fromJson(value);
        })
        .whereType<ContractReadStateEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [ContractReadStateEnum] to String,
/// and [decode] dynamic data back to [ContractReadStateEnum].
class ContractReadStateEnumTypeTransformer {
  const ContractReadStateEnumTypeTransformer._();

  factory ContractReadStateEnumTypeTransformer() =>
      _instance ??= ContractReadStateEnumTypeTransformer._();

  String encode(ContractReadStateEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ContractReadStateEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ContractReadStateEnum? decode(dynamic data, {bool allowNull = true}) {
    switch (data) {
      case r'ACTIVE':
        return ContractReadStateEnum.ACTIVE;
      case r'DRAFT':
        return ContractReadStateEnum.DRAFT;
      case r'EXPIRED':
        return ContractReadStateEnum.EXPIRED;
      case r'FUTURE':
        return ContractReadStateEnum.FUTURE;
      case r'SUSPENDED':
        return ContractReadStateEnum.SUSPENDED;
      case r'TERMINATED':
        return ContractReadStateEnum.TERMINATED;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ContractReadStateEnumTypeTransformer] instance.
  static ContractReadStateEnumTypeTransformer? _instance;
}
