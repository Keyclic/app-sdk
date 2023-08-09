//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ContractCreateContractCommandWriteRenewal implements RenewalWrite {
  /// Returns a new [ContractCreateContractCommandWriteRenewal] instance.
  ContractCreateContractCommandWriteRenewal({
    this.duration,
    this.noticePeriod,
  });

  /// Returns a new [ContractCreateContractCommandWriteRenewal] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContractCreateContractCommandWriteRenewal? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ContractCreateContractCommandWriteRenewal(
      duration: json[r'duration'],
      noticePeriod: json[r'noticePeriod'],
    );
  }

  /// Duration of the renewal in ISO 8601 duration format.
  String? duration;

  /// Notice period in ISO 8601 duration format. The \"notice period\" refers to the specific length of time that one party is required to give prior notice to the other party before terminating or renewing the contract.
  String? noticePeriod;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContractCreateContractCommandWriteRenewal &&
        other.duration == duration &&
        other.noticePeriod == noticePeriod;
  }

  @override
  int get hashCode =>
      (duration == null ? 0 : duration.hashCode) +
      (noticePeriod == null ? 0 : noticePeriod.hashCode);

  static List<ContractCreateContractCommandWriteRenewal> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ContractCreateContractCommandWriteRenewal>[];
    }

    return json.fold(<ContractCreateContractCommandWriteRenewal>[],
        (List<ContractCreateContractCommandWriteRenewal> previousValue,
            element) {
      final ContractCreateContractCommandWriteRenewal? object =
          ContractCreateContractCommandWriteRenewal.fromJson(element);
      if (object is ContractCreateContractCommandWriteRenewal) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContractCreateContractCommandWriteRenewal> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContractCreateContractCommandWriteRenewal>{};
    }

    return json.entries.fold(
        <String, ContractCreateContractCommandWriteRenewal>{},
        (Map<String, ContractCreateContractCommandWriteRenewal> previousValue,
            element) {
      final ContractCreateContractCommandWriteRenewal? object =
          ContractCreateContractCommandWriteRenewal.fromJson(element.value);
      if (object is ContractCreateContractCommandWriteRenewal) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContractCreateContractCommandWriteRenewal-objects as value to a dart map
  static Map<String, List<ContractCreateContractCommandWriteRenewal>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContractCreateContractCommandWriteRenewal>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ContractCreateContractCommandWriteRenewal>>(
          key, ContractCreateContractCommandWriteRenewal.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ContractCreateContractCommandWriteRenewal[duration=$duration, noticePeriod=$noticePeriod]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (duration != null) r'duration': duration,
      if (noticePeriod != null) r'noticePeriod': noticePeriod,
    };
  }
}
