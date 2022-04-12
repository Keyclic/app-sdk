//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ExternalServiceData {
  /// Returns a new [ExternalServiceData] instance.
  ExternalServiceData({
    @required this.organization,
    @required this.name,
    this.description,
    @required this.provider,
  });

  /// Returns a new [ExternalServiceData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ExternalServiceData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ExternalServiceData(
      organization: json[r'organization'],
      name: json[r'name'],
      description: json[r'description'],
      provider: json[r'provider'],
    );
  }

  String organization;

  String name;

  String description;

  String provider;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExternalServiceData &&
        other.organization == organization &&
        other.name == name &&
        other.description == description &&
        other.provider == provider;
  }

  @override
  int get hashCode =>
      (organization == null ? 0 : organization.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (provider == null ? 0 : provider.hashCode);

  static List<ExternalServiceData> listFromJson(List<dynamic> json) {
    return <ExternalServiceData>[
      if (json is List)
        for (dynamic value in json) ExternalServiceData.fromJson(value),
    ];
  }

  static Map<String, ExternalServiceData> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ExternalServiceData>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ExternalServiceData.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ExternalServiceData-objects as value to a dart map
  static Map<String, List<ExternalServiceData>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ExternalServiceData>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ExternalServiceData.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ExternalServiceData[organization=$organization, name=$name, description=$description, provider=$provider]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'organization': organization,
      r'name': name,
      if (description != null) r'description': description,
      r'provider': provider,
    };
  }
}
