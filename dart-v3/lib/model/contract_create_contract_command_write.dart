//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ContractCreateContractCommandWrite {
  /// Returns a new [ContractCreateContractCommandWrite] instance.
  ContractCreateContractCommandWrite({
    this.billing,
    this.description,
    this.duration,
    this.effectiveDate,
    required this.name,
    required this.number,
    this.onCall,
    this.places,
    required this.provider,
    this.renewal,
    this.signedAt,
    this.state = const ContractCreateContractCommandWriteStateEnum._('DRAFT'),
    this.terminationDate,
    this.terminationReason,
    required this.type,
  });

  /// Returns a new [ContractCreateContractCommandWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContractCreateContractCommandWrite? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ContractCreateContractCommandWrite(
      billing: BillingWrite.fromJson(json[r'billing']),
      description: json[r'description'],
      duration: json[r'duration'],
      effectiveDate: mapToDateTime(json[r'effectiveDate']),
      name: json[r'name'],
      number: json[r'number'],
      onCall: json[r'onCall'],
      places:
          json[r'places'] == null ? null : List<String>.from(json[r'places']),
      provider: json[r'provider'],
      renewal: RenewalWrite.fromJson(json[r'renewal']),
      signedAt: mapToDateTime(json[r'signedAt']),
      state:
          ContractCreateContractCommandWriteStateEnum.fromJson(json[r'state'])!,
      terminationDate: mapToDateTime(json[r'terminationDate']),
      terminationReason: json[r'terminationReason'],
      type: json[r'type'],
    );
  }

  BillingWrite? billing;

  String? description;

  String? duration;

  DateTime? effectiveDate;

  String name;

  String number;

  bool? onCall;

  List<String>? places;

  String provider;

  RenewalWrite? renewal;

  DateTime? signedAt;

  ContractCreateContractCommandWriteStateEnum state;

  DateTime? terminationDate;

  String? terminationReason;

  String type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContractCreateContractCommandWrite &&
        other.billing == billing &&
        other.description == description &&
        other.duration == duration &&
        other.effectiveDate == effectiveDate &&
        other.name == name &&
        other.number == number &&
        other.onCall == onCall &&
        DeepCollectionEquality.unordered().equals(places, other.places) &&
        other.provider == provider &&
        other.renewal == renewal &&
        other.signedAt == signedAt &&
        other.state == state &&
        other.terminationDate == terminationDate &&
        other.terminationReason == terminationReason &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (billing == null ? 0 : billing.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (duration == null ? 0 : duration.hashCode) +
      (effectiveDate == null ? 0 : effectiveDate.hashCode) +
      name.hashCode +
      number.hashCode +
      (onCall == null ? 0 : onCall.hashCode) +
      (places == null ? 0 : places.hashCode) +
      provider.hashCode +
      (renewal == null ? 0 : renewal.hashCode) +
      (signedAt == null ? 0 : signedAt.hashCode) +
      state.hashCode +
      (terminationDate == null ? 0 : terminationDate.hashCode) +
      (terminationReason == null ? 0 : terminationReason.hashCode) +
      type.hashCode;

  static List<ContractCreateContractCommandWrite> listFromJson(Iterable? json) {
    if (json == null) {
      return <ContractCreateContractCommandWrite>[];
    }

    return json.fold(<ContractCreateContractCommandWrite>[],
        (List<ContractCreateContractCommandWrite> previousValue, element) {
      final ContractCreateContractCommandWrite? object =
          ContractCreateContractCommandWrite.fromJson(element);
      if (object is ContractCreateContractCommandWrite) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContractCreateContractCommandWrite> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContractCreateContractCommandWrite>{};
    }

    return json.entries.fold(<String, ContractCreateContractCommandWrite>{},
        (Map<String, ContractCreateContractCommandWrite> previousValue,
            element) {
      final ContractCreateContractCommandWrite? object =
          ContractCreateContractCommandWrite.fromJson(element.value);
      if (object is ContractCreateContractCommandWrite) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContractCreateContractCommandWrite-objects as value to a dart map
  static Map<String, List<ContractCreateContractCommandWrite>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContractCreateContractCommandWrite>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ContractCreateContractCommandWrite>>(
          key, ContractCreateContractCommandWrite.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ContractCreateContractCommandWrite[billing=$billing, description=$description, duration=$duration, effectiveDate=$effectiveDate, name=$name, number=$number, onCall=$onCall, places=$places, provider=$provider, renewal=$renewal, signedAt=$signedAt, state=$state, terminationDate=$terminationDate, terminationReason=$terminationReason, type=$type]';

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
      if (keys == null || keys.contains(r'effectiveDate'))
        r'effectiveDate': effectiveDate?.toUtc().toIso8601String(),
      r'name': name,
      r'number': number,
      if (keys == null || keys.contains(r'onCall')) r'onCall': onCall,
      if (keys == null || keys.contains(r'places')) r'places': places,
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
      r'state': state,
      if (keys == null || keys.contains(r'terminationDate'))
        r'terminationDate': terminationDate?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'terminationReason'))
        r'terminationReason': terminationReason,
      r'type': type,
    };
  }
}

class ContractCreateContractCommandWriteStateEnum {
  /// Instantiate a new enum with the provided [value].
  const ContractCreateContractCommandWriteStateEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ACTIVE =
      ContractCreateContractCommandWriteStateEnum._(r'ACTIVE');
  static const DRAFT = ContractCreateContractCommandWriteStateEnum._(r'DRAFT');
  static const SUSPENDED =
      ContractCreateContractCommandWriteStateEnum._(r'SUSPENDED');

  /// List of all possible values in this [enum][ContractCreateContractCommandWriteStateEnum].
  static const values = <ContractCreateContractCommandWriteStateEnum>[
    ACTIVE,
    DRAFT,
    SUSPENDED,
  ];

  static ContractCreateContractCommandWriteStateEnum? fromJson(dynamic value) =>
      ContractCreateContractCommandWriteStateEnumTypeTransformer()
          .decode(value);

  static List<ContractCreateContractCommandWriteStateEnum> listFromJson(
      List<dynamic> json) {
    return json
        .map((value) {
          return ContractCreateContractCommandWriteStateEnum.fromJson(value);
        })
        .whereType<ContractCreateContractCommandWriteStateEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [ContractCreateContractCommandWriteStateEnum] to String,
/// and [decode] dynamic data back to [ContractCreateContractCommandWriteStateEnum].
class ContractCreateContractCommandWriteStateEnumTypeTransformer {
  const ContractCreateContractCommandWriteStateEnumTypeTransformer._();

  factory ContractCreateContractCommandWriteStateEnumTypeTransformer() =>
      _instance ??=
          ContractCreateContractCommandWriteStateEnumTypeTransformer._();

  String encode(ContractCreateContractCommandWriteStateEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ContractCreateContractCommandWriteStateEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ContractCreateContractCommandWriteStateEnum? decode(dynamic data,
      {bool allowNull = true}) {
    switch (data) {
      case r'ACTIVE':
        return ContractCreateContractCommandWriteStateEnum.ACTIVE;
      case r'DRAFT':
        return ContractCreateContractCommandWriteStateEnum.DRAFT;
      case r'SUSPENDED':
        return ContractCreateContractCommandWriteStateEnum.SUSPENDED;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ContractCreateContractCommandWriteStateEnumTypeTransformer] instance.
  static ContractCreateContractCommandWriteStateEnumTypeTransformer? _instance;
}
