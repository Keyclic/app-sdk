//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class AssignmentData {
  /// Returns a new [AssignmentData] instance.
  AssignmentData({
    this.contract,
    this.description,
    this.outOfContract,
    required this.report,
    required this.service,
  });

  /// Returns a new [AssignmentData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssignmentData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AssignmentData(
      contract: json[r'contract'],
      description: json[r'description'],
      outOfContract: json[r'outOfContract'],
      report: json[r'report'],
      service: json[r'service'],
    );
  }

  String? contract;

  String? description;

  bool? outOfContract;

  String report;

  String service;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentData &&
        other.contract == contract &&
        other.description == description &&
        other.outOfContract == outOfContract &&
        other.report == report &&
        other.service == service;
  }

  @override
  int get hashCode =>
      (contract == null ? 0 : contract.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (outOfContract == null ? 0 : outOfContract.hashCode) +
      report.hashCode +
      service.hashCode;

  static List<AssignmentData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <AssignmentData>[];
    }

    return json.fold(<AssignmentData>[],
        (List<AssignmentData> previousValue, element) {
      final AssignmentData? object = AssignmentData.fromJson(element);
      if (object is AssignmentData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AssignmentData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssignmentData>{};
    }

    return json.entries.fold(<String, AssignmentData>{},
        (Map<String, AssignmentData> previousValue, element) {
      final AssignmentData? object = AssignmentData.fromJson(element.value);
      if (object is AssignmentData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AssignmentData-objects as value to a dart map
  static Map<String, List<AssignmentData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AssignmentData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AssignmentData>>(
          key, AssignmentData.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'AssignmentData[contract=$contract, description=$description, outOfContract=$outOfContract, report=$report, service=$service]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'contract')) r'contract': contract,
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      if (keys == null || keys.contains(r'outOfContract'))
        r'outOfContract': outOfContract,
      r'report': report,
      r'service': service,
    };
  }
}
