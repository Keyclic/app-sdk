//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ContractEditContractCommandData {
  /// Returns a new [ContractEditContractCommandData] instance.
  ContractEditContractCommandData({
    this.billing,
    this.description,
    this.duration,
    this.effectiveDate,
    this.name,
    this.number,
    this.onCall,
    this.provider,
    this.renewal,
    this.signedAt,
    this.state,
    this.type,
  });

  /// Returns a new [ContractEditContractCommandData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContractEditContractCommandData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? effectiveDate = json[r'effectiveDate'] is String
        ? DateTime.parse(json[r'effectiveDate'])
        : null;
    if (effectiveDate is DateTime && effectiveDate.isUtc == false) {
      effectiveDate = DateTime.parse('${json[r'effectiveDate']}Z');
    }

    DateTime? signedAt =
        json[r'signedAt'] is String ? DateTime.parse(json[r'signedAt']) : null;
    if (signedAt is DateTime && signedAt.isUtc == false) {
      signedAt = DateTime.parse('${json[r'signedAt']}Z');
    }

    return ContractEditContractCommandData(
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

  String? name;

  String? number;

  bool? onCall;

  String? provider;

  ContractCreateContractCommandDataRenewal? renewal;

  DateTime? signedAt;

  String? state;

  String? type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContractEditContractCommandData &&
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
      (name == null ? 0 : name.hashCode) +
      (number == null ? 0 : number.hashCode) +
      (onCall == null ? 0 : onCall.hashCode) +
      (provider == null ? 0 : provider.hashCode) +
      (renewal == null ? 0 : renewal.hashCode) +
      (signedAt == null ? 0 : signedAt.hashCode) +
      (state == null ? 0 : state.hashCode) +
      (type == null ? 0 : type.hashCode);

  static List<ContractEditContractCommandData> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ContractEditContractCommandData>[];
    }

    return json.fold(<ContractEditContractCommandData>[],
        (List<ContractEditContractCommandData> previousValue, element) {
      final ContractEditContractCommandData? object =
          ContractEditContractCommandData.fromJson(element);
      if (object is ContractEditContractCommandData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContractEditContractCommandData> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContractEditContractCommandData>{};
    }

    return json.entries.fold(<String, ContractEditContractCommandData>{},
        (Map<String, ContractEditContractCommandData> previousValue, element) {
      final ContractEditContractCommandData? object =
          ContractEditContractCommandData.fromJson(element.value);
      if (object is ContractEditContractCommandData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContractEditContractCommandData-objects as value to a dart map
  static Map<String, List<ContractEditContractCommandData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContractEditContractCommandData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ContractEditContractCommandData>>(
          key, ContractEditContractCommandData.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ContractEditContractCommandData[billing=$billing, description=$description, duration=$duration, effectiveDate=$effectiveDate, name=$name, number=$number, onCall=$onCall, provider=$provider, renewal=$renewal, signedAt=$signedAt, state=$state, type=$type]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (billing != null) r'billing': billing,
      if (description != null) r'description': description,
      if (duration != null) r'duration': duration,
      if (effectiveDate != null)
        r'effectiveDate': effectiveDate!.toUtc().toIso8601String(),
      if (name != null) r'name': name,
      if (number != null) r'number': number,
      if (onCall != null) r'onCall': onCall,
      if (provider != null) r'provider': provider,
      if (renewal != null) r'renewal': renewal,
      if (signedAt != null) r'signedAt': signedAt!.toUtc().toIso8601String(),
      if (state != null) r'state': state,
      if (type != null) r'type': type,
    };
  }
}
