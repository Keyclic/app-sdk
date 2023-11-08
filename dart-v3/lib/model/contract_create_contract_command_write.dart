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
    required this.provider,
    this.renewal,
    this.signedAt,
    this.state = 'DRAFT',
    required this.type,
  });

  /// Returns a new [ContractCreateContractCommandWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContractCreateContractCommandWrite? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? effectiveDate = json[r'effectiveDate'] == null
        ? null
        : DateTime.parse(json[r'effectiveDate']);
    if (effectiveDate != null && effectiveDate.isUtc == false) {
      effectiveDate = DateTime.parse('${json[r'effectiveDate']}Z');
    }

    DateTime? signedAt =
        json[r'signedAt'] == null ? null : DateTime.parse(json[r'signedAt']);
    if (signedAt != null && signedAt.isUtc == false) {
      signedAt = DateTime.parse('${json[r'signedAt']}Z');
    }

    return ContractCreateContractCommandWrite(
      billing: json[r'billing'] is! Map
          ? null
          : BillingWrite.fromJson(json[r'billing']),
      description: json[r'description'],
      duration: json[r'duration'],
      effectiveDate: effectiveDate,
      name: json[r'name'],
      number: json[r'number'],
      onCall: json[r'onCall'],
      provider: json[r'provider'],
      renewal: json[r'renewal'] is! Map
          ? null
          : RenewalWrite.fromJson(json[r'renewal']),
      signedAt: signedAt,
      state: json[r'state'],
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

  String provider;

  RenewalWrite? renewal;

  DateTime? signedAt;

  String state;

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
        other.provider == provider &&
        other.renewal == renewal &&
        other.signedAt == signedAt &&
        other.state == state &&
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
      provider.hashCode +
      (renewal == null ? 0 : renewal.hashCode) +
      (signedAt == null ? 0 : signedAt.hashCode) +
      state.hashCode +
      type.hashCode;

  static List<ContractCreateContractCommandWrite> listFromJson(
      Iterable<dynamic>? json) {
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
      'ContractCreateContractCommandWrite[billing=$billing, description=$description, duration=$duration, effectiveDate=$effectiveDate, name=$name, number=$number, onCall=$onCall, provider=$provider, renewal=$renewal, signedAt=$signedAt, state=$state, type=$type]';

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
      if ((keys == null && effectiveDate != null) ||
          (keys?.contains(r'effectiveDate') ?? false))
        r'effectiveDate': effectiveDate?.toUtc().toIso8601String(),
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
      r'type': type,
    };
  }
}
