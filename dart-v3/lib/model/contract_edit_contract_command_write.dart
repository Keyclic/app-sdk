//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ContractEditContractCommandWrite {
  /// Returns a new [ContractEditContractCommandWrite] instance.
  ContractEditContractCommandWrite({
    this.billing,
    this.description,
    this.draft,
    this.duration,
    this.effectiveDate,
    this.name,
    this.number,
    this.onCall,
    this.places,
    this.provider,
    this.renewal,
    this.signedAt,
    this.state,
    this.suspended,
    this.terminationDate,
    this.terminationReason,
    this.type,
  });

  /// Returns a new [ContractEditContractCommandWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContractEditContractCommandWrite? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ContractEditContractCommandWrite(
      billing: BillingWrite.fromJson(json[r'billing']),
      description: json[r'description'],
      draft: json[r'draft'],
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
      state: json[r'state'],
      suspended: json[r'suspended'],
      terminationDate: mapToDateTime(json[r'terminationDate']),
      terminationReason: json[r'terminationReason'],
      type: json[r'type'],
    );
  }

  BillingWrite? billing;

  String? description;

  bool? draft;

  String? duration;

  DateTime? effectiveDate;

  String? name;

  String? number;

  bool? onCall;

  List<String>? places;

  String? provider;

  RenewalWrite? renewal;

  DateTime? signedAt;

  String? state;

  bool? suspended;

  DateTime? terminationDate;

  String? terminationReason;

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
        other.draft == draft &&
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
        other.suspended == suspended &&
        other.terminationDate == terminationDate &&
        other.terminationReason == terminationReason &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (billing == null ? 0 : billing.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (draft == null ? 0 : draft.hashCode) +
      (duration == null ? 0 : duration.hashCode) +
      (effectiveDate == null ? 0 : effectiveDate.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (number == null ? 0 : number.hashCode) +
      (onCall == null ? 0 : onCall.hashCode) +
      (places == null ? 0 : places.hashCode) +
      (provider == null ? 0 : provider.hashCode) +
      (renewal == null ? 0 : renewal.hashCode) +
      (signedAt == null ? 0 : signedAt.hashCode) +
      (state == null ? 0 : state.hashCode) +
      (suspended == null ? 0 : suspended.hashCode) +
      (terminationDate == null ? 0 : terminationDate.hashCode) +
      (terminationReason == null ? 0 : terminationReason.hashCode) +
      (type == null ? 0 : type.hashCode);

  static List<ContractEditContractCommandWrite> listFromJson(Iterable? json) {
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
      'ContractEditContractCommandWrite[billing=$billing, description=$description, draft=$draft, duration=$duration, effectiveDate=$effectiveDate, name=$name, number=$number, onCall=$onCall, places=$places, provider=$provider, renewal=$renewal, signedAt=$signedAt, state=$state, suspended=$suspended, terminationDate=$terminationDate, terminationReason=$terminationReason, type=$type]';

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
      if (keys == null || keys.contains(r'draft')) r'draft': draft,
      if (keys == null || keys.contains(r'duration')) r'duration': duration,
      if (keys == null || keys.contains(r'effectiveDate'))
        r'effectiveDate': effectiveDate?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'name')) r'name': name,
      if (keys == null || keys.contains(r'number')) r'number': number,
      if (keys == null || keys.contains(r'onCall')) r'onCall': onCall,
      if (keys == null || keys.contains(r'places')) r'places': places,
      if (keys == null || keys.contains(r'provider')) r'provider': provider,
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
      if (keys == null || keys.contains(r'suspended')) r'suspended': suspended,
      if (keys == null || keys.contains(r'terminationDate'))
        r'terminationDate': terminationDate?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'terminationReason'))
        r'terminationReason': terminationReason,
      if (keys == null || keys.contains(r'type')) r'type': type,
    };
  }
}
