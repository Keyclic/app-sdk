//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ContractCreateContractCommandData {
  /// Returns a new [ContractCreateContractCommandData] instance.
  ContractCreateContractCommandData({
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

  /// Returns a new [ContractCreateContractCommandData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContractCreateContractCommandData? fromJson(
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

    return ContractCreateContractCommandData(
      billing:
          ContractCreateContractCommandDataBilling.fromJson(json[r'billing']),
      description: json[r'description'],
      duration: json[r'duration'],
      effectiveDate: effectiveDate,
      name: json[r'name'],
      number: json[r'number'],
      onCall: json[r'onCall'],
      provider: json[r'provider'],
      renewal:
          ContractCreateContractCommandDataRenewal.fromJson(json[r'renewal']),
      signedAt: signedAt,
      state: json[r'state'],
      type: json[r'type'],
    );
  }

  ContractCreateContractCommandDataBilling? billing;

  String? description;

  String? duration;

  DateTime? effectiveDate;

  String name;

  String number;

  bool? onCall;

  String provider;

  ContractCreateContractCommandDataRenewal? renewal;

  DateTime? signedAt;

  String state;

  String type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContractCreateContractCommandData &&
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

  static List<ContractCreateContractCommandData> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ContractCreateContractCommandData>[];
    }

    return json.fold(<ContractCreateContractCommandData>[],
        (List<ContractCreateContractCommandData> previousValue, element) {
      final ContractCreateContractCommandData? object =
          ContractCreateContractCommandData.fromJson(element);
      if (object is ContractCreateContractCommandData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContractCreateContractCommandData> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContractCreateContractCommandData>{};
    }

    return json.entries.fold(<String, ContractCreateContractCommandData>{},
        (Map<String, ContractCreateContractCommandData> previousValue,
            element) {
      final ContractCreateContractCommandData? object =
          ContractCreateContractCommandData.fromJson(element.value);
      if (object is ContractCreateContractCommandData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContractCreateContractCommandData-objects as value to a dart map
  static Map<String, List<ContractCreateContractCommandData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContractCreateContractCommandData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ContractCreateContractCommandData>>(
          key, ContractCreateContractCommandData.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ContractCreateContractCommandData[billing=$billing, description=$description, duration=$duration, effectiveDate=$effectiveDate, name=$name, number=$number, onCall=$onCall, provider=$provider, renewal=$renewal, signedAt=$signedAt, state=$state, type=$type]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (billing != null) r'billing': billing,
      if (description != null) r'description': description,
      if (duration != null) r'duration': duration,
      if (effectiveDate != null)
        r'effectiveDate': effectiveDate!.toUtc().toIso8601String(),
      r'name': name,
      r'number': number,
      if (onCall != null) r'onCall': onCall,
      r'provider': provider,
      if (renewal != null) r'renewal': renewal,
      if (signedAt != null) r'signedAt': signedAt!.toUtc().toIso8601String(),
      r'state': state,
      r'type': type,
    };
  }
}
