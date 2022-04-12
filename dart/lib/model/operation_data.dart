//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OperationData {
  /// Returns a new [OperationData] instance.
  OperationData({
    this.description,
    this.identificationNumber,
    @required this.report,
    this.member,
    this.name,
    this.organization,
    this.scheduledAt,
  });

  /// Returns a new [OperationData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OperationData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationData(
      description: json[r'description'],
      identificationNumber: json[r'identificationNumber'],
      report: json[r'report'],
      member: json[r'member'],
      name: json[r'name'],
      organization: json[r'organization'],
      scheduledAt: json[r'scheduledAt'],
    );
  }

  String description;

  String identificationNumber;

  String report;

  String member;

  String name;

  String organization;

  String scheduledAt;

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
        other.member == member &&
        other.name == name &&
        other.organization == organization &&
        other.scheduledAt == scheduledAt;
  }

  @override
  int get hashCode =>
      (description == null ? 0 : description.hashCode) +
      (identificationNumber == null ? 0 : identificationNumber.hashCode) +
      (report == null ? 0 : report.hashCode) +
      (member == null ? 0 : member.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (organization == null ? 0 : organization.hashCode) +
      (scheduledAt == null ? 0 : scheduledAt.hashCode);

  static List<OperationData> listFromJson(List<dynamic> json) {
    return <OperationData>[
      if (json is List)
        for (dynamic value in json) OperationData.fromJson(value),
    ];
  }

  static Map<String, OperationData> mapFromJson(Map<String, dynamic> json) {
    return <String, OperationData>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OperationData.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OperationData-objects as value to a dart map
  static Map<String, List<OperationData>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OperationData>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OperationData.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'OperationData[description=$description, identificationNumber=$identificationNumber, report=$report, member=$member, name=$name, organization=$organization, scheduledAt=$scheduledAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (description != null) r'description': description,
      if (identificationNumber != null)
        r'identificationNumber': identificationNumber,
      r'report': report,
      if (member != null) r'member': member,
      if (name != null) r'name': name,
      if (organization != null) r'organization': organization,
      if (scheduledAt != null) r'scheduledAt': scheduledAt,
    };
  }
}
