//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ContractCreateContractCommandDataRenewal implements RenewalData {
  /// Returns a new [ContractCreateContractCommandDataRenewal] instance.
  ContractCreateContractCommandDataRenewal({
    this.duration,
  });

  /// Returns a new [ContractCreateContractCommandDataRenewal] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContractCreateContractCommandDataRenewal? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ContractCreateContractCommandDataRenewal(
      duration: json[r'duration'],
    );
  }

  /// Duration of the renewal in ISO 8601 duration format.
  String? duration;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContractCreateContractCommandDataRenewal &&
        other.duration == duration;
  }

  @override
  int get hashCode => (duration == null ? 0 : duration.hashCode);

  static List<ContractCreateContractCommandDataRenewal> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ContractCreateContractCommandDataRenewal>[];
    }

    return json.fold(<ContractCreateContractCommandDataRenewal>[],
        (List<ContractCreateContractCommandDataRenewal> previousValue,
            element) {
      final ContractCreateContractCommandDataRenewal? object =
          ContractCreateContractCommandDataRenewal.fromJson(element);
      if (object is ContractCreateContractCommandDataRenewal) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContractCreateContractCommandDataRenewal> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContractCreateContractCommandDataRenewal>{};
    }

    return json.entries.fold(
        <String, ContractCreateContractCommandDataRenewal>{},
        (Map<String, ContractCreateContractCommandDataRenewal> previousValue,
            element) {
      final ContractCreateContractCommandDataRenewal? object =
          ContractCreateContractCommandDataRenewal.fromJson(element.value);
      if (object is ContractCreateContractCommandDataRenewal) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContractCreateContractCommandDataRenewal-objects as value to a dart map
  static Map<String, List<ContractCreateContractCommandDataRenewal>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContractCreateContractCommandDataRenewal>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ContractCreateContractCommandDataRenewal>>(
          key, ContractCreateContractCommandDataRenewal.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ContractCreateContractCommandDataRenewal[duration=$duration]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (duration != null) r'duration': duration,
    };
  }
}
