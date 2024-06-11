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
  static ExternalServiceData? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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

  static List<ExternalServiceData> listFromJson(Iterable? json) {
    if (json == null) {
      return <ExternalServiceData>[];
    }

    return json.fold(<ExternalServiceData>[],
        (List<ExternalServiceData> previousValue, element) {
      final ExternalServiceData? object = ExternalServiceData.fromJson(element);
      if (object is ExternalServiceData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ExternalServiceData> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ExternalServiceData>{};
    }

    return json.entries.fold(<String, ExternalServiceData>{},
        (Map<String, ExternalServiceData> previousValue, element) {
      final ExternalServiceData? object =
          ExternalServiceData.fromJson(element.value);
      if (object is ExternalServiceData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ExternalServiceData-objects as value to a dart map
  static Map<String, List<ExternalServiceData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ExternalServiceData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ExternalServiceData>>(
          key, ExternalServiceData.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ExternalServiceData[organization=$organization, name=$name, description=$description, provider=$provider]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'organization': organization,
      r'name': name,
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      r'provider': provider,
    };
  }
}
