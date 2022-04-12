//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ExternalServiceData {
  /// Returns a new [ExternalServiceData] instance.
  ExternalServiceData({
    required this.organization,
    required this.name,
    this.description,
    required this.provider,
  });

  /// Returns a new [ExternalServiceData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ExternalServiceData? fromJson(Map<String, dynamic>? json) {
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

  String? description;

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
      organization.hashCode +
      name.hashCode +
      (description == null ? 0 : description.hashCode) +
      provider.hashCode;

  static List<ExternalServiceData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ExternalServiceData>[];
    }
    return json
        .map((value) {
          return ExternalServiceData.fromJson(value);
        })
        .whereType<ExternalServiceData>()
        .toList();
  }

  static Map<String, ExternalServiceData> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ExternalServiceData>{};
    }

    final map = json.map((key, value) => MapEntry<String, ExternalServiceData?>(
        key, ExternalServiceData.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ExternalServiceData>;
  }

  // maps a json object with a list of ExternalServiceData-objects as value to a dart map
  static Map<String, List<ExternalServiceData>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ExternalServiceData>>{
      if (json is Map)
        for (final entry in json!.entries)
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
