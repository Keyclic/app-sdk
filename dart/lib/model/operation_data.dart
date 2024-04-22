//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OperationData {
  /// Returns a new [OperationData] instance.
  OperationData({
    this.description,
    this.identificationNumber,
    required this.report,
    this.name,
    this.scheduledAt,
  });

  /// Returns a new [OperationData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OperationData? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return OperationData(
      description: json[r'description'],
      identificationNumber: json[r'identificationNumber'],
      report: json[r'report'],
      name: json[r'name'],
      scheduledAt: json[r'scheduledAt'],
    );
  }

  String? description;

  String? identificationNumber;

  String report;

  String? name;

  String? scheduledAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationData &&
        other.description == description &&
        other.identificationNumber == identificationNumber &&
        other.report == report &&
        other.name == name &&
        other.scheduledAt == scheduledAt;
  }

  @override
  int get hashCode =>
      (description == null ? 0 : description.hashCode) +
      (identificationNumber == null ? 0 : identificationNumber.hashCode) +
      report.hashCode +
      (name == null ? 0 : name.hashCode) +
      (scheduledAt == null ? 0 : scheduledAt.hashCode);

  static List<OperationData> listFromJson(Iterable? json) {
    if (json == null) {
      return <OperationData>[];
    }

    return json.fold(<OperationData>[],
        (List<OperationData> previousValue, element) {
      final OperationData? object = OperationData.fromJson(element);
      if (object is OperationData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OperationData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationData>{};
    }

    return json.entries.fold(<String, OperationData>{},
        (Map<String, OperationData> previousValue, element) {
      final OperationData? object = OperationData.fromJson(element.value);
      if (object is OperationData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OperationData-objects as value to a dart map
  static Map<String, List<OperationData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OperationData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OperationData>>(
          key, OperationData.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OperationData[description=$description, identificationNumber=$identificationNumber, report=$report, name=$name, scheduledAt=$scheduledAt]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      if (keys == null || keys.contains(r'identificationNumber'))
        r'identificationNumber': identificationNumber,
      r'report': report,
      if (keys == null || keys.contains(r'name')) r'name': name,
      if (keys == null || keys.contains(r'scheduledAt'))
        r'scheduledAt': scheduledAt,
    };
  }
}
