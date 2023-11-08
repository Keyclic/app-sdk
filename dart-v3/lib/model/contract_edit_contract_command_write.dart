//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ContractEditContractCommandWrite {
  /// Returns a new [ContractEditContractCommandWrite] instance.
  ContractEditContractCommandWrite({
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

  /// Returns a new [ContractEditContractCommandWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContractEditContractCommandWrite? fromJson(
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

    return ContractEditContractCommandWrite(
      billing: BillingWrite.fromJson(json[r'billing']),
      description: json[r'description'],
      duration: json[r'duration'],
      effectiveDate: effectiveDate,
      name: json[r'name'],
      number: json[r'number'],
      onCall: json[r'onCall'],
      provider: json[r'provider'],
      renewal: RenewalWrite.fromJson(json[r'renewal']),
      signedAt: signedAt,
      state: json[r'state'],
      type: json[r'type'],
    );
  }

  BillingWrite? billing;

  String? description;

  String? duration;

  DateTime? effectiveDate;

  String? name;

  String? number;

  bool? onCall;

  String? provider;

  RenewalWrite? renewal;

  DateTime? signedAt;

  String? state;

  String? type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContractEditContractCommandWrite &&
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

  static List<ContractEditContractCommandWrite> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ContractEditContractCommandWrite>[];
    }

    return json.fold(<ContractEditContractCommandWrite>[],
        (List<ContractEditContractCommandWrite> previousValue, element) {
      final ContractEditContractCommandWrite? object =
          ContractEditContractCommandWrite.fromJson(element);
      if (object is ContractEditContractCommandWrite) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContractEditContractCommandWrite> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContractEditContractCommandWrite>{};
    }

    return json.entries.fold(<String, ContractEditContractCommandWrite>{},
        (Map<String, ContractEditContractCommandWrite> previousValue, element) {
      final ContractEditContractCommandWrite? object =
          ContractEditContractCommandWrite.fromJson(element.value);
      if (object is ContractEditContractCommandWrite) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContractEditContractCommandWrite-objects as value to a dart map
  static Map<String, List<ContractEditContractCommandWrite>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContractEditContractCommandWrite>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ContractEditContractCommandWrite>>(
          key, ContractEditContractCommandWrite.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ContractEditContractCommandWrite[billing=$billing, description=$description, duration=$duration, effectiveDate=$effectiveDate, name=$name, number=$number, onCall=$onCall, provider=$provider, renewal=$renewal, signedAt=$signedAt, state=$state, type=$type]';

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
      if ((keys == null && name != null) || (keys?.contains(r'name') ?? false))
        r'name': name,
      if ((keys == null && number != null) ||
          (keys?.contains(r'number') ?? false))
        r'number': number,
      if ((keys == null && onCall != null) ||
          (keys?.contains(r'onCall') ?? false))
        r'onCall': onCall,
      if ((keys == null && provider != null) ||
          (keys?.contains(r'provider') ?? false))
        r'provider': provider,
      if ((keys == null && renewal != null) ||
          (keys?.contains(r'renewal') ?? false))
        r'renewal': renewal?.toJson(),
      if ((keys == null && signedAt != null) ||
          (keys?.contains(r'signedAt') ?? false))
        r'signedAt': signedAt?.toUtc().toIso8601String(),
      if ((keys == null && state != null) ||
          (keys?.contains(r'state') ?? false))
        r'state': state,
      if ((keys == null && type != null) || (keys?.contains(r'type') ?? false))
        r'type': type,
    };
  }
}
