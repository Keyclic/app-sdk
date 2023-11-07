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
    required this.name,
    required this.number,
    this.onCall,
    required this.provider,
    this.renewal,
    this.signedAt,
    this.state = const ContractReadStateEnum._('DRAFT'),
    this.terminationDate,
    this.type,
    this.id,
    this.createdAt,
    this.updatedAt,
  });

  /// Returns a new [ContractRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContractRead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime effectiveDate = DateTime.parse(json[r'effectiveDate']);
    if (effectiveDate.isUtc == false) {
      effectiveDate = DateTime.parse('${json[r'effectiveDate']}Z');
    }

    DateTime? signedAt =
        json[r'signedAt'] == null ? null : DateTime.parse(json[r'signedAt']);
    if (signedAt != null && signedAt.isUtc == false) {
      signedAt = DateTime.parse('${json[r'signedAt']}Z');
    }

    DateTime? terminationDate = json[r'terminationDate'] == null
        ? null
        : DateTime.parse(json[r'terminationDate']);
    if (terminationDate != null && terminationDate.isUtc == false) {
      terminationDate = DateTime.parse('${json[r'terminationDate']}Z');
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

    return ContractRead(
      billing: json[r'billing'] is! Map
          ? null
          : BillingRead.fromJson(json[r'billing']),
      description: json[r'description'],
      duration: json[r'duration'],
      effectiveDate: effectiveDate,
      name: json[r'name'],
      number: json[r'number'],
      onCall: json[r'onCall'],
      provider: json[r'provider'],
      renewal: json[r'renewal'] is! Map
          ? null
          : RenewalRead.fromJson(json[r'renewal']),
      signedAt: signedAt,
      state: ContractReadStateEnum.fromJson(json[r'state'])!,
      terminationDate: terminationDate,
      type: json[r'type'],
      id: json[r'id'],
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  BillingRead? billing;

  /// Detailed description of the contract.
  String? description;

  /// Duration of the contract in ISO 8601 duration format.
  String? duration;

  /// The date and time the contract becomes effective, in ISO 8601 format. The effective date must be in the future and must not be earlier than the billing start date.
  DateTime effectiveDate;

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
  ContractReadStateEnum state;

  /// The date and time the contract is terminated, in ISO 8601 format. The termination date must be in the future and must not be earlier than the effective date.
  final DateTime? terminationDate;

  /// The type of the contract defined by the organization.
  String? type;

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
        other.name == name &&
        other.number == number &&
        other.onCall == onCall &&
        other.provider == provider &&
        other.renewal == renewal &&
        other.signedAt == signedAt &&
        other.state == state &&
        other.terminationDate == terminationDate &&
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
      name.hashCode +
      number.hashCode +
      (onCall == null ? 0 : onCall.hashCode) +
      provider.hashCode +
      (renewal == null ? 0 : renewal.hashCode) +
      (signedAt == null ? 0 : signedAt.hashCode) +
      state.hashCode +
      (terminationDate == null ? 0 : terminationDate.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<ContractRead> listFromJson(List<dynamic>? json) {
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
      'ContractRead[billing=$billing, description=$description, duration=$duration, effectiveDate=$effectiveDate, name=$name, number=$number, onCall=$onCall, provider=$provider, renewal=$renewal, signedAt=$signedAt, state=$state, terminationDate=$terminationDate, type=$type, id=$id, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && billing != null) ||
          (keys?.contains(r'billing') ?? false))
        r'billing': billing?.toJson(),
      if ((keys == null && description != null) ||
          (keys?.contains(r'description') ?? false))
        r'description': description,
      if ((keys == null && duration != null) ||
          (keys?.contains(r'duration') ?? false))
        r'duration': duration,
      r'effectiveDate': effectiveDate.toUtc().toIso8601String(),
      r'name': name,
      r'number': number,
      if ((keys == null && onCall != null) ||
          (keys?.contains(r'onCall') ?? false))
        r'onCall': onCall,
      r'provider': provider,
      if ((keys == null && renewal != null) ||
          (keys?.contains(r'renewal') ?? false))
        r'renewal': renewal?.toJson(),
      if ((keys == null && signedAt != null) ||
          (keys?.contains(r'signedAt') ?? false))
        r'signedAt': signedAt?.toUtc().toIso8601String(),
      r'state': state,
      if ((keys == null && terminationDate != null) ||
          (keys?.contains(r'terminationDate') ?? false))
        r'terminationDate': terminationDate?.toUtc().toIso8601String(),
      if ((keys == null && type != null) || (keys?.contains(r'type') ?? false))
        r'type': type,
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
  static const SUSPENDED = ContractReadStateEnum._(r'SUSPENDED');

  /// List of all possible values in this [enum][ContractReadStateEnum].
  static const values = <ContractReadStateEnum>[
    ACTIVE,
    DRAFT,
    EXPIRED,
    SUSPENDED,
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
      case r'SUSPENDED':
        return ContractReadStateEnum.SUSPENDED;
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
